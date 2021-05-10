import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:snapd/snapd.dart';
import 'package:test/test.dart';

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
  final String systemMode;
  final String version;

  String get socketPath => _socketPath!;

  MockSnapdServer({
    this.architecture = '',
    this.buildId = '',
    this.confinement = '',
    this.kernelVersion = '',
    this.managed = false,
    this.onClassic = false,
    this.series = '',
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
}
