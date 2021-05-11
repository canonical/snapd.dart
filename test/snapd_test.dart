import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:snapd/snapd.dart';
import 'package:test/test.dart';

class MockSnap {
  final String channel;
  final List<String>? commonIds;
  final String? contact;
  final String description;
  final int? downloadSize;
  final String id;
  final int? installedSize;
  final String? license;
  final String name;
  final String revision;
  final String? storeUrl;
  final String summary;
  final String title;
  final List<String>? tracks;
  final String type;
  final String version;
  final String? website;

  MockSnap(
      {this.channel = '',
      this.commonIds,
      this.contact,
      this.description = '',
      this.downloadSize,
      this.id = '',
      this.installedSize,
      this.license,
      this.name = '',
      this.revision = '',
      this.storeUrl,
      this.summary = '',
      this.title = '',
      this.tracks,
      this.type = '',
      this.version = '',
      this.website});

  dynamic toJson() {
    var object = <dynamic, dynamic>{
      'channel': channel,
      'description': description,
      'id': id,
      'name': name,
      'revision': revision,
      'summary': summary,
      'title': title,
      'type': type,
      'version': version
    };
    if (commonIds != null) {
      object['common-ids'] = commonIds;
    }
    if (contact != null) {
      object['contact'] = contact;
    }
    if (downloadSize != null) {
      object['download-size'] = downloadSize;
    }
    if (installedSize != null) {
      object['installed-size'] = installedSize;
    }
    if (license != null) {
      object['license'] = license;
    }
    if (storeUrl != null) {
      object['store-url'] = storeUrl;
    }
    if (tracks != null) {
      object['tracks'] = tracks;
    }
    if (website != null) {
      object['website'] = website;
    }

    return object;
  }
}

class MockSnapdServer {
  Directory? _tempDir;
  String? _socketPath;
  HttpServer? _server;
  ServerSocket? _unixSocket;
  StreamSubscription<Socket>? _unixSubscription;
  StreamSubscription<HttpRequest>? _requestSubscription;
  final _tcpSockets = <Socket, Socket>{};

  final String architecture;
  final String buildId;
  final String confinement;
  final String kernelVersion;
  final bool managed;
  final bool onClassic;
  final String series;
  final List<MockSnap> snaps;
  final String systemMode;
  final String version;

  // Last macaroon received.
  String? lastMacaroon;
  List<String>? lastDischarges;

  String get socketPath => _socketPath!;

  MockSnapdServer({
    this.architecture = '',
    this.buildId = '',
    this.confinement = '',
    this.kernelVersion = '',
    this.managed = false,
    this.onClassic = false,
    this.series = '',
    this.snaps = const [],
    this.systemMode = '',
    this.version = '',
  });

  Future<void> start() async {
    _tempDir = await Directory.systemTemp.createTemp();
    _socketPath = '${_tempDir!.path}/snapd.socket';

    // Due to a bug in HttpServer, bridge from a Unix socket to a TCP/IP socket
    // https://github.com/dart-lang/sdk/issues/45977
    _server = await HttpServer.bind(InternetAddress.anyIPv4, 0);
    _requestSubscription = _server?.listen(_processRequest);
    _unixSocket = await ServerSocket.bind(
        InternetAddress(_socketPath!, type: InternetAddressType.unix), 0);
    _unixSubscription = _unixSocket?.listen((socket) async {
      var tcpSocket = await Socket.connect(_server!.address, _server!.port);
      _tcpSockets[socket] = tcpSocket;
      socket.listen((data) => tcpSocket.add(data),
          onDone: () => tcpSocket.close());
      tcpSocket.listen((data) => socket.add(data),
          onDone: () => socket.close());
    });
  }

  void _processRequest(HttpRequest request) {
    var authorization = request.headers.value(HttpHeaders.authorizationHeader);
    lastMacaroon = null;
    lastDischarges = null;
    if (authorization != null && authorization.startsWith('Macaroon ')) {
      lastDischarges = <String>[];
      for (var value in authorization.substring(9).split(',')) {
        if (value.startsWith('root="')) {
          lastMacaroon = value.substring(6, value.length - 1);
        } else if (value.startsWith('discharge="')) {
          lastDischarges?.add(value.substring(11, value.length - 1));
        }
      }
    }

    var response = request.response;
    switch (request.uri.path) {
      case '/v2/system-info':
        _writeSyncResponse(response, {
          'architecture': architecture,
          'build-id': buildId,
          'confinement': confinement,
          'kernel-version': kernelVersion,
          'managed': managed,
          'on-classic': onClassic,
          'series': series,
          'system-mode': systemMode,
          'version': version
        });
        break;
      case '/v2/snaps':
        _writeSyncResponse(
            response, snaps.map((snap) => snap.toJson()).toList());
        break;
      default:
        response.statusCode = HttpStatus.notFound;
        _writeErrorResponse(response, 'not found');
        break;
    }
    response.close();
  }

  void _writeSyncResponse(HttpResponse response, dynamic result) {
    _writeJson(response, {
      'type': 'sync',
      'status-code': response.statusCode,
      'status': response.reasonPhrase,
      'result': result
    });
  }

  void _writeErrorResponse(HttpResponse response, String message) {
    _writeJson(response, {
      'type': 'error',
      'status-code': response.statusCode,
      'status': response.reasonPhrase,
      'result': {'message': message}
    });
  }

  void _writeJson(HttpResponse response, dynamic value) {
    var data = utf8.encode(json.encode(value));
    response.headers.contentType = ContentType('application', 'json');
    response.headers.contentLength = data.length;
    response.add(data);
  }

  Future<void> close() async {
    await _requestSubscription?.cancel();
    await _unixSubscription?.cancel();
    for (var socket in _tcpSockets.values) {
      await socket.close();
    }
    await _tempDir?.delete(recursive: true);
  }
}

void main() {
  test('system info', () async {
    var snapd = MockSnapdServer(
        architecture: 'amd64',
        buildId: '2a0c915752b1c3c5dd7980220cd246876fb0a510',
        confinement: 'strict',
        kernelVersion: '5.11.0',
        managed: true,
        onClassic: true,
        series: '16',
        systemMode: 'run',
        version: '2.49');
    await snapd.start();

    var client = SnapdClient(socketPath: snapd.socketPath);

    var info = await client.systemInfo();
    expect(info.architecture, equals('amd64'));
    expect(info.buildId, equals('2a0c915752b1c3c5dd7980220cd246876fb0a510'));
    expect(info.confinement, equals('strict'));
    expect(info.kernelVersion, equals('5.11.0'));
    expect(info.managed, isTrue);
    expect(info.onClassic, isTrue);
    expect(info.series, equals('16'));
    expect(info.systemMode, equals('run'));
    expect(info.version, equals('2.49'));

    client.close();
    await snapd.close();
  });

  test('authorization', () async {
    var snapd = MockSnapdServer();
    await snapd.start();

    var client = SnapdClient(socketPath: snapd.socketPath);
    client.setAuthorization('macaroon', ['discharge1', 'discharge2']);

    await client.systemInfo();
    expect(snapd.lastMacaroon, equals('macaroon'));
    expect(snapd.lastDischarges, equals(['discharge1', 'discharge2']));

    client.close();
    await snapd.close();
  });

  test('snaps', () async {
    var snapd = MockSnapdServer(snaps: [
      MockSnap(name: 'snap1'),
      MockSnap(name: 'snap2'),
      MockSnap(name: 'snap3')
    ]);
    await snapd.start();

    var client = SnapdClient(socketPath: snapd.socketPath);

    var snaps = await client.snaps();
    expect(snaps, hasLength(3));
    expect(snaps[0].name, equals('snap1'));
    expect(snaps[1].name, equals('snap2'));
    expect(snaps[2].name, equals('snap3'));

    client.close();
    await snapd.close();
  });

  test('snap properties', () async {
    var snapd = MockSnapdServer(snaps: [
      MockSnap(
          channel: 'stable',
          commonIds: ['com.example.Hello', 'com.example.Hallo'],
          contact: 'hello@example.com',
          description: 'Hello\nSalut\nHola',
          downloadSize: 123456,
          id: 'QRDEfjn4WJYnm0FzDKwqqRZZI77awQEV',
          installedSize: 654321,
          license: 'GPL-3',
          name: 'hello',
          revision: '42',
          storeUrl: 'https://snapcraft.io/hello',
          summary: 'Hello is an app',
          title: 'Hello',
          tracks: ['latest', 'insider'],
          type: 'app',
          version: '1.2',
          website: 'http://example.com/hello')
    ]);
    await snapd.start();

    var client = SnapdClient(socketPath: snapd.socketPath);

    var snaps = await client.snaps();
    expect(snaps, hasLength(1));
    var snap = snaps[0];
    expect(snap.channel, equals('stable'));
    expect(snap.commonIds, equals(['com.example.Hello', 'com.example.Hallo']));
    expect(snap.contact, equals('hello@example.com'));
    expect(snap.description, equals('Hello\nSalut\nHola'));
    expect(snap.downloadSize, equals(123456));
    expect(snap.id, equals('QRDEfjn4WJYnm0FzDKwqqRZZI77awQEV'));
    expect(snap.installedSize, equals(654321));
    expect(snap.license, equals('GPL-3'));
    expect(snap.name, equals('hello'));
    expect(snap.revision, equals('42'));
    expect(snap.storeUrl, equals('https://snapcraft.io/hello'));
    expect(snap.summary, equals('Hello is an app'));
    expect(snap.title, equals('Hello'));
    expect(snap.tracks, equals(['latest', 'insider']));
    expect(snap.type, equals('app'));
    expect(snap.version, equals('1.2'));
    expect(snap.website, equals('http://example.com/hello'));

    client.close();
    await snapd.close();
  });
}
