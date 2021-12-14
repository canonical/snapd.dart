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

class MockPlug {
  final String name;
  final String interface;
  final Map<String, dynamic> attributes;

  MockSnap? slotSnap;
  MockSlot? slot;

  MockPlug(this.name, this.interface, {this.attributes = const {}});
}

class MockSlot {
  final String name;
  final String interface;
  final Map<String, dynamic> attributes;

  const MockSlot(this.name, this.interface, {this.attributes = const {}});
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
  final List<MockPlug> plugs;
  final MockPublisher? publisher;
  final String revision;
  final String? section;
  final List<MockSlot> slots;
  final String? storeUrl;
  final String summary;
  final String title;
  final List<String>? tracks;
  final String type;
  final String version;
  final String? website;

  var refreshed = false;

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
      this.plugs = const [],
      this.publisher,
      this.revision = '',
      this.section,
      this.slots = const [],
      this.storeUrl,
      this.summary = '',
      this.title = '',
      this.tracks,
      this.type = '',
      this.version = '',
      this.website});

  MockPlug? findPlugByName(String name) {
    for (var plug in plugs) {
      if (plug.name == name) {
        return plug;
      }
    }
    return null;
  }

  MockSlot? findSlotByName(String name) {
    for (var slot in slots) {
      if (slot.name == name) {
        return slot;
      }
    }
    return null;
  }

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
  final String? otp;
  final String? macaroon;
  final List<String> discharges;
  final List<String> sshKeys;

  MockAccount(
      {required this.id,
      this.username,
      this.email,
      required this.password,
      this.otp,
      this.macaroon,
      this.discharges = const [],
      this.sshKeys = const []});
}

class MockTask {
  final String id;
  final String kind;
  final MockTaskProgress? progress;
  final String summary;
  final String status;

  MockTask(
      {required this.id,
      this.kind = '',
      this.progress,
      this.summary = '',
      this.status = ''});
}

class MockTaskProgress {
  final String label;
  final int done;
  final int total;

  MockTaskProgress({this.label = '', this.done = 0, this.total = 0});
}

class MockChange {
  final String id;
  final String kind;
  final String summary;
  final String status;
  final List<MockTask> tasks;
  final bool ready;
  final String spawnTime;
  final String? readyTime;
  final String? error;

  MockChange(
      {required this.id,
      this.kind = '',
      this.summary = '',
      this.status = '',
      this.tasks = const [],
      this.ready = false,
      this.spawnTime = '',
      this.readyTime,
      this.error});
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
  final changes = <MockChange>[];
  final String confinement;
  final String kernelVersion;
  final bool managed;
  final bool onClassic;
  final String series;
  final snaps = <String, MockSnap>{};
  final storeSnaps = <String, MockSnap>{};
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
    List<MockSnap> snaps = const [],
    List<MockSnap> storeSnaps = const [],
    this.systemMode = '',
    this.version = '',
  }) {
    for (var snap in snaps) {
      this.snaps[snap.name] = snap;
    }
    for (var snap in storeSnaps) {
      this.storeSnaps[snap.name] = snap;
    }
  }

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

    var method = request.method;
    var path = request.uri.path;
    if (method == 'GET' && path == '/v2/connections') {
      _processGetConnections(request);
    } else if (method == 'GET' && path.startsWith('/v2/changes/')) {
      _processGetChange(request, path.substring('/v2/changes/'.length));
    } else if (method == 'GET' && path == '/v2/find') {
      _processFind(request);
    } else if (method == 'POST' && path == '/v2/interfaces') {
      await _processInterfaces(request);
    } else if (method == 'POST' && path == '/v2/login') {
      await _processLogin(request);
    } else if (method == 'POST' && path == '/v2/logout') {
      await _processLogout(request);
    } else if (method == 'GET' && path == '/v2/snaps') {
      _processGetSnaps(request);
    } else if (method == 'POST' && path == '/v2/snaps') {
      await _processPostSnaps(request);
    } else if (method == 'GET' && path == '/v2/system-info') {
      _processSystemInfo(request);
    } else {
      request.response.statusCode = HttpStatus.notFound;
      _writeErrorResponse(request.response, 'not found');
    }
    await request.response.close();
  }

  void _processGetConnections(HttpRequest request) {
    var established = [];
    var plugs = [];
    var slots = [];
    for (var snap in snaps.values) {
      for (var p in snap.plugs) {
        var o = <String, dynamic>{
          'snap': snap.name,
          'plug': p.name,
          'interface': p.interface
        };
        if (p.attributes.isNotEmpty) {
          o['attrs'] = p.attributes;
        }
        plugs.add(o);

        if (p.slot != null) {
          var s = p.slot!;
          var so = <String, dynamic>{'snap': p.slotSnap!.name, 'slot': s.name};
          if (s.attributes.isNotEmpty) {
            so['attributes'] = s.attributes;
          }
          var po = <String, dynamic>{'snap': snap.name, 'plug': p.name};
          if (p.attributes.isNotEmpty) {
            po['attributes'] = p.attributes;
          }
          var o = {'slot': so, 'plug': po, 'interface': p.interface};
          established.add(o);
        }
      }
      for (var s in snap.slots) {
        var o = <String, dynamic>{
          'snap': snap.name,
          'slot': s.name,
          'interface': s.interface
        };
        if (s.attributes.isNotEmpty) {
          o['attrs'] = s.attributes;
        }
        slots.add(o);
      }
    }
    var r = {'established': established, 'plugs': plugs, 'slots': slots};
    _writeSyncResponse(request.response, r);
  }

  void _processGetChange(HttpRequest request, String id) {
    var change = _findChange(id);
    if (change == null) {
      request.response.statusCode = HttpStatus.notFound;
      _writeErrorResponse(request.response, 'not found');
      return;
    }

    var tasks = <Map<String, dynamic>>[];
    for (var task in change.tasks) {
      var t = <String, dynamic>{
        'id': task.id,
        'kind': task.kind,
        'summary': task.summary,
        'status': task.status
      };
      var progress = task.progress;
      if (progress != null) {
        t['progress'] = {
          'label': progress.label,
          'done': progress.done,
          'total': progress.total
        };
      }
      tasks.add(t);
    }

    _writeSyncResponse(request.response, {
      'id': change.id,
      'kind': change.kind,
      'summary': change.summary,
      'status': change.status,
      'tasks': tasks,
      'ready': change.ready,
      'spawn-time': change.spawnTime,
      'ready-time': change.readyTime
    });
  }

  void _processFind(HttpRequest request) async {
    var parameters = request.uri.queryParameters;
    var query = parameters['q'];
    var name = parameters['name'];
    var section = parameters['section'];

    var snaps = [];
    for (var snap in storeSnaps.values) {
      if (name != null && snap.name != name) {
        continue;
      }
      if (query != null && !snap.name.contains(query)) {
        continue;
      }
      if (section != null && snap.section != section) {
        continue;
      }
      snaps.add(snap.toJson());
    }
    _writeSyncResponse(request.response, snaps);
  }

  Future<void> _processInterfaces(HttpRequest request) async {
    var req = await _readJson(request);

    var action = req['action'];
    var plugs = req['plugs'] ?? [];
    var slots = req['slots'] ?? [];

    String? error;
    if (action == 'connect') {
      assert(plugs.length == 1);
      assert(slots.length == 1);
      var plugSnap = snaps[plugs[0]['snap']]!;
      var slotSnap = snaps[slots[0]['snap']]!;
      var plug = plugSnap.findPlugByName(plugs[0]['plug'])!;
      var slot = slotSnap.findSlotByName(slots[0]['slot'])!;
      assert(plug.interface == slot.interface);
      plug.slotSnap = slotSnap;
      plug.slot = slot;
    } else if (action == 'disconnect') {
      assert(plugs.length == 1);
      assert(slots.length == 1);
      var plugSnap = snaps[plugs[0]['snap']]!;
      var slotSnap = snaps[slots[0]['snap']]!;
      var plug = plugSnap.findPlugByName(plugs[0]['plug'])!;
      var slot = slotSnap.findSlotByName(slots[0]['slot'])!;
      assert(plug.slotSnap == slotSnap);
      assert(plug.slot == slot);
      plug.slotSnap = null;
      plug.slot = null;
    } else {
      _writeErrorResponse(request.response, 'unknown action');
      return;
    }

    var change = _addChange(
        ready: true,
        tasks: [
          MockTask(id: '0', progress: MockTaskProgress(done: 10, total: 10))
        ],
        error: error);
    _writeAsyncResponse(request.response, change.id);
  }

  Future<void> _processLogin(HttpRequest request) async {
    var req = await _readJson(request);
    var email = req['email'];
    var password = req['password'];
    var otp = req['otp'];

    var account = _findAccountByEmail(email);
    if (account == null || password != account.password) {
      request.response.statusCode = HttpStatus.unauthorized;
      _writeErrorResponse(request.response,
          'cannot authenticate to snap store: Provided email/password is not correct.',
          kind: 'login-required');
      return;
    }
    if (account.otp != null) {
      if (otp == null) {
        request.response.statusCode = HttpStatus.unauthorized;
        _writeErrorResponse(
            request.response, 'two factor authentication required',
            kind: 'two-factor-required');
      } else if (otp != account.otp) {
        request.response.statusCode = HttpStatus.unauthorized;
        _writeErrorResponse(
            request.response, 'two factor authentication failed',
            kind: 'two-factor-failed');
      }
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

  void _processGetSnaps(HttpRequest request) {
    _writeSyncResponse(
        request.response, snaps.values.map((snap) => snap.toJson()).toList());
  }

  Future<void> _processPostSnaps(HttpRequest request) async {
    var req = await _readJson(request);
    var action = req['action'];
    var snapNames = req['snaps'];

    String? error;
    switch (action) {
      case 'install':
        var snapsToInstall = <MockSnap>[];
        for (var name in snapNames) {
          if (snaps.containsKey(name)) {
            error = 'Snap $name already installed';
          }
          var snap = storeSnaps[name];
          if (snap == null) {
            error = 'Snap $name not in store';
          } else {
            snapsToInstall.add(snap);
          }
        }
        if (error == null) {
          for (var snap in snapsToInstall) {
            snaps[snap.name] = snap;
          }
        }
        break;
      case 'remove':
        for (var name in snapNames) {
          var snap = snaps[name];
          if (snap == null) {
            error = 'Snap $name not installed';
          }
        }
        if (error == null) {
          for (var name in snapNames) {
            snaps.remove(name);
          }
        }
        break;
      case 'refresh':
        if (snapNames == null) {
          for (var snap in snaps.values) {
            snap.refreshed = true;
          }
        } else {
          for (var name in snapNames) {
            var snap = snaps[name];
            if (snap == null) {
              error = 'Snap $name not installed';
            } else {
              snap.refreshed = true;
            }
          }
        }
        break;
      default:
        _writeErrorResponse(request.response, 'unknown action');
        break;
    }

    var change = _addChange(
        ready: true,
        tasks: [
          MockTask(id: '0', progress: MockTaskProgress(done: 10, total: 10))
        ],
        error: error);
    _writeAsyncResponse(request.response, change.id);
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

  MockChange _addChange(
      {String kind = '',
      String summary = '',
      String status = '',
      List<MockTask> tasks = const [],
      bool ready = false,
      String spawnTime = '',
      String? readyTime,
      String? error}) {
    var change = MockChange(
        id: changes.length.toString(),
        kind: kind,
        summary: summary,
        status: status,
        tasks: tasks,
        ready: ready,
        spawnTime: spawnTime,
        readyTime: readyTime,
        error: error);
    changes.add(change);
    return change;
  }

  MockChange? _findChange(String id) {
    for (var change in changes) {
      if (change.id == id) {
        return change;
      }
    }
    return null;
  }

  void _writeSyncResponse(HttpResponse response, dynamic result) {
    _writeJson(response, {
      'type': 'sync',
      'status-code': response.statusCode,
      'status': response.reasonPhrase,
      'result': result
    });
  }

  void _writeAsyncResponse(HttpResponse response, String change) {
    _writeJson(response, {
      'type': 'async',
      'status-code': response.statusCode,
      'status': response.reasonPhrase,
      'change': change
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
    addTearDown(() async {
      await snapd.close();
    });

    var client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

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
  });

  test('authorization', () async {
    var snapd = MockSnapdServer();
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    var client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });
    client.setAuthorization('macaroon', ['discharge1', 'discharge2']);

    await client.systemInfo();
    expect(snapd.lastMacaroon, equals('macaroon'));
    expect(snapd.lastDischarges, equals(['discharge1', 'discharge2']));
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
    addTearDown(() async {
      await snapd.close();
    });

    var client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    var response = await client.login('admin@example.com', 'password');
    expect(response.id, equals(42));
    expect(response.username, equals('admin'));
    expect(response.email, equals('admin@example.com'));
    expect(response.macaroon, equals('macaroon'));
    expect(response.discharges, equals(['discharge1', 'discharge2']));
    expect(response.sshKeys, equals(['key1', 'key2']));
  });

  test('login - otp', () async {
    var snapd = MockSnapdServer(accounts: [
      MockAccount(
          id: 42, email: 'admin@example.com', password: 'password', otp: '1234')
    ]);
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    var client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    await expectLater(() => client.login('unknown@example.com', 'password'),
        throwsA(isA<String>()));
    await expectLater(
        () => client.login('unknown@example.com', 'password', otp: '0000'),
        throwsA(isA<String>()));
    var response =
        await client.login('admin@example.com', 'password', otp: '1234');
    expect(response.id, equals(42));
  });

  test('login - unknown email', () async {
    var snapd = MockSnapdServer();
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    var client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    expect(() => client.login('unknown@example.com', 'password'),
        throwsA(isA<String>()));
  });

  test('login - incorrect password', () async {
    var snapd = MockSnapdServer(accounts: [
      MockAccount(id: 42, email: 'admin@example.com', password: 'secret')
    ]);
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    var client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    expect(() => client.login('admin@example.com', 'password'),
        throwsA(isA<String>()));
  });

  test('logout', () async {
    var snapd = MockSnapdServer(accounts: [
      MockAccount(id: 42, email: 'admin@example.com', password: 'password')
    ]);
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    var client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    var response = await client.login('admin@example.com', 'password');
    await client.logout(response.id);
  });

  test('snaps', () async {
    var snapd = MockSnapdServer(snaps: [
      MockSnap(name: 'snap1'),
      MockSnap(name: 'snap2'),
      MockSnap(name: 'snap3')
    ]);
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    var client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    var snaps = await client.snaps();
    expect(snaps, hasLength(3));
    expect(snaps[0].name, equals('snap1'));
    expect(snaps[1].name, equals('snap2'));
    expect(snaps[2].name, equals('snap3'));
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
    addTearDown(() async {
      await snapd.close();
    });

    var client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

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
    addTearDown(() async {
      await snapd.close();
    });

    var client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

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
  });

  test('connections', () async {
    var plug1 = MockPlug('plug1', 'interface1');
    var slot3 = MockSlot('slot3', 'interface1');
    var snap1 = MockSnap(name: 'test1', plugs: [plug1]);
    var snap2 =
        MockSnap(name: 'test2', slots: [MockSlot('slot2', 'interface1')]);
    var snap3 = MockSnap(
        name: 'test3',
        plugs: [MockPlug('plug3', 'interface1')],
        slots: [slot3]);

    plug1.slotSnap = snap3;
    plug1.slot = slot3;

    var snapd = MockSnapdServer(snaps: [snap1, snap2, snap3]);
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    var client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    var response = await client.connections();
    expect(
        response.established,
        unorderedEquals([
          SnapConnection(
              slot: SnapSlot(snap: 'test3', slot: 'slot3'),
              plug: SnapPlug(snap: 'test1', plug: 'plug1'),
              interface: 'interface1')
        ]));
    expect(
        response.plugs,
        unorderedEquals([
          SnapPlug(snap: 'test1', plug: 'plug1', interface: 'interface1'),
          SnapPlug(snap: 'test3', plug: 'plug3', interface: 'interface1')
        ]));
    expect(
        response.slots,
        unorderedEquals([
          SnapSlot(snap: 'test2', slot: 'slot2', interface: 'interface1'),
          SnapSlot(snap: 'test3', slot: 'slot3', interface: 'interface1')
        ]));
  });

  test('connect', () async {
    var plug1 = MockPlug('plug1', 'interface1');
    var slot3 = MockSlot('slot3', 'interface1');
    var snap1 = MockSnap(name: 'test1', plugs: [plug1]);
    var snap2 =
        MockSnap(name: 'test2', slots: [MockSlot('slot2', 'interface1')]);
    var snap3 = MockSnap(
        name: 'test3',
        plugs: [MockPlug('plug3', 'interface1')],
        slots: [slot3]);

    var snapd = MockSnapdServer(snaps: [snap1, snap2, snap3]);
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    var client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    expect(plug1.slotSnap, isNull);
    expect(plug1.slot, isNull);
    var changeId = await client.connect('test1', 'plug1', 'test3', 'slot3');
    var change = await client.getChange(changeId);
    expect(change.ready, isTrue);
    expect(plug1.slotSnap, equals(snap3));
    expect(plug1.slot, equals(slot3));
  });

  test('disconnect', () async {
    var plug1 = MockPlug('plug1', 'interface1');
    var slot3 = MockSlot('slot3', 'interface1');
    var snap1 = MockSnap(name: 'test1', plugs: [plug1]);
    var snap2 =
        MockSnap(name: 'test2', slots: [MockSlot('slot2', 'interface1')]);
    var snap3 = MockSnap(
        name: 'test3',
        plugs: [MockPlug('plug3', 'interface1')],
        slots: [slot3]);

    plug1.slotSnap = snap3;
    plug1.slot = slot3;

    var snapd = MockSnapdServer(snaps: [snap1, snap2, snap3]);
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    var client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    expect(plug1.slotSnap, equals(snap3));
    expect(plug1.slot, equals(slot3));
    var changeId = await client.disconnect('test1', 'plug1', 'test3', 'slot3');
    var change = await client.getChange(changeId);
    expect(change.ready, isTrue);
    expect(plug1.slotSnap, isNull);
    expect(plug1.slot, isNull);
  });

  test('find', () async {
    var snapd = MockSnapdServer(storeSnaps: [
      MockSnap(name: 'swordfish'),
      MockSnap(name: 'bear'),
      MockSnap(name: 'fishy')
    ]);
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    var client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    var snaps = await client.find();
    expect(snaps, hasLength(3));
    expect(snaps[0].name, equals('swordfish'));
    expect(snaps[1].name, equals('bear'));
    expect(snaps[2].name, equals('fishy'));
  });

  test('find - query', () async {
    var snapd = MockSnapdServer(storeSnaps: [
      MockSnap(name: 'swordfish'),
      MockSnap(name: 'bear'),
      MockSnap(name: 'fishy')
    ]);
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    var client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    var snaps = await client.find(query: 'fish');
    expect(snaps, hasLength(2));
    expect(snaps[0].name, equals('swordfish'));
    expect(snaps[1].name, equals('fishy'));
  });

  test('find - name', () async {
    var snapd = MockSnapdServer(storeSnaps: [
      MockSnap(name: 'swordfish'),
      MockSnap(name: 'bear'),
      MockSnap(name: 'fishy')
    ]);
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    var client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    var snaps = await client.find(name: 'fishy');
    expect(snaps, hasLength(1));
    expect(snaps[0].name, equals('fishy'));
  });

  test('find - section', () async {
    var snapd = MockSnapdServer(storeSnaps: [
      MockSnap(name: 'swordfish', section: 'sharp'),
      MockSnap(name: 'bear', section: 'soft'),
      MockSnap(name: 'fishy', section: 'soft')
    ]);
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    var client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    var snaps = await client.find(section: 'soft');
    expect(snaps, hasLength(2));
    expect(snaps[0].name, equals('bear'));
    expect(snaps[1].name, equals('fishy'));
  });

  test('install', () async {
    var snapd = MockSnapdServer(storeSnaps: [
      MockSnap(name: 'test1'),
      MockSnap(name: 'test2'),
      MockSnap(name: 'test3')
    ]);
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    var client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    expect(snapd.snaps, hasLength(0));
    var changeId = await client.install(['test2']);
    var change = await client.getChange(changeId);
    expect(change.ready, isTrue);
    expect(snapd.snaps.keys.toList(), equals(['test2']));
  });

  test('install - multiple', () async {
    var snapd = MockSnapdServer(storeSnaps: [
      MockSnap(name: 'test1'),
      MockSnap(name: 'test2'),
      MockSnap(name: 'test3')
    ]);
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    var client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    expect(snapd.snaps, hasLength(0));
    var changeId = await client.install(['test1', 'test2']);
    var change = await client.getChange(changeId);
    expect(change.ready, isTrue);
    expect(snapd.snaps.keys.toList(), equals(['test1', 'test2']));
  });

  test('remove', () async {
    var snapd = MockSnapdServer(snaps: [
      MockSnap(name: 'test1'),
      MockSnap(name: 'test2'),
      MockSnap(name: 'test3')
    ]);
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    var client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    expect(snapd.snaps.keys.toList(), equals(['test1', 'test2', 'test3']));
    var changeId = await client.remove(['test2']);
    var change = await client.getChange(changeId);
    expect(change.ready, isTrue);
    expect(snapd.snaps.keys.toList(), equals(['test1', 'test3']));
  });

  test('remove - multiple', () async {
    var snapd = MockSnapdServer(snaps: [
      MockSnap(name: 'test1'),
      MockSnap(name: 'test2'),
      MockSnap(name: 'test3')
    ]);
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    var client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    expect(snapd.snaps.keys.toList(), equals(['test1', 'test2', 'test3']));
    var changeId = await client.remove(['test1', 'test2']);
    var change = await client.getChange(changeId);
    expect(change.ready, isTrue);
    expect(snapd.snaps.keys.toList(), equals(['test3']));
  });

  test('refresh', () async {
    var snapd = MockSnapdServer(snaps: [
      MockSnap(name: 'test1'),
      MockSnap(name: 'test2'),
      MockSnap(name: 'test3')
    ]);
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    var client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    expect(snapd.snaps['test1']!.refreshed, isFalse);
    expect(snapd.snaps['test2']!.refreshed, isFalse);
    expect(snapd.snaps['test3']!.refreshed, isFalse);
    var changeId = await client.refresh();
    var change = await client.getChange(changeId);
    expect(change.ready, isTrue);
    expect(snapd.snaps['test1']!.refreshed, isTrue);
    expect(snapd.snaps['test2']!.refreshed, isTrue);
    expect(snapd.snaps['test3']!.refreshed, isTrue);
  });

  test('refresh - single', () async {
    var snapd = MockSnapdServer(snaps: [
      MockSnap(name: 'test1'),
      MockSnap(name: 'test2'),
      MockSnap(name: 'test3')
    ]);
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    var client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    expect(snapd.snaps['test1']!.refreshed, isFalse);
    expect(snapd.snaps['test2']!.refreshed, isFalse);
    expect(snapd.snaps['test3']!.refreshed, isFalse);
    var changeId = await client.refresh(['test2']);
    var change = await client.getChange(changeId);
    expect(change.ready, isTrue);
    expect(snapd.snaps['test1']!.refreshed, isFalse);
    expect(snapd.snaps['test2']!.refreshed, isTrue);
    expect(snapd.snaps['test3']!.refreshed, isFalse);
  });

  test('refresh - multiple', () async {
    var snapd = MockSnapdServer(snaps: [
      MockSnap(name: 'test1'),
      MockSnap(name: 'test2'),
      MockSnap(name: 'test3')
    ]);
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    var client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    expect(snapd.snaps['test1']!.refreshed, isFalse);
    expect(snapd.snaps['test2']!.refreshed, isFalse);
    expect(snapd.snaps['test3']!.refreshed, isFalse);
    var changeId = await client.refresh(['test1', 'test2']);
    var change = await client.getChange(changeId);
    expect(change.ready, isTrue);
    expect(snapd.snaps['test1']!.refreshed, isTrue);
    expect(snapd.snaps['test2']!.refreshed, isTrue);
    expect(snapd.snaps['test3']!.refreshed, isFalse);
  });
}
