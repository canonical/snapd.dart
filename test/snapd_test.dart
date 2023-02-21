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

  MockApp(
      {this.active,
      this.commonId,
      this.daemon,
      this.desktopFile,
      this.enabled,
      this.name = ''});

  dynamic toJson(String snapName) {
    var object = <dynamic, dynamic>{'name': name, 'snap': snapName};
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
  final String releasedAt;
  final String revision;
  final int size;
  final String version;

  MockChannel(
      {this.channel = '',
      this.confinement = '',
      this.releasedAt = '',
      this.revision = '',
      this.size = 0,
      this.version = ''});

  dynamic toJson() {
    var object = <dynamic, dynamic>{
      'channel': channel,
      'confinement': confinement,
      'released-at': releasedAt,
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
  final List<MockApp> apps;
  final String? base;
  final String channel;
  final Map<String, MockChannel>? channels;
  final List<String>? commonIds;
  final String? contact;
  final String? confinement;
  final String description;
  final int? downloadSize;
  final String id;
  final String? installDate;
  final int? installedSize;
  final String? license;
  final List<MockMedia>? media;
  final String? mountedFrom;
  final String name;
  final List<MockPlug> plugs;
  final bool private;
  final MockPublisher? publisher;
  final bool refreshable;
  final String revision;
  final String? section;
  final List<MockSlot> slots;
  final String? status;
  final String? storeUrl;
  final String summary;
  final String title;
  final String? trackingChannel;
  final List<String>? tracks;
  final String type;
  final String version;
  final String? website;

  String? installedChannel;
  String? installedRevision;
  var classic = false;
  var dangerous = false;
  var devmode = false;
  var jailmode = false;
  var purged = false;
  var refreshed = false;
  bool enabled;

  MockSnap(
      {this.apps = const [],
      this.base,
      this.channel = '',
      this.channels,
      this.commonIds,
      this.contact,
      this.confinement,
      this.description = '',
      this.devmode = false,
      this.downloadSize,
      this.enabled = true,
      this.id = '',
      this.installDate,
      this.installedSize,
      this.jailmode = false,
      this.license,
      this.media,
      this.mountedFrom,
      this.name = '',
      this.plugs = const [],
      this.private = false,
      this.publisher,
      this.refreshable = false,
      this.revision = '',
      this.section,
      this.slots = const [],
      this.status,
      this.storeUrl,
      this.summary = '',
      this.title = '',
      this.trackingChannel,
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
      'devmode': devmode,
      'id': id,
      'jailmode': jailmode,
      'name': name,
      'private': private,
      'revision': revision,
      'summary': summary,
      'title': title,
      'type': type,
      'version': version
    };
    if (apps.isNotEmpty) {
      object['apps'] = apps.map((app) => app.toJson(name)).toList();
    }
    if (base != null) {
      object['base'] = base;
    }
    if (channels != null) {
      object['channels'] =
          channels!.map((name, channel) => MapEntry(name, channel.toJson()));
    }
    if (commonIds != null) {
      object['common-ids'] = commonIds;
    }
    if (confinement != null) {
      object['confinement'] = confinement;
    }
    if (contact != null) {
      object['contact'] = contact;
    }
    if (downloadSize != null) {
      object['download-size'] = downloadSize;
    }
    if (installDate != null) {
      object['install-date'] = installDate;
    }
    if (installedSize != null) {
      object['installed-size'] = installedSize;
    }
    if (license != null) {
      object['license'] = license;
    }
    if (mountedFrom != null) {
      object['mounted-from'] = mountedFrom;
    }
    if (media != null) {
      object['media'] = media!.map((m) => m.toJson()).toList();
    }
    if (publisher != null) {
      object['publisher'] = publisher!.toJson();
    }
    if (status != null) {
      object['status'] = status;
    }
    if (storeUrl != null) {
      object['store-url'] = storeUrl;
    }
    if (trackingChannel != null) {
      object['tracking-channel'] = trackingChannel;
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

  dynamic toJson() {
    var object = <String, dynamic>{
      'id': id,
      'kind': kind,
      'summary': summary,
      'status': status
    };
    if (progress != null) {
      object['progress'] = {
        'label': progress!.label,
        'done': progress!.done,
        'total': progress!.total
      };
    }
    return object;
  }
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
  final List<String> snapNames;
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
      this.snapNames = const [],
      this.spawnTime = '2022-04-28T13:56Z',
      this.readyTime,
      this.error});

  dynamic toJson() {
    var object = {
      'id': id,
      'kind': kind,
      'summary': summary,
      'status': status,
      'tasks': tasks.map((t) => t.toJson()).toList(),
      'ready': ready,
      'spawn-time': spawnTime,
      'ready-time': readyTime,
      'data': {'snap-names': snapNames}
    };
    if (error != null) {
      object['err'] = error;
    }
    return object;
  }
}

class MockSnapdServer {
  Directory? _tempDir;
  String? _socketPath;
  HttpServer? _server;
  StreamSubscription<HttpRequest>? _requestSubscription;

  final List<MockAccount> accounts;
  final String architecture;
  final String buildId;
  final changes = <MockChange>[];
  final String confinement;
  final String kernelVersion;
  final bool managed;
  final bool onClassic;
  final String? refreshLast;
  final String? refreshNext;
  final removedSnaps = <String, MockSnap>{};
  final String series;
  final snaps = <String, MockSnap>{};
  final storeSnaps = <String, MockSnap>{};
  final String systemMode;
  final String version;

  // Last user agent received.
  String? lastUserAgent;

  // Last macaroon received.
  String? lastMacaroon;
  List<String>? lastDischarges;

  String get socketPath => _socketPath!;

  MockSnapdServer({
    this.accounts = const [],
    this.architecture = '',
    this.buildId = '',
    List<MockChange> changes = const [],
    this.confinement = '',
    this.kernelVersion = '',
    this.managed = false,
    this.onClassic = false,
    this.refreshLast,
    this.refreshNext,
    this.series = '',
    List<MockSnap> snaps = const [],
    List<MockSnap> storeSnaps = const [],
    this.systemMode = '',
    this.version = '',
  }) {
    for (var change in changes) {
      this.changes.add(change);
    }
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

    _server = await HttpServer.bind(
        InternetAddress(_socketPath!, type: InternetAddressType.unix), 0);
    _requestSubscription = _server?.listen(_processRequest);
  }

  Future<void> _processRequest(HttpRequest request) async {
    lastUserAgent = request.headers.value(HttpHeaders.userAgentHeader);

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
    if (method == 'GET' && path == '/v2/apps') {
      _processGetApps(request);
    } else if (method == 'GET' && path == '/v2/connections') {
      _processGetConnections(request);
    } else if (method == 'GET' && path == '/v2/changes') {
      _processGetChanges(request);
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
    } else if (method == 'GET' && path.startsWith('/v2/snaps/')) {
      await _processGetSnap(request, path.substring('/v2/snaps/'.length));
    } else if (method == 'POST' && path.startsWith('/v2/snaps/')) {
      await _processPostSnap(request, path.substring('/v2/snaps/'.length));
    } else if (method == 'GET' && path == '/v2/system-info') {
      _processSystemInfo(request);
    } else {
      request.response.statusCode = HttpStatus.notFound;
      _writeErrorResponse(request.response, 'not found');
    }
    await request.response.close();
  }

  void _processGetApps(HttpRequest request) {
    var parameters = request.uri.queryParameters;
    var names = parameters['names']?.split(',');
    var filter = parameters['select'];
    var apps = [];
    for (var snap in snaps.values) {
      if (names != null && !names.contains(snap.name)) {
        continue;
      }
      for (var app in snap.apps) {
        if (filter == 'service' && app.daemon == null) {
          continue;
        }
        apps.add(app.toJson(snap.name));
      }
    }
    _writeSyncResponse(request.response, apps);
  }

  void _processGetConnections(HttpRequest request) {
    var parameters = request.uri.queryParameters;
    var snapName = parameters['snap'];
    var filter = parameters['select'];
    var established = [];
    var plugs = [];
    var slots = [];
    for (var snap in snaps.values) {
      for (var p in snap.plugs) {
        var plugObject = <String, dynamic>{
          'snap': snap.name,
          'plug': p.name,
          'interface': p.interface
        };
        if (p.attributes.isNotEmpty) {
          plugObject['attrs'] = p.attributes;
        }

        var hasConnections = false;
        if (p.slot != null) {
          hasConnections = true;

          var s = p.slot!;
          var connectedSlotObject = <String, dynamic>{
            'snap': p.slotSnap!.name,
            'slot': s.name
          };
          if (s.attributes.isNotEmpty) {
            connectedSlotObject['attributes'] = s.attributes;
          }
          var po = <String, dynamic>{'snap': snap.name, 'plug': p.name};
          if (p.attributes.isNotEmpty) {
            po['attributes'] = p.attributes;
          }
          var establishedObject = {
            'slot': connectedSlotObject,
            'plug': po,
            'interface': p.interface
          };
          plugObject['connections'] = [
            {'snap': p.slotSnap!.name, 'slot': s.name}
          ];

          if (snapName == null ||
              snap.name == snapName ||
              p.slotSnap!.name == snapName) {
            established.add(establishedObject);
          }
        }

        var matchName = snapName == null ||
            snap.name == snapName ||
            p.slotSnap?.name == snapName;
        var matchConnection = filter == 'all' || hasConnections;
        if (matchName && matchConnection) {
          plugs.add(plugObject);
        }
      }

      var hasConnections = false;
      for (var s in snap.slots) {
        var slotObject = <String, dynamic>{
          'snap': snap.name,
          'slot': s.name,
          'interface': s.interface
        };
        if (s.attributes.isNotEmpty) {
          slotObject['attrs'] = s.attributes;
        }

        var connectedPlugNameMatches = false;
        var connections = <Map<String, dynamic>>[];
        for (var snap in snaps.values) {
          for (var p in snap.plugs) {
            if (p.slot == s) {
              connections.add({'snap': snap.name, 'plug': p.name});
              if (snap.name == snapName) {
                connectedPlugNameMatches = true;
              }
            }
          }
        }
        if (connections.isNotEmpty) {
          slotObject['connections'] = connections;
          hasConnections = true;
        }

        var matchName = snapName == null ||
            snap.name == snapName ||
            connectedPlugNameMatches;
        var matchConnection = filter == 'all' || hasConnections;
        if (matchName && matchConnection) {
          slots.add(slotObject);
        }
      }
    }
    var r = {'established': established, 'plugs': plugs, 'slots': slots};
    _writeSyncResponse(request.response, r);
  }

  void _processGetChanges(HttpRequest request) {
    var parameters = request.uri.queryParameters;
    var filter = parameters['select'] ?? 'in-progress';
    var name = parameters['for'];
    var filteredChanges = changes.where((change) {
      if (name != null) {
        if (!change.snapNames.contains(name)) {
          return false;
        }
      }

      if (filter == 'all') {
        return true;
      }
      if (filter == 'in-progress' && !change.ready) {
        return true;
      }
      if (filter == 'ready' && change.ready) {
        return true;
      }

      return false;
    });

    _writeSyncResponse(
        request.response, filteredChanges.map((c) => c.toJson()).toList());
  }

  void _processGetChange(HttpRequest request, String id) {
    var change = _findChange(id);
    if (change == null) {
      request.response.statusCode = HttpStatus.notFound;
      _writeErrorResponse(request.response, 'not found');
      return;
    }

    _writeSyncResponse(request.response, change.toJson());
  }

  void _processFind(HttpRequest request) async {
    var parameters = request.uri.queryParameters;
    var query = parameters['q'];
    var name = parameters['name'];
    var section = parameters['section'];
    var select = parameters['select'];

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
      if (select == 'refresh' && !snap.refreshable) {
        continue;
      }
      if ((select == 'private') != snap.private) {
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
    var snapNames = <String>[];
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
      snapNames = [plugSnap.name, slotSnap.name];
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
      snapNames = [plugSnap.name, slotSnap.name];
    } else {
      _writeErrorResponse(request.response, 'unknown action');
      return;
    }

    var change = _addChange(
        ready: true,
        tasks: [
          MockTask(id: '0', progress: MockTaskProgress(done: 10, total: 10))
        ],
        error: error,
        snapNames: snapNames);
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

  Future<void> _processGetSnap(HttpRequest request, String name) async {
    var snap = snaps[name];
    if (snap == null) {
      request.response.statusCode = HttpStatus.notFound;
      _writeErrorResponse(request.response, 'not found');
      return;
    }
    _writeSyncResponse(request.response, snap.toJson());
  }

  Future<void> _processPostSnaps(HttpRequest request) async {
    var req = await _readJson(request);
    var action = req['action'];
    List<String> snapNames;

    String? error;
    switch (action) {
      case 'refresh':
        snapNames = List.from(req['snaps'] ?? []);
        var missingSnaps = <String>[];
        for (var name in snapNames) {
          var snap = snaps[name];
          if (snap == null) {
            missingSnaps.add(name);
          } else {
            snap.refreshed = true;
          }
        }
        if (missingSnaps.isNotEmpty) {
          error = 'Snaps not installed: ${missingSnaps.join(', ')}';
        }
        break;
      default:
        _writeErrorResponse(request.response, 'unknown action');
        snapNames = [];
        break;
    }
    var change = _addChange(
        ready: true,
        tasks: [
          MockTask(id: '0', progress: MockTaskProgress(done: 10, total: 10))
        ],
        error: error,
        snapNames: snapNames);
    _writeAsyncResponse(request.response, change.id);
  }

  Future<void> _processPostSnap(HttpRequest request, String name) async {
    var req = await _readJson(request);
    var action = req['action'];

    String? error;
    switch (action) {
      case 'install':
        var snapsToInstall = <MockSnap>[];
        if (snaps.containsKey(name)) {
          error = 'Snap $name already installed';
        }
        var snap = storeSnaps[name];
        if (snap == null) {
          error = 'Snap $name not in store';
        } else {
          var channel = req['channel'];
          if (channel != null) {
            snap.installedChannel = channel;
          }
          var revision = req['revision'];
          if (revision != null) {
            snap.installedRevision = revision;
          }
          snapsToInstall.add(snap);
        }
        if (error == null) {
          for (var snap in snapsToInstall) {
            snap.classic = req['classic'] ?? false;
            snap.dangerous = req['dangerous'] ?? false;
            snap.devmode = req['devmode'] ?? false;
            snap.jailmode = req['jailmode'] ?? false;
            snaps[snap.name] = snap;
          }
        }
        break;
      case 'remove':
        var snap = snaps[name];
        if (snap != null) {
          if (req['purge'] ?? false) {
            snap.purged = true;
          }
          removedSnaps[name] = snap;
          snaps.remove(name);
        } else {
          error = 'Snap $name not installed';
        }
        break;
      case 'refresh':
        var snap = snaps[name];
        var channel = req['channel'];
        if (snap == null) {
          error = 'Snap $name not installed';
        } else {
          snap.refreshed = true;
          snap.classic = req['classic'] ?? false;
          if (channel != null) {
            snap.installedChannel = channel;
          }
        }
        break;
      case 'enable':
        var snap = snaps[name];
        if (snap == null) {
          error = 'Snap $name not installed';
        } else {
          snap.enabled = true;
        }
        break;
      case 'disable':
        var snap = snaps[name];
        if (snap == null) {
          error = 'Snap $name not installed';
        } else {
          snap.enabled = false;
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
        error: error,
        snapNames: [name]);
    _writeAsyncResponse(request.response, change.id);
  }

  void _processSystemInfo(HttpRequest request) {
    var refresh = {'last': refreshLast};
    if (refreshNext != null) {
      refresh['next'] = refreshNext;
    }
    _writeSyncResponse(request.response, {
      'architecture': architecture,
      'build-id': buildId,
      'confinement': confinement,
      'kernel-version': kernelVersion,
      'managed': managed,
      'on-classic': onClassic,
      'refresh': refresh,
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
      String spawnTime = '2022-04-28T13:56Z',
      String? readyTime,
      String? error,
      List<String> snapNames = const []}) {
    var change = MockChange(
        id: changes.length.toString(),
        kind: kind,
        summary: summary,
        status: status,
        tasks: tasks,
        ready: ready,
        spawnTime: spawnTime,
        readyTime: readyTime,
        error: error,
        snapNames: snapNames);
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
        refreshLast: '2022-05-28T20:10:00Z',
        refreshNext: '2022-05-29T01:18:00Z',
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
    expect(info.confinement, equals(SnapConfinement.strict));
    expect(info.kernelVersion, equals('5.11.0'));
    expect(info.managed, isTrue);
    expect(info.onClassic, isTrue);
    expect(info.refreshLast, equals(DateTime.utc(2022, 5, 28, 20, 10)));
    expect(info.refreshNext, equals(DateTime.utc(2022, 5, 29, 1, 18)));
    expect(info.series, equals('16'));
    expect(info.systemMode, equals('run'));
    expect(info.version, equals('2.49'));
    expect(
        info.toString(),
        equals(
            'SnapdSystemInfoResponse(architecture: amd64, buildId: 2a0c915752b1c3c5dd7980220cd246876fb0a510, confinement: SnapConfinement.strict, kernelVersion: 5.11.0, managed: true, onClassic: true, refreshLast: 2022-05-28 20:10:00.000Z, refreshNext: 2022-05-29 01:18:00.000Z, series: 16, systemMode: run, version: 2.49)'));
  });

  test('user agent', () async {
    var snapd = MockSnapdServer();
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    var client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    client.userAgent = 'test-agent 1.0';
    await client.systemInfo();
    expect(snapd.lastUserAgent, equals('test-agent 1.0'));
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
    expect(
        response.toString(),
        equals(
            'SnapdLoginResponse(id: 42, username: admin, email: admin@example.com, macaroon: macaroon, discharges: [discharge1, discharge2])'));
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
        throwsA(isA<SnapdException>()));
    await expectLater(
        () => client.login('unknown@example.com', 'password', otp: '0000'),
        throwsA(isA<SnapdException>()));
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
        throwsA(isA<SnapdException>()));
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
        throwsA(isA<SnapdException>()));
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

    var snaps = await client.getSnaps();
    expect(snaps, hasLength(3));
    expect(snaps[0].name, equals('snap1'));
    expect(snaps[1].name, equals('snap2'));
    expect(snaps[2].name, equals('snap3'));
  });

  test('snap', () async {
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

    var snap = await client.getSnap('snap2');
    expect(snap.name, equals('snap2'));
  });

  test('apps', () async {
    var snapd = MockSnapdServer(snaps: [
      MockSnap(name: 'snap1', apps: [MockApp(name: 'app1')]),
      MockSnap(
          name: 'snap2', apps: [MockApp(name: 'app2a'), MockApp(name: 'app2b')])
    ]);
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    var client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    var apps = await client.getApps();
    expect(apps, hasLength(3));
    expect(apps[0].name, equals('app1'));
    expect(apps[1].name, equals('app2a'));
    expect(apps[2].name, equals('app2b'));
  });

  test('apps - services', () async {
    var snapd = MockSnapdServer(snaps: [
      MockSnap(name: 'snap1', apps: [MockApp(name: 'app1')]),
      MockSnap(name: 'snap2', apps: [
        MockApp(name: 'app2a', daemon: 'simple'),
        MockApp(name: 'app2b')
      ])
    ]);
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    var client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    var apps = await client.getApps(filter: SnapdAppFilter.service);
    expect(apps, hasLength(1));
    expect(apps[0].name, equals('app2a'));
  });

  test('apps - names', () async {
    var snapd = MockSnapdServer(snaps: [
      MockSnap(name: 'snap1', apps: [MockApp(name: 'app1')]),
      MockSnap(name: 'snap2', apps: [MockApp(name: 'app2')]),
      MockSnap(name: 'snap3', apps: [MockApp(name: 'app3')])
    ]);
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    var client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    var apps = await client.getApps(names: ['snap1', 'snap3']);
    expect(apps, hasLength(2));
    expect(apps[0].name, equals('app1'));
    expect(apps[1].name, equals('app3'));
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

    var snaps = await client.getSnaps();
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
    expect(
        snap.toString(),
        equals(
            "Snap(apps: [], base: null, channel: , channels: {}, commonIds: [], confinement: SnapConfinement.unknown, contact: , description: 'Hello\\nSalut\\nHola', devmode: false, downloadSize: null, id: QRDEfjn4WJYnm0FzDKwqqRZZI77awQEV, installDate: null, installedSize: null, jailmode: false, license: null, media: [], mountedFrom: null, name: hello, private: false, publisher: null, revision: 42, status: SnapStatus.unknown, storeUrl: null, summary: 'Hello is an app', title: 'Hello', trackingChannel: null, tracks: [], type: app, version: 1.2, website: null)"));
  });

  test('snap optional properties', () async {
    var snapd = MockSnapdServer(snaps: [
      MockSnap(
          apps: [MockApp(name: 'hello1'), MockApp(name: 'hello2')],
          base: 'core20',
          channel: 'stable',
          channels: {
            'latest/stable': MockChannel(
                channel: 'latest/stable',
                version: '1.2',
                revision: '42',
                size: 123456,
                confinement: 'strict',
                releasedAt: '2022-05-02T21:24:15.330374Z'),
            'insider/stable': MockChannel(
                channel: 'insider/stable',
                version: '1.3',
                revision: '43',
                size: 888888,
                confinement: 'classic',
                releasedAt: '2022-04-26T12:54:32.578086Z')
          },
          commonIds: ['com.example.Hello', 'com.example.Hallo'],
          contact: 'hello@example.com',
          confinement: 'classic',
          description: 'Hello\nSalut\nHola',
          devmode: true,
          downloadSize: 123456,
          id: 'QRDEfjn4WJYnm0FzDKwqqRZZI77awQEV',
          installDate: '2022-05-13T09:51:03.920998228Z',
          installedSize: 654321,
          jailmode: true,
          license: 'GPL-3',
          media: [
            MockMedia(type: 'icon', url: 'http://example.com/hello-icon.png'),
            MockMedia(
                type: 'screenshot',
                url: 'http://example.com/hello-screenshot.jpg',
                width: 1024,
                height: 768)
          ],
          mountedFrom: '/var/lib/snapd/snaps/hello_1.2.snap',
          name: 'hello',
          private: true,
          publisher: MockPublisher(
              id: 'JvtzsxbsHivZLdvzrt0iqW529riGLfXJ',
              username: 'publisher',
              displayName: 'Publisher',
              validation: 'verified'),
          revision: '42',
          status: 'available',
          storeUrl: 'https://snapcraft.io/hello',
          summary: 'Hello is an app',
          title: 'Hello',
          trackingChannel: 'latest/stable',
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

    var snaps = await client.getSnaps();
    expect(snaps, hasLength(1));
    var snap = snaps[0];
    expect(snap.apps, hasLength(2));
    expect(snap.apps[0].name, equals('hello1'));
    expect(snap.apps[0].snap, equals('hello'));
    expect(snap.apps[1].name, equals('hello2'));
    expect(snap.base, equals('core20'));
    expect(snap.channel, equals('stable'));
    expect(snap.channels, hasLength(2));
    expect(snap.commonIds, equals(['com.example.Hello', 'com.example.Hallo']));
    expect(snap.contact, equals('hello@example.com'));
    expect(snap.confinement, equals(SnapConfinement.classic));
    expect(snap.description, equals('Hello\nSalut\nHola'));
    expect(snap.devmode, isTrue);
    expect(snap.downloadSize, equals(123456));
    expect(snap.id, equals('QRDEfjn4WJYnm0FzDKwqqRZZI77awQEV'));
    expect(snap.installDate,
        equals(DateTime.utc(2022, 5, 13, 9, 51, 3, 920, 998)));
    expect(snap.installedSize, equals(654321));
    expect(snap.jailmode, isTrue);
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
    expect(snap.mountedFrom, equals('/var/lib/snapd/snaps/hello_1.2.snap'));
    expect(snap.name, equals('hello'));
    expect(snap.private, isTrue);
    expect(snap.publisher, isNotNull);
    expect(snap.publisher!.id, equals('JvtzsxbsHivZLdvzrt0iqW529riGLfXJ'));
    expect(snap.publisher!.username, equals('publisher'));
    expect(snap.publisher!.displayName, equals('Publisher'));
    expect(snap.publisher!.validation, equals('verified'));
    expect(snap.revision, equals('42'));
    expect(snap.status, equals(SnapStatus.available));
    expect(snap.storeUrl, equals('https://snapcraft.io/hello'));
    expect(snap.summary, equals('Hello is an app'));
    expect(snap.title, equals('Hello'));
    expect(snap.trackingChannel, equals('latest/stable'));
    expect(snap.tracks, equals(['latest', 'insider']));
    expect(snap.type, equals('app'));
    expect(snap.version, equals('1.2'));
    expect(snap.website, equals('http://example.com/hello'));
    expect(
        snap.toString(),
        equals(
            "Snap(apps: [SnapApp(snap: hello, name: hello1, desktopFile: null, daemon: null, enabled: true, active: true, commonId: null), SnapApp(snap: hello, name: hello2, desktopFile: null, daemon: null, enabled: true, active: true, commonId: null)], base: core20, channel: stable, channels: {latest/stable: SnapChannel(confinement: SnapConfinement.strict, releasedAt: 2022-05-02 21:24:15.330374Z, revision: 42, size: 123456, version: 1.2), insider/stable: SnapChannel(confinement: SnapConfinement.classic, releasedAt: 2022-04-26 12:54:32.578086Z, revision: 43, size: 888888, version: 1.3)}, commonIds: [com.example.Hello, com.example.Hallo], confinement: SnapConfinement.classic, contact: hello@example.com, description: 'Hello\\nSalut\\nHola', devmode: true, downloadSize: 123456, id: QRDEfjn4WJYnm0FzDKwqqRZZI77awQEV, installDate: 2022-05-13 09:51:03.920998Z, installedSize: 654321, jailmode: true, license: GPL-3, media: [SnapMedia(type: icon, url: http://example.com/hello-icon.png, width: null, height: null), SnapMedia(type: screenshot, url: http://example.com/hello-screenshot.jpg, width: 1024, height: 768)], mountedFrom: /var/lib/snapd/snaps/hello_1.2.snap, name: hello, private: true, publisher: SnapPublisher(id: JvtzsxbsHivZLdvzrt0iqW529riGLfXJ, username: publisher, displayName: Publisher, validation: verified), revision: 42, status: SnapStatus.available, storeUrl: https://snapcraft.io/hello, summary: 'Hello is an app', title: 'Hello', trackingChannel: latest/stable, tracks: [latest, insider], type: app, version: 1.2, website: http://example.com/hello)"));
  });

  test('connections', () async {
    var plug1 = MockPlug('plug1', 'interface1');
    var slot1 = MockSlot('slot1', 'interface1');
    var plug2 = MockPlug('plug2', 'interface1');
    var slot2 = MockSlot('slot2', 'interface1');
    var plug3 = MockPlug('plug3', 'interface1');
    var slot3 = MockSlot('slot3', 'interface1');
    var snap1 = MockSnap(name: 'test1', plugs: [plug1], slots: [slot1]);
    var snap2 = MockSnap(name: 'test2', plugs: [plug2], slots: [slot2]);
    var snap3 = MockSnap(name: 'test3', plugs: [plug3], slots: [slot3]);

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

    var response = await client.getConnections();
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
          SnapPlug(
              snap: 'test1',
              plug: 'plug1',
              interface: 'interface1',
              connections: [SnapSlot(snap: 'test3', slot: 'slot3')])
        ]));
    expect(
        response.slots,
        unorderedEquals([
          SnapSlot(
              snap: 'test3',
              slot: 'slot3',
              interface: 'interface1',
              connections: [SnapPlug(snap: 'test1', plug: 'plug1')])
        ]));
    expect(
        response.toString(),
        equals(
            'SnapdConnectionsResponse(established: [SnapConnection(slot: SnapSlot(snap: test3, slot: slot3), slotAttributes: {}, plug: SnapPlug(snap: test1, plug: plug1), plugAttributes: {}, interface: interface1, manual: false)], plugs: [SnapPlug(snap: test1, plug: plug1, interface: interface1, connections: [SnapSlot(snap: test3, slot: slot3)])], slots: [SnapSlot(snap: test3, slot: slot3, interface: interface1, connections: [SnapPlug(snap: test1, plug: plug1)])], undesired: [])'));
  });

  test('connection attributes', () async {
    var plug1 = MockPlug('plug1', 'interface1',
        attributes: {'plug-attribute1': 'plug-attribute-value1'});
    var slot1 = MockSlot('slot1', 'interface1',
        attributes: {'slot-attribute1': 'slot-attribute-value1'});
    var snap1 = MockSnap(name: 'test1', plugs: [plug1]);
    var snap2 = MockSnap(name: 'test2', slots: [slot1]);

    var snapd = MockSnapdServer(snaps: [snap1, snap2]);
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    var client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    var response =
        await client.getConnections(filter: SnapdConnectionFilter.all);
    expect(
        response.plugs,
        unorderedEquals([
          SnapPlug(
              snap: 'test1',
              plug: 'plug1',
              interface: 'interface1',
              attributes: {'plug-attribute1': 'plug-attribute-value1'})
        ]));
    expect(
        response.slots,
        unorderedEquals([
          SnapSlot(
              snap: 'test2',
              slot: 'slot1',
              interface: 'interface1',
              attributes: {'slot-attribute1': 'slot-attribute-value1'})
        ]));
    expect(
        response.plugs.toString(),
        equals(
            '[SnapPlug(snap: test1, plug: plug1, attributes: {plug-attribute1: plug-attribute-value1}, interface: interface1)]'));
    expect(
        response.slots.toString(),
        equals(
            '[SnapSlot(snap: test2, slot: slot1, attributes: {slot-attribute1: slot-attribute-value1}, interface: interface1)]'));
  });

  test('connections - all', () async {
    var plug1 = MockPlug('plug1', 'interface1');
    var slot1 = MockSlot('slot1', 'interface1');
    var plug2 = MockPlug('plug2', 'interface1');
    var slot2 = MockSlot('slot2', 'interface1');
    var plug3 = MockPlug('plug3', 'interface1');
    var slot3 = MockSlot('slot3', 'interface1');
    var snap1 = MockSnap(name: 'test1', plugs: [plug1], slots: [slot1]);
    var snap2 = MockSnap(name: 'test2', plugs: [plug2], slots: [slot2]);
    var snap3 = MockSnap(name: 'test3', plugs: [plug3], slots: [slot3]);

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

    var response =
        await client.getConnections(filter: SnapdConnectionFilter.all);
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
          SnapPlug(
              snap: 'test1',
              plug: 'plug1',
              interface: 'interface1',
              connections: [SnapSlot(snap: 'test3', slot: 'slot3')]),
          SnapPlug(snap: 'test2', plug: 'plug2', interface: 'interface1'),
          SnapPlug(snap: 'test3', plug: 'plug3', interface: 'interface1')
        ]));
    expect(
        response.slots,
        unorderedEquals([
          SnapSlot(snap: 'test1', slot: 'slot1', interface: 'interface1'),
          SnapSlot(snap: 'test2', slot: 'slot2', interface: 'interface1'),
          SnapSlot(
              snap: 'test3',
              slot: 'slot3',
              interface: 'interface1',
              connections: [SnapPlug(snap: 'test1', plug: 'plug1')])
        ]));
  });

  test('connections - snap name', () async {
    var plug1 = MockPlug('plug1', 'interface1');
    var slot1 = MockSlot('slot1', 'interface1');
    var plug2 = MockPlug('plug2', 'interface1');
    var slot2 = MockSlot('slot2', 'interface1');
    var plug3 = MockPlug('plug3', 'interface1');
    var slot3 = MockSlot('slot3', 'interface1');
    var snap1 = MockSnap(name: 'test1', slots: [slot1], plugs: [plug1]);
    var snap2 = MockSnap(name: 'test2', slots: [slot2], plugs: [plug2]);
    var snap3 = MockSnap(name: 'test3', slots: [slot3], plugs: [plug3]);

    // Connect in a loop
    plug1.slotSnap = snap2;
    plug1.slot = slot2;
    plug2.slotSnap = snap3;
    plug2.slot = slot3;
    plug3.slotSnap = snap1;
    plug3.slot = slot1;

    var snapd = MockSnapdServer(snaps: [snap1, snap2, snap3]);
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    var client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    var response = await client.getConnections(snap: 'test2');
    expect(
        response.established,
        unorderedEquals([
          SnapConnection(
              slot: SnapSlot(snap: 'test2', slot: 'slot2'),
              plug: SnapPlug(snap: 'test1', plug: 'plug1'),
              interface: 'interface1'),
          SnapConnection(
              slot: SnapSlot(snap: 'test3', slot: 'slot3'),
              plug: SnapPlug(snap: 'test2', plug: 'plug2'),
              interface: 'interface1')
        ]));
    expect(
        response.plugs,
        unorderedEquals([
          SnapPlug(
              snap: 'test1',
              plug: 'plug1',
              interface: 'interface1',
              connections: [SnapSlot(snap: 'test2', slot: 'slot2')]),
          SnapPlug(
              snap: 'test2',
              plug: 'plug2',
              interface: 'interface1',
              connections: [SnapSlot(snap: 'test3', slot: 'slot3')]),
        ]));
    expect(
        response.slots,
        unorderedEquals([
          SnapSlot(
              snap: 'test2',
              slot: 'slot2',
              interface: 'interface1',
              connections: [SnapPlug(snap: 'test1', plug: 'plug1')]),
          SnapSlot(
              snap: 'test3',
              slot: 'slot3',
              interface: 'interface1',
              connections: [SnapPlug(snap: 'test2', plug: 'plug2')])
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
    expect(
        change.toString(),
        equals(
            "SnapdChange(id: 0, kind: , summary: '', status: , ready: true, err: null, spawnTime: 2022-04-28 13:56:00.000Z, readyTime: null, tasks: [SnapdTask(id: 0, kind: , summary: '', status: , progress: SnapdTaskProgress(label: '', done: 10, total: 10), spawnTime: 1970-01-01 00:00:00.000Z, readyTime: null)], snapNames: [test1, test3])"));
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

  test('find - select: refresh', () async {
    var snapd = MockSnapdServer(storeSnaps: [
      MockSnap(name: 'swordfish'),
      MockSnap(name: 'bear', refreshable: true),
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

    var snaps = await client.find(filter: SnapFindFilter.refresh);
    expect(snaps, hasLength(1));
    expect(snaps[0].name, equals('bear'));
  });

  test('find - select: private', () async {
    var snapd = MockSnapdServer(storeSnaps: [
      MockSnap(name: 'swordfish'),
      MockSnap(name: 'bear'),
      MockSnap(name: 'fishy', private: true)
    ]);
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    var client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    var snaps = await client.find(filter: SnapFindFilter.private);
    expect(snaps, hasLength(1));
    expect(snaps[0].name, equals('fishy'));
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
    var changeId = await client.install('test2');
    var change = await client.getChange(changeId);
    expect(change.ready, isTrue);
    expect(snapd.snaps.keys.toList(), equals(['test2']));
  });

  test('install - channel', () async {
    var snapd = MockSnapdServer(storeSnaps: [MockSnap(name: 'test1')]);
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    var client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    expect(snapd.snaps, hasLength(0));
    var changeId = await client.install('test1', channel: 'CHANNEL');
    var change = await client.getChange(changeId);
    expect(change.ready, isTrue);
    expect(snapd.snaps.keys.toList(), equals(['test1']));
    expect(snapd.snaps['test1']!.installedChannel, equals('CHANNEL'));
  });

  test('install - revision', () async {
    var snapd = MockSnapdServer(storeSnaps: [MockSnap(name: 'test1')]);
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    var client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    expect(snapd.snaps, hasLength(0));
    var changeId = await client.install('test1', revision: '123');
    var change = await client.getChange(changeId);
    expect(change.ready, isTrue);
    expect(snapd.snaps.keys.toList(), equals(['test1']));
    expect(snapd.snaps['test1']!.installedRevision, '123');
  });

  test('install - classic', () async {
    var snapd = MockSnapdServer(storeSnaps: [MockSnap(name: 'test1')]);
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    var client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    expect(snapd.snaps, hasLength(0));
    var changeId = await client.install('test1', classic: true);
    var change = await client.getChange(changeId);
    expect(change.ready, isTrue);
    expect(snapd.snaps.keys.toList(), equals(['test1']));
    expect(snapd.snaps['test1']!.classic, isTrue);
  });

  test('install - dangerous', () async {
    var snapd = MockSnapdServer(storeSnaps: [MockSnap(name: 'test1')]);
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    var client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    expect(snapd.snaps, hasLength(0));
    var changeId = await client.install('test1', dangerous: true);
    var change = await client.getChange(changeId);
    expect(change.ready, isTrue);
    expect(snapd.snaps.keys.toList(), equals(['test1']));
    expect(snapd.snaps['test1']!.dangerous, isTrue);
  });

  test('install - devmode', () async {
    var snapd = MockSnapdServer(storeSnaps: [MockSnap(name: 'test1')]);
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    var client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    expect(snapd.snaps, hasLength(0));
    var changeId = await client.install('test1', devmode: true);
    var change = await client.getChange(changeId);
    expect(change.ready, isTrue);
    expect(snapd.snaps.keys.toList(), equals(['test1']));
    expect(snapd.snaps['test1']!.devmode, isTrue);
  });

  test('install - jailmode', () async {
    var snapd = MockSnapdServer(storeSnaps: [MockSnap(name: 'test1')]);
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    var client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    expect(snapd.snaps, hasLength(0));
    var changeId = await client.install('test1', jailmode: true);
    var change = await client.getChange(changeId);
    expect(change.ready, isTrue);
    expect(snapd.snaps.keys.toList(), equals(['test1']));
    expect(snapd.snaps['test1']!.jailmode, isTrue);
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
    var changeId = await client.remove('test2');
    var change = await client.getChange(changeId);
    expect(change.ready, isTrue);
    expect(snapd.snaps.keys.toList(), equals(['test1', 'test3']));
  });

  test('remove - purge', () async {
    var snapd = MockSnapdServer(snaps: [MockSnap(name: 'test1')]);
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    var client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    expect(snapd.removedSnaps, isEmpty);
    var changeId = await client.remove('test1', purge: true);
    var change = await client.getChange(changeId);
    expect(change.ready, isTrue);
    expect(snapd.removedSnaps['test1']!.purged, isTrue);
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
    var changeId = await client.refresh('test2');
    var change = await client.getChange(changeId);
    expect(change.ready, isTrue);
    expect(snapd.snaps['test1']!.refreshed, isFalse);
    expect(snapd.snaps['test2']!.refreshed, isTrue);
    expect(snapd.snaps['test3']!.refreshed, isFalse);
  });

  test('refresh - channel', () async {
    var snapd = MockSnapdServer(snaps: [MockSnap(name: 'test1')]);
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    var client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    var changeId = await client.refresh('test1', channel: 'latest/edge');
    var change = await client.getChange(changeId);
    expect(change.ready, isTrue);
    expect(snapd.snaps['test1']!.refreshed, isTrue);
    expect(snapd.snaps['test1']!.installedChannel, equals('latest/edge'));
  });

  test('refresh - classic', () async {
    var snapd = MockSnapdServer(snaps: [MockSnap(name: 'test1')]);
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    var client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    var changeId = await client.refresh('test1', classic: true);
    var change = await client.getChange(changeId);
    expect(change.ready, isTrue);
    expect(snapd.snaps['test1']!.refreshed, isTrue);
    expect(snapd.snaps['test1']!.classic, isTrue);
  });

  test('refresh many', () async {
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
    var changeId = await client.refreshMany(['test2', 'test3']);
    var change = await client.getChange(changeId);
    expect(change.ready, isTrue);
    expect(snapd.snaps['test1']!.refreshed, isFalse);
    expect(snapd.snaps['test2']!.refreshed, isTrue);
    expect(snapd.snaps['test3']!.refreshed, isTrue);
  });

  test('enable', () async {
    var snapd =
        MockSnapdServer(snaps: [MockSnap(name: 'test1', enabled: false)]);
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    var client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    expect(snapd.snaps['test1']!.enabled, isFalse);
    var changeId = await client.enable('test1');
    var change = await client.getChange(changeId);
    expect(change.ready, isTrue);
    expect(snapd.snaps['test1']!.enabled, isTrue);
  });

  test('disable', () async {
    var snapd =
        MockSnapdServer(snaps: [MockSnap(name: 'test1', enabled: true)]);
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    var client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    expect(snapd.snaps['test1']!.enabled, isTrue);
    var changeId = await client.disable('test1');
    var change = await client.getChange(changeId);
    expect(change.ready, isTrue);
    expect(snapd.snaps['test1']!.enabled, isFalse);
  });

  test('changes', () async {
    var snapd = MockSnapdServer(changes: [
      MockChange(
          id: '1',
          kind: 'change-kind',
          summary: 'Summary',
          status: 'Doing',
          spawnTime: '2022-06-07T09:21:22.311860727Z',
          readyTime: '2022-06-07T09:21:22.550329668Z',
          error: 'Error',
          ready: false,
          snapNames: ['snap1', 'snap2']),
      MockChange(id: '2', ready: false, snapNames: ['snap2', 'snap3']),
      MockChange(id: '3', ready: true, snapNames: ['snap3', 'snap4'])
    ]);
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    var client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    // Default behaviour is to get in progress changes.
    var changes = await client.getChanges();
    expect(changes, hasLength(2));
    expect(changes[0].id, equals('1'));
    expect(changes[0].kind, equals('change-kind'));
    expect(changes[0].summary, equals('Summary'));
    expect(changes[0].status, equals('Doing'));
    expect(changes[0].spawnTime,
        equals(DateTime.utc(2022, 6, 7, 9, 21, 22, 311, 860)));
    expect(changes[0].readyTime,
        equals(DateTime.utc(2022, 6, 7, 9, 21, 22, 550, 329)));
    expect(changes[0].err, equals('Error'));
    expect(changes[0].ready, isFalse);
    expect(changes[0].snapNames, equals(['snap1', 'snap2']));
    expect(changes[1].id, equals('2'));

    var allChanges = await client.getChanges(filter: SnapdChangeFilter.all);
    expect(allChanges, hasLength(3));
    expect(allChanges[0].id, equals('1'));
    expect(allChanges[1].id, equals('2'));
    expect(allChanges[2].id, equals('3'));

    var inProgressChanges =
        await client.getChanges(filter: SnapdChangeFilter.inProgress);
    expect(inProgressChanges, hasLength(2));
    expect(inProgressChanges[0].id, equals('1'));
    expect(inProgressChanges[1].id, equals('2'));

    var readyChanges = await client.getChanges(filter: SnapdChangeFilter.ready);
    expect(readyChanges, hasLength(1));
    expect(readyChanges[0].id, equals('3'));

    var nameChanges = await client.getChanges(name: 'snap2');
    expect(nameChanges, hasLength(2));
    expect(nameChanges[0].id, equals('1'));
    expect(nameChanges[1].id, equals('2'));
  });
}
