import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:snapd/snapd.dart';
import 'package:test/test.dart';

class MockApp {
  final bool? active;
  final String? commonId;
  final String? daemon;
  final String? desktopFile;
  final bool? enabled;
  final String name;
  final String snap;

  MockApp(
      {this.active,
      this.commonId,
      this.daemon,
      this.desktopFile,
      this.enabled,
      this.name = '',
      this.snap = ''});

  dynamic toJson() {
    var object = <dynamic, dynamic>{'name': name, 'snap': snap};
    if (active != null) {
      object['active'] = active;
    }
    if (commonId != null) {
      object['common-id'] = commonId;
    }
    if (daemon != null) {
      object['daemon'] = daemon;
    }
    if (desktopFile != null) {
      object['desktop-file'] = desktopFile;
    }
    if (enabled != null) {
      object['enabled'] = enabled;
    }
    return object;
  }
}

class MockMedia {
  final int? height;
  final String type;
  final String url;
  final int? width;

  MockMedia({this.height, this.type = '', this.url = '', this.width});

  dynamic toJson() {
    var object = <dynamic, dynamic>{'type': type, 'url': url};
    if (height != null) {
      object['height'] = height;
    }
    if (width != null) {
      object['width'] = width;
    }
    return object;
  }
}

class MockPublisher {
  final String displayName;
  final String id;
  final String username;
  final String? validation;

  MockPublisher(
      {this.displayName = '',
      this.id = '',
      this.username = '',
      this.validation});

  dynamic toJson() {
    var object = <dynamic, dynamic>{
      'display-name': displayName,
      'id': id,
      'username': username
    };
    if (validation != null) {
      object['validation'] = validation;
    }
    return object;
  }
}

class MockChannel {
  final String channel;
  final String confinement;
  final String revision;
  final int size;
  final String version;

  MockChannel(
      {this.channel = '',
      this.confinement = '',
      this.revision = '',
      this.size = 0,
      this.version = ''});

  dynamic toJson() {
    var object = <dynamic, dynamic>{
      'channel': channel,
      'confinement': confinement,
      'revision': revision,
      'size': size,
      'version': version
    };
    return object;
  }
}

class MockSnap {
  final List<MockApp>? apps;
  final String channel;
  final Map<String, MockChannel>? channels;
  final List<String>? commonIds;
  final String? contact;
  final String description;
  final int? downloadSize;
  final String id;
  final int? installedSize;
  final String? license;
  final List<MockMedia>? media;
  final String name;
  final MockPublisher? publisher;
  final String revision;
  final String? storeUrl;
  final String summary;
  final String title;
  final List<String>? tracks;
  final String type;
  final String version;
  final String? website;

  MockSnap(
      {this.apps,
      this.channel = '',
      this.channels,
      this.commonIds,
      this.contact,
      this.description = '',
      this.downloadSize,
      this.id = '',
      this.installedSize,
      this.license,
      this.media,
      this.name = '',
      this.publisher,
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
    if (apps != null) {
      object['apps'] = apps!.map((app) => app.toJson()).toList();
    }
    if (channels != null) {
      object['channels'] =
          channels!.map((name, channel) => MapEntry(name, channel.toJson()));
    }
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
    if (media != null) {
      object['media'] = media!.map((m) => m.toJson()).toList();
    }
    if (publisher != null) {
      object['publisher'] = publisher!.toJson();
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

class MockAccount {
  final int id;
  final String? username;
  final String? email;
  final String password;
  final String? macaroon;
  final List<String> discharges;
  final List<String> sshKeys;

  MockAccount(
      {required this.id,
      this.username,
      this.email,
      required this.password,
      this.macaroon,
      this.discharges = const [],
      this.sshKeys = const []});
}

class MockSnapdServer {
  Directory? _tempDir;
  String? _socketPath;
  HttpServer? _server;
  ServerSocket? _unixSocket;
  StreamSubscription<Socket>? _unixSubscription;
  StreamSubscription<HttpRequest>? _requestSubscription;
  final _tcpSockets = <Socket, Socket>{};

  final List<MockAccount> accounts;
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
    this.accounts = const [],
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

  Future<void> _processRequest(HttpRequest request) async {
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

    switch (request.uri.path) {
      case '/v2/system-info':
        _processSystemInfo(request);
        break;
      case '/v2/login':
        await _processLogin(request);
        break;
      case '/v2/logout':
        await _processLogout(request);
        break;
      case '/v2/snaps':
        _processSnaps(request);
        break;
      default:
        request.response.statusCode = HttpStatus.notFound;
        _writeErrorResponse(request.response, 'not found');
        break;
    }
    await request.response.close();
  }

  void _processSystemInfo(HttpRequest request) {
    _writeSyncResponse(request.response, {
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
  }

  Future<void> _processLogin(HttpRequest request) async {
    var req = await _readJson(request);
    var account = _findAccountByEmail(req['email']);
    if (account == null || account.password != req['password']) {
      request.response.statusCode = HttpStatus.unauthorized;
      _writeErrorResponse(request.response,
          'cannot authenticate to snap store: Provided email/password is not correct.',
          kind: 'login-required');
      return;
    }
    var r = {
      'id': account.id,
      'username': account.username,
      'email': account.email,
      'macaroon': account.macaroon,
      'discharges': account.discharges,
      'ssh-keys': account.sshKeys
    };
    _writeSyncResponse(request.response, r);
  }

  Future<void> _processLogout(HttpRequest request) async {
    var req = await _readJson(request);
    var account = _findAccountById(req['id']);
    if (account == null) {
      request.response.statusCode = HttpStatus.badRequest;
      _writeErrorResponse(request.response, 'not logged in');
      return;
    }
    _writeSyncResponse(request.response, {});
  }

  MockAccount? _findAccountById(int id) {
    for (var account in accounts) {
      if (account.id == id) {
        return account;
      }
    }
    return null;
  }

  MockAccount? _findAccountByEmail(String email) {
    for (var account in accounts) {
      if (account.email == email) {
        return account;
      }
    }
    return null;
  }

  void _processSnaps(HttpRequest request) {
    _writeSyncResponse(
        request.response, snaps.map((snap) => snap.toJson()).toList());
  }

  void _writeSyncResponse(HttpResponse response, dynamic result) {
    _writeJson(response, {
      'type': 'sync',
      'status-code': response.statusCode,
      'status': response.reasonPhrase,
      'result': result
    });
  }

  void _writeErrorResponse(HttpResponse response, String message,
      {String? kind}) {
    var result = {'message': message};
    if (kind != null) {
      result['kind'] = kind;
    }
    _writeJson(response, {
      'type': 'error',
      'status-code': response.statusCode,
      'status': response.reasonPhrase,
      'result': result
    });
  }

  Future<Map<String, dynamic>> _readJson(HttpRequest request) async {
    var text = utf8.decode(await request.expand((e) => e).toList());
    return json.decode(text);
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

  test('login', () async {
    var snapd = MockSnapdServer(accounts: [
      MockAccount(
          id: 42,
          username: 'admin',
          email: 'admin@example.com',
          password: 'password',
          macaroon: 'macaroon',
          discharges: ['discharge1', 'discharge2'],
          sshKeys: ['key1', 'key2'])
    ]);
    await snapd.start();

    var client = SnapdClient(socketPath: snapd.socketPath);

    var response = await client.login('admin@example.com', 'password');
    expect(response.id, equals(42));
    expect(response.username, equals('admin'));
    expect(response.email, equals('admin@example.com'));
    expect(response.macaroon, equals('macaroon'));
    expect(response.discharges, equals(['discharge1', 'discharge2']));
    expect(response.sshKeys, equals(['key1', 'key2']));

    client.close();
    await snapd.close();
  });

  test('login - unknown email', () async {
    var snapd = MockSnapdServer();
    await snapd.start();

    var client = SnapdClient(socketPath: snapd.socketPath);

    expect(
        () => client.login('unknown@example.com', 'password'), throwsException);

    client.close();
    await snapd.close();
  });

  test('login - incorrect password', () async {
    var snapd = MockSnapdServer(accounts: [
      MockAccount(id: 42, email: 'admin@example.com', password: 'secret')
    ]);
    await snapd.start();

    var client = SnapdClient(socketPath: snapd.socketPath);

    expect(
        () => client.login('admin@example.com', 'password'), throwsException);

    client.close();
    await snapd.close();
  });

  test('logout', () async {
    var snapd = MockSnapdServer(accounts: [
      MockAccount(id: 42, email: 'admin@example.com', password: 'password')
    ]);
    await snapd.start();

    var client = SnapdClient(socketPath: snapd.socketPath);

    var response = await client.login('admin@example.com', 'password');
    await client.logout(response.id);

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
          description: 'Hello\nSalut\nHola',
          id: 'QRDEfjn4WJYnm0FzDKwqqRZZI77awQEV',
          name: 'hello',
          revision: '42',
          summary: 'Hello is an app',
          title: 'Hello',
          type: 'app',
          version: '1.2')
    ]);
    await snapd.start();

    var client = SnapdClient(socketPath: snapd.socketPath);

    var snaps = await client.snaps();
    expect(snaps, hasLength(1));
    var snap = snaps[0];
    expect(snap.apps, isEmpty);
    expect(snap.channel, equals(''));
    expect(snap.channels, isEmpty);
    expect(snap.commonIds, isEmpty);
    expect(snap.contact, equals(''));
    expect(snap.description, equals('Hello\nSalut\nHola'));
    expect(snap.downloadSize, isNull);
    expect(snap.id, equals('QRDEfjn4WJYnm0FzDKwqqRZZI77awQEV'));
    expect(snap.installedSize, isNull);
    expect(snap.license, isNull);
    expect(snap.media, isEmpty);
    expect(snap.name, equals('hello'));
    expect(snap.publisher, isNull);
    expect(snap.revision, equals('42'));
    expect(snap.storeUrl, isNull);
    expect(snap.summary, equals('Hello is an app'));
    expect(snap.title, equals('Hello'));
    expect(snap.tracks, isEmpty);
    expect(snap.type, equals('app'));
    expect(snap.version, equals('1.2'));
    expect(snap.website, isNull);

    client.close();
    await snapd.close();
  });

  test('snap optional properties', () async {
    var snapd = MockSnapdServer(snaps: [
      MockSnap(
          apps: [
            MockApp(name: 'hello1', snap: 'hello'),
            MockApp(name: 'hello2', snap: 'hello')
          ],
          channel: 'stable',
          channels: {
            'latest/stable': MockChannel(
                channel: 'latest/stable',
                version: '1.2',
                revision: '42',
                size: 123456,
                confinement: 'strict'),
            'insider/stable': MockChannel(
                channel: 'insider/stable',
                version: '1.3',
                revision: '43',
                size: 888888,
                confinement: 'classic')
          },
          commonIds: ['com.example.Hello', 'com.example.Hallo'],
          contact: 'hello@example.com',
          description: 'Hello\nSalut\nHola',
          downloadSize: 123456,
          id: 'QRDEfjn4WJYnm0FzDKwqqRZZI77awQEV',
          installedSize: 654321,
          license: 'GPL-3',
          media: [
            MockMedia(type: 'icon', url: 'http://example.com/hello-icon.png'),
            MockMedia(
                type: 'screenshot',
                url: 'http://example.com/hello-screenshot.jpg',
                width: 1024,
                height: 768)
          ],
          name: 'hello',
          publisher: MockPublisher(
              id: 'JvtzsxbsHivZLdvzrt0iqW529riGLfXJ',
              username: 'publisher',
              displayName: 'Publisher',
              validation: 'verified'),
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
    expect(snap.apps, hasLength(2));
    expect(snap.apps[0].name, equals('hello1'));
    expect(snap.apps[0].snap, equals('hello'));
    expect(snap.apps[1].name, equals('hello2'));
    expect(snap.channel, equals('stable'));
    expect(snap.channels, hasLength(2));
    expect(snap.commonIds, equals(['com.example.Hello', 'com.example.Hallo']));
    expect(snap.contact, equals('hello@example.com'));
    expect(snap.description, equals('Hello\nSalut\nHola'));
    expect(snap.downloadSize, equals(123456));
    expect(snap.id, equals('QRDEfjn4WJYnm0FzDKwqqRZZI77awQEV'));
    expect(snap.installedSize, equals(654321));
    expect(snap.license, equals('GPL-3'));
    expect(snap.media, hasLength(2));
    expect(snap.media[0].type, equals('icon'));
    expect(snap.media[0].url, equals('http://example.com/hello-icon.png'));
    expect(snap.media[0].width, isNull);
    expect(snap.media[0].height, isNull);
    expect(snap.media[1].type, equals('screenshot'));
    expect(
        snap.media[1].url, equals('http://example.com/hello-screenshot.jpg'));
    expect(snap.media[1].width, equals(1024));
    expect(snap.media[1].height, equals(768));
    expect(snap.name, equals('hello'));
    expect(snap.publisher, isNotNull);
    expect(snap.publisher!.id, equals('JvtzsxbsHivZLdvzrt0iqW529riGLfXJ'));
    expect(snap.publisher!.username, equals('publisher'));
    expect(snap.publisher!.displayName, equals('Publisher'));
    expect(snap.publisher!.validation, equals('verified'));
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
