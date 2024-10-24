import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:snapd/snapd.dart';
import 'package:test/test.dart';

class MockApp {
  MockApp({
    required this.name,
    this.active,
    this.commonId,
    this.daemon,
    this.desktopFile,
    this.enabled,
  });

  final String name;
  final bool? active;
  final String? commonId;
  final String? daemon;
  final String? desktopFile;
  final bool? enabled;

  dynamic toJson(String snapName) {
    final object = <dynamic, dynamic>{'name': name, 'snap': snapName};
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

class MockCategory {
  MockCategory({required this.name, this.featured = false});
  final String name;
  final bool featured;

  dynamic toJson(String snapName) =>
      <dynamic, dynamic>{'name': name, 'featured': featured};
}

class MockMedia {
  MockMedia({this.height, this.type, this.url, this.width});
  final int? height;
  final String? type;
  final String? url;
  final int? width;

  dynamic toJson() {
    final object = <dynamic, dynamic>{'type': type, 'url': url};
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
  MockPublisher({
    this.displayName,
    this.id,
    this.username,
    this.validation,
  });
  final String? displayName;
  final String? id;
  final String? username;
  final String? validation;

  dynamic toJson() {
    final object = <dynamic, dynamic>{
      'display-name': displayName,
      'id': id,
      'username': username,
    };
    if (validation != null) {
      object['validation'] = validation;
    }
    return object;
  }
}

class MockChannel {
  MockChannel({
    this.channel,
    this.confinement,
    this.releasedAt = '2000-01-01T00:00:00.000000Z',
    this.revision = '1',
    this.size = 0,
    this.version = '1.0',
  });
  final String? channel;
  final String? confinement;
  final String releasedAt;
  final String revision;
  final int size;
  final String version;

  dynamic toJson() {
    final object = <dynamic, dynamic>{
      'channel': channel,
      'confinement': confinement,
      'released-at': releasedAt,
      'revision': revision,
      'size': size,
      'version': version,
    };
    return object;
  }
}

class MockPlug {
  MockPlug(this.name, this.interface, {this.attributes = const {}});
  final String name;
  final String interface;
  final Map<String, dynamic> attributes;

  MockSnap? slotSnap;
  MockSlot? slot;
}

class MockSlot {
  const MockSlot(this.name, this.interface, {this.attributes = const {}});
  final String name;
  final String interface;
  final Map<String, dynamic> attributes;
}

class MockSnap {
  MockSnap({
    required this.name,
    this.id = '',
    this.revision = '1',
    this.version = '',
    this.channel = '',
    this.contact = '',
    this.description = '',
    this.type = '',
    this.apps = const [],
    this.base,
    this.categories = const [],
    this.channels,
    this.commonIds,
    this.confinement,
    this.devmode = false,
    this.downloadSize,
    this.enabled = true,
    this.hold,
    this.installDate,
    this.installedSize,
    this.jailmode = false,
    this.license,
    this.media,
    this.mountedFrom,
    this.plugs = const [],
    this.private = false,
    this.publisher,
    this.refreshable = false,
    this.slots = const [],
    this.status,
    this.storeUrl,
    this.summary = '',
    this.title = '',
    this.trackingChannel,
    this.tracks,
    this.website,
    this.refreshInhibit,
  });

  final String name;
  final List<MockApp> apps;
  final String? base;
  final List<MockCategory> categories;
  final String? channel;
  final Map<String, MockChannel>? channels;
  final List<String>? commonIds;
  final String? contact;
  final String? confinement;
  final String description;
  final int? downloadSize;
  final String? hold;
  final String? id;
  final String? installDate;
  final int? installedSize;
  final String? license;
  final List<MockMedia>? media;
  final String? mountedFrom;
  final List<MockPlug> plugs;
  final bool private;
  final MockPublisher? publisher;
  final bool refreshable;
  final String? revision;
  final List<MockSlot> slots;
  final String? status;
  final String? storeUrl;
  final String summary;
  final String title;
  final String? trackingChannel;
  final List<String>? tracks;
  final String? type;
  final String? version;
  final String? website;
  final RefreshInhibit? refreshInhibit;

  String? installedChannel;
  String? installedRevision;
  bool classic = false;
  bool dangerous = false;
  bool devmode = false;
  bool jailmode = false;
  bool purged = false;
  bool refreshed = false;
  bool enabled;

  MockPlug? findPlugByName(String name) {
    for (final plug in plugs) {
      if (plug.name == name) {
        return plug;
      }
    }
    return null;
  }

  MockSlot? findSlotByName(String name) {
    for (final slot in slots) {
      if (slot.name == name) {
        return slot;
      }
    }
    return null;
  }

  dynamic toJson() {
    final object = <dynamic, dynamic>{
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
      'version': version,
    };
    if (apps.isNotEmpty) {
      object['apps'] = apps.map((app) => app.toJson(name)).toList();
    }
    if (base != null) {
      object['base'] = base;
    }
    if (categories.isNotEmpty) {
      object['categories'] =
          categories.map((category) => category.toJson(name)).toList();
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
    if (hold != null) {
      object['hold'] = hold;
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
    if (refreshInhibit != null) {
      object['refresh-inhibit'] = refreshInhibit!.toJson();
    }

    return object;
  }
}

class MockSnapDeclaration {
  const MockSnapDeclaration({
    required this.snapName,
    this.type = 'snap-declaration',
    this.authorityId,
    this.revision = 0,
    this.series = 0,
    this.snapId,
    this.publisherId,
    this.timestamp,
    this.signKey,
  });
  final String type;
  final String? authorityId;
  final int revision;
  final int series;
  final String? snapId;
  final String? publisherId;
  final String snapName;
  final String? timestamp;
  final String? signKey;

  @override
  String toString() {
    return '''type: $type
authority-id: $authorityId
revision: $revision
series: $series
snap-id: $snapId
publisher-id: $publisherId
snap-name: $snapName
timestamp: $timestamp
sign-key-sha3-384: $signKey
''';
  }
}

class MockAccount {
  MockAccount({
    required this.id,
    required this.password,
    this.username,
    this.email,
    this.otp,
    this.macaroon,
    this.discharges = const [],
    this.sshKeys = const [],
  });
  final int id;
  final String? username;
  final String? email;
  final String password;
  final String? otp;
  final String? macaroon;
  final List<String> discharges;
  final List<String> sshKeys;
}

class MockTask {
  MockTask({
    required this.id,
    this.kind,
    this.progress,
    this.summary = '',
    this.status,
  });
  final String id;
  final String? kind;
  final MockTaskProgress? progress;
  final String summary;
  final String? status;

  dynamic toJson() {
    final object = <String, dynamic>{
      'id': id,
      'kind': kind,
      'summary': summary,
      'status': status,
    };
    if (progress != null) {
      object['progress'] = {
        'label': progress!.label,
        'done': progress!.done,
        'total': progress!.total,
      };
    }
    return object;
  }
}

class MockTaskProgress {
  MockTaskProgress({this.label = '', this.done = 0, this.total = 0});
  final String label;
  final int done;
  final int total;
}

class MockChange {
  MockChange({
    required this.id,
    this.kind,
    this.summary = '',
    this.status,
    this.tasks = const [],
    this.ready = false,
    this.snapNames = const [],
    this.spawnTime = '2022-04-28T13:56Z',
    this.readyTime,
    this.error,
  });
  final String id;
  final String? kind;
  final String summary;
  final String? status;
  final List<MockTask> tasks;
  final bool ready;
  final List<String> snapNames;
  final String spawnTime;
  final String? readyTime;
  final String? error;

  dynamic toJson() {
    final object = {
      'id': id,
      'kind': kind,
      'summary': summary,
      'status': status,
      'tasks': tasks.map((t) => t.toJson()).toList(),
      'ready': ready,
      'spawn-time': spawnTime,
      'ready-time': readyTime,
      'data': {'snap-names': snapNames},
    };
    if (error != null) {
      object['err'] = error;
    }
    return object;
  }
}

class MockSnapdServer {
  MockSnapdServer({
    this.accounts = const [],
    this.architecture,
    this.buildId,
    this.categories = const [],
    List<MockChange> changes = const [],
    this.confinement,
    this.kernelVersion,
    this.managed = false,
    this.onClassic = false,
    this.promptingEnabled = false,
    List<SnapdNotice> notices = const [],
    this.refreshLast,
    this.refreshNext,
    List<SnapdRule> rules = const [],
    this.series,
    List<MockSnap> snaps = const [],
    List<MockSnap> storeSnaps = const [],
    List<MockSnapDeclaration> snapDeclarations = const [],
    this.systemMode,
    this.version,
  }) {
    for (final change in changes) {
      this.changes.add(change);
    }
    for (final snap in snaps) {
      this.snaps[snap.name] = snap;
    }
    for (final snap in storeSnaps) {
      this.storeSnaps[snap.name] = snap;
    }
    for (final declaration in snapDeclarations) {
      this.snapDeclarations[declaration.snapName] = declaration;
    }
    for (final notice in notices) {
      this.notices.add(notice);
    }
    for (final rule in rules) {
      this.rules.add(rule);
    }
  }
  Directory? _tempDir;
  late String socketPath;
  HttpServer? _server;
  StreamSubscription<HttpRequest>? _requestSubscription;

  final List<MockAccount> accounts;
  final String? architecture;
  final String? buildId;
  final List<String> categories;
  final changes = <MockChange>[];
  final String? confinement;
  final String? kernelVersion;
  final bool managed;
  final bool onClassic;
  bool promptingEnabled;
  final notices = <SnapdNotice>[];
  final String? refreshLast;
  final String? refreshNext;
  final removedSnaps = <String, MockSnap>{};
  final rules = <SnapdRule>[];
  final String? series;
  final snaps = <String, MockSnap>{};
  final storeSnaps = <String, MockSnap>{};
  final snapDeclarations = <String, MockSnapDeclaration>{};
  final String? systemMode;
  final String? version;

  /// Last user agent received.
  String? lastUserAgent;

  /// Last macaroon received.
  String? lastMacaroon;
  List<String>? lastDischarges;

  Future<void> start() async {
    _tempDir = await Directory.systemTemp.createTemp();
    socketPath = '${_tempDir!.path}/snapd.socket';

    _server = await HttpServer.bind(
      InternetAddress(socketPath, type: InternetAddressType.unix),
      0,
    );
    _requestSubscription = _server?.listen(_processRequest);
  }

  Future<void> _processRequest(HttpRequest request) async {
    lastUserAgent = request.headers.value(HttpHeaders.userAgentHeader);

    final authorization =
        request.headers.value(HttpHeaders.authorizationHeader);
    lastMacaroon = null;
    lastDischarges = null;
    if (authorization != null && authorization.startsWith('Macaroon ')) {
      lastDischarges = <String>[];
      for (final value in authorization.substring(9).split(',')) {
        if (value.startsWith('root="')) {
          lastMacaroon = value.substring(6, value.length - 1);
        } else if (value.startsWith('discharge="')) {
          lastDischarges?.add(value.substring(11, value.length - 1));
        }
      }
    }

    final method = request.method;
    final path = request.uri.path;
    if (method == 'GET' && path == '/v2/apps') {
      _processGetApps(request);
    } else if (method == 'GET' && path == '/v2/categories') {
      _processGetCategories(request);
    } else if (method == 'GET' && path == '/v2/connections') {
      _processGetConnections(request);
    } else if (method == 'GET' && path == '/v2/changes') {
      _processGetChanges(request);
    } else if (method == 'GET' && path.startsWith('/v2/changes/')) {
      _processGetChange(request, path.substring('/v2/changes/'.length));
    } else if (method == 'GET' && path == '/v2/notices') {
      _processGetNotices(request);
    } else if (method == 'GET' && path == '/v2/interfaces/requests/rules') {
      _processGetRules(request);
    } else if (method == 'GET' &&
        path.startsWith('/v2/interfaces/requests/rules/')) {
      _processGetRule(
        request,
        path.substring('/v2/interfaces/requests/rules/'.length),
      );
    } else if (method == 'POST' && path == '/v2/interfaces/requests/rules') {
      await _processPostRules(request);
    } else if (method == 'POST' &&
        path.startsWith('/v2/interfaces/requests/rules/')) {
      await _processPostRule(
        request,
        path.substring('/v2/interfaces/requests/rules/'.length),
      );
    } else if (method == 'PUT' && path == '/v2/snaps/system/conf') {
      await _processPutSystemConf(request);
    } else if (method == 'POST' && path.startsWith('/v2/changes/')) {
      await _processPostChange(request, path.substring('/v2/changes/'.length));
    } else if (method == 'GET' && path == '/v2/find') {
      await _processFind(request);
    } else if (method == 'GET' && path.startsWith('/v2/assertions')) {
      await _processAssertions(request);
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
    final parameters = request.uri.queryParameters;
    final names = parameters['names']?.split(',');
    final filter = parameters['select'];
    final apps = [];
    for (final snap in snaps.values) {
      if (names != null && !names.contains(snap.name)) {
        continue;
      }
      for (final app in snap.apps) {
        if (filter == 'service' && app.daemon == null) {
          continue;
        }
        apps.add(app.toJson(snap.name));
      }
    }
    _writeSyncResponse(request.response, apps);
  }

  void _processGetCategories(HttpRequest request) {
    final categoryDetails = [];
    for (final name in categories) {
      categoryDetails.add(<dynamic, dynamic>{'name': name});
    }
    _writeSyncResponse(request.response, categoryDetails);
  }

  void _processGetConnections(HttpRequest request) {
    final parameters = request.uri.queryParameters;
    final snapName = parameters['snap'];
    final interface = parameters['interface'];
    final filter = parameters['select'];
    final established = [];
    final plugs = [];
    final slots = [];
    for (final snap in snaps.values) {
      for (final p in snap.plugs) {
        final plugObject = <String, dynamic>{
          'snap': snap.name,
          'plug': p.name,
          'interface': p.interface,
        };
        if (p.attributes.isNotEmpty) {
          plugObject['attrs'] = p.attributes;
        }

        var hasConnections = false;
        if (p.slot != null) {
          hasConnections = true;

          final s = p.slot!;
          final connectedSlotObject = <String, dynamic>{
            'snap': p.slotSnap!.name,
            'slot': s.name,
          };
          if (s.attributes.isNotEmpty) {
            connectedSlotObject['attributes'] = s.attributes;
          }
          final po = <String, dynamic>{'snap': snap.name, 'plug': p.name};
          if (p.attributes.isNotEmpty) {
            po['attributes'] = p.attributes;
          }
          final establishedObject = {
            'slot': connectedSlotObject,
            'plug': po,
            'interface': p.interface,
          };
          plugObject['connections'] = [
            {'snap': p.slotSnap!.name, 'slot': s.name},
          ];

          if (snapName == null ||
              snap.name == snapName ||
              p.slotSnap!.name == snapName) {
            established.add(establishedObject);
          }
        }

        final matchName = snapName == null ||
            snap.name == snapName ||
            p.slotSnap?.name == snapName;
        final matchInterface = interface == null || p.interface == interface;
        final matchConnection = filter == 'all' || hasConnections;
        if (matchName && matchInterface && matchConnection) {
          plugs.add(plugObject);
        }
      }

      var hasConnections = false;
      for (final s in snap.slots) {
        final slotObject = <String, dynamic>{
          'snap': snap.name,
          'slot': s.name,
          'interface': s.interface,
        };
        if (s.attributes.isNotEmpty) {
          slotObject['attrs'] = s.attributes;
        }

        var connectedPlugNameMatches = false;
        final connections = <Map<String, dynamic>>[];
        for (final snap in snaps.values) {
          for (final p in snap.plugs) {
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

        final matchName = snapName == null ||
            snap.name == snapName ||
            connectedPlugNameMatches;
        final matchInterface = interface == null || s.interface == interface;
        final matchConnection = filter == 'all' || hasConnections;
        if (matchName && matchInterface && matchConnection) {
          slots.add(slotObject);
        }
      }
    }
    final r = {'established': established, 'plugs': plugs, 'slots': slots};
    _writeSyncResponse(request.response, r);
  }

  void _processGetChanges(HttpRequest request) {
    final parameters = request.uri.queryParameters;
    final filter = parameters['select'] ?? 'in-progress';
    final name = parameters['for'];
    final filteredChanges = changes.where((change) {
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
      request.response,
      filteredChanges.map((c) => c.toJson()).toList(),
    );
  }

  void _processGetChange(HttpRequest request, String id) {
    final change = _findChange(id);
    if (change == null) {
      request.response.statusCode = HttpStatus.notFound;
      _writeErrorResponse(request.response, 'not found');
      return;
    }

    _writeSyncResponse(request.response, change.toJson());
  }

  void _processGetNotices(HttpRequest request) {
    final parameters = request.uri.queryParameters;
    final types = parameters['types']?.split(',');
    final keys = parameters['keys']?.split(',');
    final after = DateTime.tryParse(parameters['after'] ?? '');

    final result = notices.where((notice) {
      if (types != null && !types.contains(notice.type.name.toKebabCase())) {
        return false;
      }
      if (keys != null && !keys.contains(notice.key)) {
        return false;
      }
      if (after != null && notice.lastRepeated.isBefore(after)) {
        return false;
      }
      return true;
    });
    _writeSyncResponse(
      request.response,
      result.map((r) => r.toJson()).toList(),
    );
  }

  void _processGetRules(HttpRequest request) {
    final parameters = request.uri.queryParameters;
    final snap = parameters['snap'];
    final interface = parameters['interface'];
    final rules = this.rules.where((rule) {
      if (snap != null && rule.snap != snap) {
        return false;
      }
      if (interface != null && rule.interface != interface) {
        return false;
      }
      return true;
    });

    _writeSyncResponse(
      request.response,
      rules.map((r) => r.toJson()).toList(),
    );
  }

  void _processGetRule(HttpRequest request, String id) {
    final rule = rules.firstWhereOrNull((r) => r.id == id);
    if (rule == null) {
      request.response.statusCode = HttpStatus.notFound;
      _writeErrorResponse(request.response, 'not found');
      return;
    }

    _writeSyncResponse(request.response, rule.toJson());
  }

  Future<void> _processPostRules(HttpRequest request) async {
    final req = await _readJson(request);
    final action = req['action'];

    switch (action) {
      case 'add':
        final ruleMask = req['rule'] as Map<String, dynamic>?;
        if (ruleMask == null) {
          _writeErrorResponse(request.response, 'missing rule');
          return;
        }
        final rule = SnapdRuleMask.fromJson(ruleMask);
        rules.add(
          SnapdRule(
            id: rule.hashCode.toString(),
            timestamp: DateTime.now(),
            snap: rule.snap,
            interface: rule.interface,
            constraints: rule.constraints,
            outcome: rule.outcome,
            lifespan: rule.lifespan,
          ),
        );
        _writeSyncResponse(
          request.response,
          rules.map((r) => r.toJson()).toList(),
        );
        return;
      case 'remove':
        final selector = req['selector'] as Map<String, dynamic>?;
        if (selector == null) {
          _writeErrorResponse(request.response, 'missing selector');
          return;
        }
        final snap = selector['snap'] as String?;
        if (snap == null) {
          _writeErrorResponse(request.response, 'missing snap');
          return;
        }
        final interface = selector['interface'] as String?;

        rules.removeWhere(
          (rule) =>
              rule.snap == snap &&
              (interface == null || rule.interface == interface),
        );
        _writeSyncResponse(
          request.response,
          rules.map((r) => r.toJson()).toList(),
        );

        return;
      default:
        _writeErrorResponse(request.response, 'unknown action');
    }
  }

  Future<void> _processPostRule(HttpRequest request, String id) async {
    final req = await _readJson(request);
    final action = req['action'];

    switch (action) {
      case 'remove':
        final rule = rules.firstWhereOrNull((r) => r.id == id);
        if (rule == null) {
          _writeErrorResponse(request.response, 'not found');
          return;
        }
        rules.removeWhere((rule) => rule.id == id);
        _writeSyncResponse(request.response, rule.toJson());
        return;
      default:
        _writeErrorResponse(request.response, 'unknown action');
    }
  }

  Future<void> _processPutSystemConf(HttpRequest request) async {
    final req = await _readJson(request);
    final promptingEnabled =
        req['experimental']?['apparmor-prompting'] as bool?;

    if (promptingEnabled != null) {
      this.promptingEnabled = promptingEnabled;
    }

    final change = _addChange(
      ready: true,
      tasks: [
        MockTask(id: '0', progress: MockTaskProgress(done: 10, total: 10)),
      ],
    );
    _writeAsyncResponse(request.response, change.id);
  }

  Future<void> _processPostChange(HttpRequest request, String id) async {
    final change = _findChange(id);
    final req = await _readJson(request);
    final action = req['action'];

    if (change == null) {
      request.response.statusCode = HttpStatus.notFound;
      _writeErrorResponse(request.response, 'not found');
      return;
    }
    switch (action) {
      case 'abort':
        changes.removeWhere((c) => c.id == id);
        final abortedChange = MockChange(id: id, ready: true, error: 'aborted');
        _writeSyncResponse(request.response, abortedChange.toJson());
        return;
      default:
        _writeErrorResponse(request.response, 'unknown action');
    }
  }

  Future<void> _processFind(HttpRequest request) async {
    final parameters = request.uri.queryParameters;
    final query = parameters['q'];
    final name = parameters['name'];
    var category = parameters['category'];
    final section = parameters['section'];
    final select = parameters['select'];
    final scope = parameters['scope'];

    if (section != null && category != null) {
      _writeErrorResponse(
        request.response,
        'cannot use section and category together',
      );
      return;
    }
    category ??= section;

    final snaps = [];
    for (final snap in storeSnaps.values) {
      if (name != null && snap.name != name) {
        continue;
      }
      if (query != null && !snap.name.contains(query)) {
        continue;
      }
      if (category != null && !snap.categories.any((c) => c.name == category)) {
        continue;
      }
      if (select == 'refresh' && !snap.refreshable) {
        continue;
      }
      if ((select == 'private') != snap.private) {
        continue;
      }
      if ((scope != 'wide') &&
          !(snap.channels?.entries
                  .any((e) => e.value.channel?.endsWith('/stable') ?? false) ??
              false)) {
        continue;
      }
      snaps.add(snap.toJson());
    }
    _writeSyncResponse(request.response, snaps);
  }

  Future<void> _processAssertions(HttpRequest request) async {
    final subpath = request.uri.path.replaceFirst('/v2/assertions', '');
    final params = request.uri.queryParameters;
    switch (subpath) {
      case '/snap-declaration':
        final declarations = [];
        for (final entry in snapDeclarations.entries) {
          if ((params['snap-id'] != null &&
                  params['snap-id'] == entry.value.snapId) &&
              (params['series'] != null &&
                  params['series'] == entry.value.series.toString())) {
            declarations.add(entry.value.toString());
          }
        }
        _writeSyncResponseRaw(request.response, declarations.join('\n\n'));
        break;
      default:
        throw UnimplementedError('Assertion $subpath is not implemented.');
    }
  }

  Future<void> _processInterfaces(HttpRequest request) async {
    final req = await _readJson(request);

    final action = req['action'];
    final plugs = req['plugs'] ?? [];
    final slots = req['slots'] ?? [];

    String? error;
    var snapNames = <String>[];
    if (action == 'connect') {
      assert(plugs.length == 1);
      assert(slots.length == 1);
      final plugSnap = snaps[plugs[0]['snap']]!;
      final slotSnap = snaps[slots[0]['snap']]!;
      final plug = plugSnap.findPlugByName(plugs[0]['plug'] as String)!;
      final slot = slotSnap.findSlotByName(slots[0]['slot'] as String)!;
      assert(plug.interface == slot.interface);
      plug.slotSnap = slotSnap;
      plug.slot = slot;
      snapNames = [plugSnap.name, slotSnap.name];
    } else if (action == 'disconnect') {
      assert(plugs.length == 1);
      assert(slots.length == 1);
      final plugSnap = snaps[plugs[0]['snap']]!;
      final slotSnap = snaps[slots[0]['snap']]!;
      final plug = plugSnap.findPlugByName(plugs[0]['plug'] as String)!;
      final slot = slotSnap.findSlotByName(slots[0]['slot'] as String)!;
      assert(plug.slotSnap == slotSnap);
      assert(plug.slot == slot);
      plug.slotSnap = null;
      plug.slot = null;
      snapNames = [plugSnap.name, slotSnap.name];
    } else {
      _writeErrorResponse(request.response, 'unknown action');
      return;
    }

    final change = _addChange(
      ready: true,
      tasks: [
        MockTask(id: '0', progress: MockTaskProgress(done: 10, total: 10)),
      ],
      error: error,
      snapNames: snapNames,
    );
    _writeAsyncResponse(request.response, change.id);
  }

  Future<void> _processLogin(HttpRequest request) async {
    final req = await _readJson(request);
    final email = req['email'];
    final password = req['password'];
    final otp = req['otp'];

    final account = _findAccountByEmail(email as String);
    if (account == null || password != account.password) {
      request.response.statusCode = HttpStatus.unauthorized;
      _writeErrorResponse(
        request.response,
        'cannot authenticate to snap store: Provided email/password is not correct.',
        kind: 'login-required',
      );
      return;
    }
    if (account.otp != null) {
      if (otp == null) {
        request.response.statusCode = HttpStatus.unauthorized;
        _writeErrorResponse(
          request.response,
          'two factor authentication required',
          kind: 'two-factor-required',
        );
      } else if (otp != account.otp) {
        request.response.statusCode = HttpStatus.unauthorized;
        _writeErrorResponse(
          request.response,
          'two factor authentication failed',
          kind: 'two-factor-failed',
        );
      }
    }
    final r = {
      'id': account.id,
      'username': account.username,
      'email': account.email,
      'macaroon': account.macaroon,
      'discharges': account.discharges,
      'ssh-keys': account.sshKeys,
    };
    _writeSyncResponse(request.response, r);
  }

  Future<void> _processLogout(HttpRequest request) async {
    final req = await _readJson(request);
    final account = _findAccountById(req['id'] as int);
    if (account == null) {
      request.response.statusCode = HttpStatus.badRequest;
      _writeErrorResponse(request.response, 'not logged in');
      return;
    }
    _writeSyncResponse(request.response, {});
  }

  MockAccount? _findAccountById(int id) {
    for (final account in accounts) {
      if (account.id == id) {
        return account;
      }
    }
    return null;
  }

  MockAccount? _findAccountByEmail(String email) {
    for (final account in accounts) {
      if (account.email == email) {
        return account;
      }
    }
    return null;
  }

  void _processGetSnaps(HttpRequest request) {
    final parameters = request.uri.queryParameters;
    final filter = parameters['select'];
    final filteredSnaps = snaps.values
        .where((s) {
          if (filter == 'refresh-inhibited' && s.refreshInhibit == null) {
            return false;
          } else if (filter == 'enabled' && !s.enabled) {
            return false;
          }
          return true;
        })
        .map((snap) => snap.toJson())
        .toList();

    _writeSyncResponse(
      request.response,
      filteredSnaps,
    );
  }

  Future<void> _processGetSnap(HttpRequest request, String name) async {
    final snap = snaps[name];
    if (snap == null) {
      request.response.statusCode = HttpStatus.notFound;
      _writeErrorResponse(request.response, 'not found');
      return;
    }
    _writeSyncResponse(request.response, snap.toJson());
  }

  Future<void> _processPostSnaps(HttpRequest request) async {
    final req = await _readJson(request);
    final action = req['action'];
    List<String> snapNames;

    String? error;
    switch (action) {
      case 'refresh':
        snapNames = List<String>.from(req['snaps'] as List? ?? []);
        final missingSnaps = <String>[];
        for (final name in snapNames) {
          final snap = snaps[name];
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
      case 'install':
        snapNames = List<String>.from(req['snaps'] as List? ?? []);
        final missingSnaps = <String>[];
        for (final name in snapNames) {
          final snap = storeSnaps[name];
          if (snap == null) {
            missingSnaps.add(name);
          } else {
            snap.classic = req['classic'] as bool? ?? false;
            snaps[snap.name] = snap;
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
    final change = _addChange(
      ready: true,
      tasks: [
        MockTask(id: '0', progress: MockTaskProgress(done: 10, total: 10)),
      ],
      error: error,
      snapNames: snapNames,
    );
    _writeAsyncResponse(request.response, change.id);
  }

  Future<void> _processPostSnap(HttpRequest request, String name) async {
    final req = await _readJson(request);
    final action = req['action'];

    String? error;
    switch (action) {
      case 'install':
        final snapsToInstall = <MockSnap>[];
        if (snaps.containsKey(name)) {
          error = 'Snap $name already installed';
        }
        final snap = storeSnaps[name];
        if (snap == null) {
          error = 'Snap $name not in store';
        } else {
          final channel = req['channel'] as String?;
          if (channel != null) {
            snap.installedChannel = channel;
          }
          final revision = req['revision'] as String?;
          if (revision != null) {
            snap.installedRevision = revision;
          }
          snapsToInstall.add(snap);
        }
        if (error == null) {
          for (final snap in snapsToInstall) {
            snap.classic = req['classic'] as bool? ?? false;
            snap.dangerous = req['dangerous'] as bool? ?? false;
            snap.devmode = req['devmode'] as bool? ?? false;
            snap.jailmode = req['jailmode'] as bool? ?? false;
            snaps[snap.name] = snap;
          }
        }
        break;
      case 'remove':
        final snap = snaps[name];
        if (snap != null) {
          if (req['purge'] == true) {
            snap.purged = true;
          }
          removedSnaps[name] = snap;
          snaps.remove(name);
        } else {
          error = 'Snap $name not installed';
        }
        break;
      case 'refresh':
        final snap = snaps[name];
        final channel = req['channel'] as String?;
        if (snap == null) {
          error = 'Snap $name not installed';
        } else {
          snap.refreshed = true;
          snap.classic = req['classic'] as bool? ?? false;
          if (channel != null) {
            snap.installedChannel = channel;
          }
        }
        break;
      case 'enable':
        final snap = snaps[name];
        if (snap == null) {
          error = 'Snap $name not installed';
        } else {
          snap.enabled = true;
        }
        break;
      case 'disable':
        final snap = snaps[name];
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

    final change = _addChange(
      ready: true,
      tasks: [
        MockTask(id: '0', progress: MockTaskProgress(done: 10, total: 10)),
      ],
      error: error,
      snapNames: [name],
    );
    _writeAsyncResponse(request.response, change.id);
  }

  void _processSystemInfo(HttpRequest request) {
    final refresh = {'last': refreshLast};
    if (refreshNext != null) {
      refresh['next'] = refreshNext;
    }
    _writeSyncResponse(request.response, {
      'architecture': architecture,
      'build-id': buildId,
      'confinement': confinement,
      'features': {
        'apparmor-prompting': {
          'supported': true,
          'enabled': promptingEnabled,
        },
      },
      'kernel-version': kernelVersion,
      'managed': managed,
      'on-classic': onClassic,
      'refresh': refresh,
      'series': series,
      'system-mode': systemMode,
      'version': version,
    });
  }

  MockChange _addChange({
    String? kind,
    String summary = '',
    String? status,
    List<MockTask> tasks = const [],
    bool ready = false,
    String spawnTime = '2022-04-28T13:56Z',
    String? readyTime,
    String? error,
    List<String> snapNames = const [],
  }) {
    final change = MockChange(
      id: changes.length.toString(),
      kind: kind,
      summary: summary,
      status: status,
      tasks: tasks,
      ready: ready,
      spawnTime: spawnTime,
      readyTime: readyTime,
      error: error,
      snapNames: snapNames,
    );
    changes.add(change);
    return change;
  }

  MockChange? _findChange(String id) {
    for (final change in changes) {
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
      'result': result,
    });
  }

  void _writeSyncResponseRaw(HttpResponse response, String result) {
    response.add(utf8.encode(result).toList());
  }

  void _writeAsyncResponse(HttpResponse response, String change) {
    _writeJson(response, {
      'type': 'async',
      'status-code': response.statusCode,
      'status': response.reasonPhrase,
      'change': change,
    });
  }

  void _writeErrorResponse(
    HttpResponse response,
    String message, {
    String? kind,
  }) {
    final result = {'message': message};
    if (kind != null) {
      result['kind'] = kind;
    }
    _writeJson(response, {
      'type': 'error',
      'status-code': response.statusCode,
      'status': response.reasonPhrase,
      'result': result,
    });
  }

  Future<Map<String, dynamic>> _readJson(HttpRequest request) async {
    final text = utf8.decode(await request.expand((e) => e).toList());
    return json.decode(text) as Map<String, dynamic>;
  }

  void _writeJson(HttpResponse response, dynamic value) {
    final data = utf8.encode(json.encode(value));
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
    final snapd = MockSnapdServer(
      architecture: 'amd64',
      buildId: '2a0c915752b1c3c5dd7980220cd246876fb0a510',
      confinement: 'strict',
      kernelVersion: '5.11.0',
      managed: true,
      onClassic: true,
      promptingEnabled: true,
      refreshLast: '2022-05-28T20:10:00Z',
      refreshNext: '2022-05-29T01:18:00Z',
      series: '16',
      systemMode: 'run',
      version: '2.49',
    );
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    final client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    final info = await client.systemInfo();
    expect(info.architecture, equals('amd64'));
    expect(info.buildId, equals('2a0c915752b1c3c5dd7980220cd246876fb0a510'));
    expect(info.confinement, equals(SnapConfinement.strict));
    expect(info.kernelVersion, equals('5.11.0'));
    expect(info.features?['apparmor-prompting']?['supported'], isTrue);
    expect(info.managed, isTrue);
    expect(info.onClassic, isTrue);
    expect(info.refresh.last, equals(DateTime.utc(2022, 5, 28, 20, 10)));
    expect(info.refresh.next, equals(DateTime.utc(2022, 5, 29, 1, 18)));
    expect(info.series, equals('16'));
    expect(info.systemMode, equals('run'));
    expect(info.version, equals('2.49'));
  });

  test('user agent', () async {
    final snapd = MockSnapdServer();
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    final client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    client.userAgent = 'test-agent 1.0';
    await client.systemInfo();
    expect(snapd.lastUserAgent, equals('test-agent 1.0'));
  });

  test('authorization', () async {
    final snapd = MockSnapdServer();
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    final client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });
    client.setAuthorization('macaroon', ['discharge1', 'discharge2']);

    await client.systemInfo();
    expect(snapd.lastMacaroon, equals('macaroon'));
    expect(snapd.lastDischarges, equals(['discharge1', 'discharge2']));
  });

  test('load authorization', () async {
    final snapd = MockSnapdServer();
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    final dir = await Directory.systemTemp.createTemp('snapd-dart');
    addTearDown(() async {
      await dir.delete(recursive: true);
    });
    final path = '${dir.path}/auth.json';
    final file = File(path);
    await file.writeAsString(
      '{"macaroon":"macaroon","discharges":["discharge1","discharge2"]}',
    );

    final client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });
    await client.loadAuthorization(path: path);

    await client.systemInfo();
    expect(snapd.lastMacaroon, equals('macaroon'));
    expect(snapd.lastDischarges, equals(['discharge1', 'discharge2']));
  });

  test('login', () async {
    final snapd = MockSnapdServer(
      accounts: [
        MockAccount(
          id: 42,
          username: 'admin',
          email: 'admin@example.com',
          password: 'password',
          macaroon: 'macaroon',
          discharges: ['discharge1', 'discharge2'],
          sshKeys: ['key1', 'key2'],
        ),
      ],
    );
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    final client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    final response = await client.login('admin@example.com', 'password');
    expect(response.id, equals(42));
    expect(response.username, equals('admin'));
    expect(response.email, equals('admin@example.com'));
    expect(response.macaroon, equals('macaroon'));
    expect(response.discharges, equals(['discharge1', 'discharge2']));
    expect(response.sshKeys, equals(['key1', 'key2']));
  });

  test('login - otp', () async {
    final snapd = MockSnapdServer(
      accounts: [
        MockAccount(
          id: 42,
          email: 'admin@example.com',
          password: 'password',
          otp: '1234',
        ),
      ],
    );
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    final client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    await expectLater(
      () => client.login('unknown@example.com', 'password'),
      throwsA(isA<SnapdException>()),
    );
    await expectLater(
      () => client.login('unknown@example.com', 'password', otp: '0000'),
      throwsA(isA<SnapdException>()),
    );
    final response =
        await client.login('admin@example.com', 'password', otp: '1234');
    expect(response.id, equals(42));
  });

  test('login - unknown email', () async {
    final snapd = MockSnapdServer();
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    final client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    expect(
      () => client.login('unknown@example.com', 'password'),
      throwsA(isA<SnapdException>()),
    );
  });

  test('login - incorrect password', () async {
    final snapd = MockSnapdServer(
      accounts: [
        MockAccount(id: 42, email: 'admin@example.com', password: 'secret'),
      ],
    );
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    final client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    expect(
      () => client.login('admin@example.com', 'password'),
      throwsA(isA<SnapdException>()),
    );
  });

  test('logout', () async {
    final snapd = MockSnapdServer(
      accounts: [
        MockAccount(id: 42, email: 'admin@example.com', password: 'password'),
      ],
    );
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    final client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    final response = await client.login('admin@example.com', 'password');
    await client.logout(response.id);
  });

  test('snaps', () async {
    final snapd = MockSnapdServer(
      snaps: [
        MockSnap(name: 'snap1'),
        MockSnap(name: 'snap2'),
        MockSnap(name: 'snap3'),
      ],
    );
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    final client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    final snaps = await client.getSnaps();
    expect(snaps, hasLength(3));
    expect(snaps[0].name, equals('snap1'));
    expect(snaps[1].name, equals('snap2'));
    expect(snaps[2].name, equals('snap3'));
  });

  test('snaps with filter', () async {
    final snapd = MockSnapdServer(
      snaps: [
        MockSnap(name: 'snap1'),
        MockSnap(
          name: 'snap2',
          refreshInhibit: RefreshInhibit(proceedTime: DateTime(1970)),
        ),
        MockSnap(name: 'snap3'),
      ],
    );
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    final client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    final snaps = await client.getSnaps(filter: SnapsFilter.refreshInhibited);
    expect(snaps, hasLength(1));
    expect(snaps[0].name, equals('snap2'));
    expect(
      snaps[0].refreshInhibit,
      equals(RefreshInhibit(proceedTime: DateTime(1970))),
    );
  });

  test('snap', () async {
    final snapd = MockSnapdServer(
      snaps: [
        MockSnap(name: 'snap1'),
        MockSnap(name: 'snap2'),
        MockSnap(name: 'snap3'),
      ],
    );
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    final client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    final snap = await client.getSnap('snap2');
    expect(snap.name, equals('snap2'));
  });

  test('apps', () async {
    final snapd = MockSnapdServer(
      snaps: [
        MockSnap(name: 'snap1', apps: [MockApp(name: 'app1')]),
        MockSnap(
          name: 'snap2',
          apps: [MockApp(name: 'app2a'), MockApp(name: 'app2b')],
        ),
      ],
    );
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    final client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    final apps = await client.getApps();
    expect(apps, hasLength(3));
    expect(apps[0].name, equals('app1'));
    expect(apps[1].name, equals('app2a'));
    expect(apps[2].name, equals('app2b'));
  });

  test('apps - services', () async {
    final snapd = MockSnapdServer(
      snaps: [
        MockSnap(name: 'snap1', apps: [MockApp(name: 'app1')]),
        MockSnap(
          name: 'snap2',
          apps: [
            MockApp(name: 'app2a', daemon: 'simple'),
            MockApp(name: 'app2b'),
          ],
        ),
      ],
    );
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    final client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    final apps = await client.getApps(filter: SnapdAppFilter.service);
    expect(apps, hasLength(1));
    expect(apps[0].name, equals('app2a'));
  });

  test('apps - names', () async {
    final snapd = MockSnapdServer(
      snaps: [
        MockSnap(name: 'snap1', apps: [MockApp(name: 'app1')]),
        MockSnap(name: 'snap2', apps: [MockApp(name: 'app2')]),
        MockSnap(name: 'snap3', apps: [MockApp(name: 'app3')]),
      ],
    );
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    final client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    final apps = await client.getApps(names: ['snap1', 'snap3']);
    expect(apps, hasLength(2));
    expect(apps[0].name, equals('app1'));
    expect(apps[1].name, equals('app3'));
  });

  test('snap properties', () async {
    final snapd = MockSnapdServer(
      snaps: [
        MockSnap(
          description: 'Hello\nSalut\nHola',
          id: 'QRDEfjn4WJYnm0FzDKwqqRZZI77awQEV',
          name: 'hello',
          revision: '42',
          summary: 'Hello is an app',
          title: 'Hello',
          type: 'app',
          version: '1.2',
        ),
      ],
    );
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    final client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    final snaps = await client.getSnaps();
    expect(snaps, hasLength(1));
    final snap = snaps[0];
    const expectedSnap = Snap(
      description: 'Hello\nSalut\nHola',
      id: 'QRDEfjn4WJYnm0FzDKwqqRZZI77awQEV',
      name: 'hello',
      revision: 42,
      channel: '',
      summary: 'Hello is an app',
      title: 'Hello',
      type: 'app',
      version: '1.2',
    );
    expect(snap, equals(expectedSnap));
    expect(snap.hashCode, equals(expectedSnap.hashCode));
    expect(snap.toJson(), equals(expectedSnap.toJson()));
    expect(Snap.fromJson(snap.toJson()), equals(snap));
  });

  test('snap optional properties', () async {
    final snapd = MockSnapdServer(
      snaps: [
        MockSnap(
          apps: [MockApp(name: 'hello1'), MockApp(name: 'hello2')],
          base: 'core20',
          categories: [
            MockCategory(name: 'category1'),
            MockCategory(name: 'category2', featured: true),
          ],
          channel: 'stable',
          channels: {
            'latest/stable': MockChannel(
              channel: 'latest/stable',
              version: '1.2',
              revision: '42',
              size: 123456,
              confinement: 'strict',
              releasedAt: '2022-05-02T21:24:15.330374Z',
            ),
            'insider/stable': MockChannel(
              channel: 'insider/stable',
              version: '1.3',
              revision: '43',
              size: 888888,
              confinement: 'classic',
              releasedAt: '2022-04-26T12:54:32.578086Z',
            ),
          },
          commonIds: ['com.example.Hello', 'com.example.Hallo'],
          contact: 'hello@example.com',
          confinement: 'classic',
          description: 'Hello\nSalut\nHola',
          devmode: true,
          downloadSize: 123456,
          hold: '2315-06-19T13:00:37.186885671Z',
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
              height: 768,
            ),
          ],
          mountedFrom: '/var/lib/snapd/snaps/hello_1.2.snap',
          name: 'hello',
          private: true,
          publisher: MockPublisher(
            id: 'JvtzsxbsHivZLdvzrt0iqW529riGLfXJ',
            username: 'publisher',
            displayName: 'Publisher',
            validation: 'verified',
          ),
          revision: '42',
          status: 'available',
          storeUrl: 'https://snapcraft.io/hello',
          summary: 'Hello is an app',
          title: 'Hello',
          trackingChannel: 'latest/stable',
          tracks: ['latest', 'insider'],
          type: 'app',
          version: '1.2',
          website: 'http://example.com/hello',
          refreshInhibit: RefreshInhibit(proceedTime: DateTime(1990, 12, 31)),
        ),
      ],
    );
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    final client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    final snaps = await client.getSnaps();
    expect(snaps, hasLength(1));
    final snap = snaps[0];
    final expectedSnap = Snap(
      apps: const [
        SnapApp(snap: 'hello', name: 'hello1'),
        SnapApp(snap: 'hello', name: 'hello2'),
      ],
      base: 'core20',
      categories: const [
        SnapCategory(name: 'category1'),
        SnapCategory(name: 'category2', featured: true),
      ],
      channel: 'stable',
      channels: {
        'latest/stable': SnapChannel(
          confinement: SnapConfinement.strict,
          releasedAt: DateTime.utc(2022, 5, 2, 21, 24, 15, 330, 374),
          revision: '42',
          size: 123456,
          version: '1.2',
        ),
        'insider/stable': SnapChannel(
          confinement: SnapConfinement.classic,
          releasedAt: DateTime.utc(2022, 4, 26, 12, 54, 32, 578, 86),
          revision: '43',
          size: 888888,
          version: '1.3',
        ),
      },
      commonIds: const ['com.example.Hello', 'com.example.Hallo'],
      contact: 'hello@example.com',
      confinement: SnapConfinement.classic,
      description: 'Hello\nSalut\nHola',
      devmode: true,
      downloadSize: 123456,
      hold: DateTime.utc(2315, 6, 19, 13, 0, 37, 186, 885),
      id: 'QRDEfjn4WJYnm0FzDKwqqRZZI77awQEV',
      installDate: DateTime.utc(2022, 5, 13, 9, 51, 3, 920, 998),
      installedSize: 654321,
      jailmode: true,
      license: 'GPL-3',
      media: const [
        SnapMedia(type: 'icon', url: 'http://example.com/hello-icon.png'),
        SnapMedia(
          type: 'screenshot',
          url: 'http://example.com/hello-screenshot.jpg',
          width: 1024,
          height: 768,
        ),
      ],
      mountedFrom: '/var/lib/snapd/snaps/hello_1.2.snap',
      name: 'hello',
      private: true,
      publisher: const SnapPublisher(
        id: 'JvtzsxbsHivZLdvzrt0iqW529riGLfXJ',
        username: 'publisher',
        displayName: 'Publisher',
        validation: 'verified',
      ),
      revision: 42,
      status: SnapStatus.available,
      storeUrl: 'https://snapcraft.io/hello',
      summary: 'Hello is an app',
      title: 'Hello',
      trackingChannel: 'latest/stable',
      tracks: const ['latest', 'insider'],
      type: 'app',
      version: '1.2',
      website: 'http://example.com/hello',
      refreshInhibit: RefreshInhibit(proceedTime: DateTime(1990, 12, 31)),
    );
    expect(snap, equals(expectedSnap));
    expect(snap.hashCode, equals(expectedSnap.hashCode));
    expect(snap.toJson(), equals(expectedSnap.toJson()));
    expect(Snap.fromJson(snap.toJson()), equals(snap));
  });

  test('categories', () async {
    final snapd = MockSnapdServer(categories: ['category1', 'category2']);
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    final client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    final categories = await client.getCategories();
    expect(categories, hasLength(2));
    expect(categories[0].name, equals('category1'));
    expect(categories[1].name, equals('category2'));
  });

  test('connections', () async {
    final plug1 = MockPlug('plug1', 'interface1');
    const slot1 = MockSlot('slot1', 'interface1');
    final plug2 = MockPlug('plug2', 'interface1');
    const slot2 = MockSlot('slot2', 'interface1');
    final plug3 = MockPlug('plug3', 'interface1');
    const slot3 = MockSlot('slot3', 'interface1');
    final snap1 = MockSnap(name: 'test1', plugs: [plug1], slots: [slot1]);
    final snap2 = MockSnap(name: 'test2', plugs: [plug2], slots: [slot2]);
    final snap3 = MockSnap(name: 'test3', plugs: [plug3], slots: [slot3]);

    plug1.slotSnap = snap3;
    plug1.slot = slot3;

    final snapd = MockSnapdServer(snaps: [snap1, snap2, snap3]);
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    final client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    final response = await client.getConnections();
    expect(
      response.established,
      unorderedEquals([
        const SnapConnection(
          slot: SnapSlot(snap: 'test3', slot: 'slot3'),
          plug: SnapPlug(snap: 'test1', plug: 'plug1'),
          interface: 'interface1',
        ),
      ]),
    );
    expect(
      response.plugs,
      unorderedEquals([
        const SnapPlug(
          snap: 'test1',
          plug: 'plug1',
          interface: 'interface1',
          connections: [SnapSlot(snap: 'test3', slot: 'slot3')],
        ),
      ]),
    );
    expect(
      response.slots,
      unorderedEquals([
        const SnapSlot(
          snap: 'test3',
          slot: 'slot3',
          interface: 'interface1',
          connections: [SnapPlug(snap: 'test1', plug: 'plug1')],
        ),
      ]),
    );
  });

  test('connection attributes', () async {
    final plug1 = MockPlug(
      'plug1',
      'interface1',
      attributes: {'plug-attribute1': 'plug-attribute-value1'},
    );
    const slot1 = MockSlot(
      'slot1',
      'interface1',
      attributes: {'slot-attribute1': 'slot-attribute-value1'},
    );
    final snap1 = MockSnap(name: 'test1', plugs: [plug1]);
    final snap2 = MockSnap(name: 'test2', slots: [slot1]);

    final snapd = MockSnapdServer(snaps: [snap1, snap2]);
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    final client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    final response =
        await client.getConnections(filter: SnapdConnectionFilter.all);
    expect(
      response.plugs,
      unorderedEquals([
        const SnapPlug(
          snap: 'test1',
          plug: 'plug1',
          interface: 'interface1',
          attributes: {'plug-attribute1': 'plug-attribute-value1'},
        ),
      ]),
    );
    expect(
      response.slots,
      unorderedEquals([
        const SnapSlot(
          snap: 'test2',
          slot: 'slot1',
          interface: 'interface1',
          attributes: {'slot-attribute1': 'slot-attribute-value1'},
        ),
      ]),
    );
  });

  test('connections - all', () async {
    final plug1 = MockPlug('plug1', 'interface1');
    const slot1 = MockSlot('slot1', 'interface1');
    final plug2 = MockPlug('plug2', 'interface1');
    const slot2 = MockSlot('slot2', 'interface1');
    final plug3 = MockPlug('plug3', 'interface1');
    const slot3 = MockSlot('slot3', 'interface1');
    final snap1 = MockSnap(name: 'test1', plugs: [plug1], slots: [slot1]);
    final snap2 = MockSnap(name: 'test2', plugs: [plug2], slots: [slot2]);
    final snap3 = MockSnap(name: 'test3', plugs: [plug3], slots: [slot3]);

    plug1.slotSnap = snap3;
    plug1.slot = slot3;

    final snapd = MockSnapdServer(snaps: [snap1, snap2, snap3]);
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    final client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    final response =
        await client.getConnections(filter: SnapdConnectionFilter.all);
    expect(
      response.established,
      unorderedEquals([
        const SnapConnection(
          slot: SnapSlot(snap: 'test3', slot: 'slot3'),
          plug: SnapPlug(snap: 'test1', plug: 'plug1'),
          interface: 'interface1',
        ),
      ]),
    );
    expect(
      response.plugs,
      unorderedEquals([
        const SnapPlug(
          snap: 'test1',
          plug: 'plug1',
          interface: 'interface1',
          connections: [SnapSlot(snap: 'test3', slot: 'slot3')],
        ),
        const SnapPlug(snap: 'test2', plug: 'plug2', interface: 'interface1'),
        const SnapPlug(snap: 'test3', plug: 'plug3', interface: 'interface1'),
      ]),
    );
    expect(
      response.slots,
      unorderedEquals([
        const SnapSlot(snap: 'test1', slot: 'slot1', interface: 'interface1'),
        const SnapSlot(snap: 'test2', slot: 'slot2', interface: 'interface1'),
        const SnapSlot(
          snap: 'test3',
          slot: 'slot3',
          interface: 'interface1',
          connections: [SnapPlug(snap: 'test1', plug: 'plug1')],
        ),
      ]),
    );
  });

  test('connections - snap name', () async {
    final plug1 = MockPlug('plug1', 'interface1');
    const slot1 = MockSlot('slot1', 'interface1');
    final plug2 = MockPlug('plug2', 'interface1');
    const slot2 = MockSlot('slot2', 'interface1');
    final plug3 = MockPlug('plug3', 'interface1');
    const slot3 = MockSlot('slot3', 'interface1');
    final snap1 = MockSnap(name: 'test1', slots: [slot1], plugs: [plug1]);
    final snap2 = MockSnap(name: 'test2', slots: [slot2], plugs: [plug2]);
    final snap3 = MockSnap(name: 'test3', slots: [slot3], plugs: [plug3]);

    // Connect in a loop
    plug1.slotSnap = snap2;
    plug1.slot = slot2;
    plug2.slotSnap = snap3;
    plug2.slot = slot3;
    plug3.slotSnap = snap1;
    plug3.slot = slot1;

    final snapd = MockSnapdServer(snaps: [snap1, snap2, snap3]);
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    final client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    final response = await client.getConnections(snap: 'test2');
    expect(
      response.established,
      unorderedEquals([
        const SnapConnection(
          slot: SnapSlot(snap: 'test2', slot: 'slot2'),
          plug: SnapPlug(snap: 'test1', plug: 'plug1'),
          interface: 'interface1',
        ),
        const SnapConnection(
          slot: SnapSlot(snap: 'test3', slot: 'slot3'),
          plug: SnapPlug(snap: 'test2', plug: 'plug2'),
          interface: 'interface1',
        ),
      ]),
    );
    expect(
      response.plugs,
      unorderedEquals([
        const SnapPlug(
          snap: 'test1',
          plug: 'plug1',
          interface: 'interface1',
          connections: [SnapSlot(snap: 'test2', slot: 'slot2')],
        ),
        const SnapPlug(
          snap: 'test2',
          plug: 'plug2',
          interface: 'interface1',
          connections: [SnapSlot(snap: 'test3', slot: 'slot3')],
        ),
      ]),
    );
    expect(
      response.slots,
      unorderedEquals([
        const SnapSlot(
          snap: 'test2',
          slot: 'slot2',
          interface: 'interface1',
          connections: [SnapPlug(snap: 'test1', plug: 'plug1')],
        ),
        const SnapSlot(
          snap: 'test3',
          slot: 'slot3',
          interface: 'interface1',
          connections: [SnapPlug(snap: 'test2', plug: 'plug2')],
        ),
      ]),
    );
  });

  test('connections - interface name', () async {
    final plug1 = MockPlug('plug1', 'interface1');
    const slot1 = MockSlot('slot1', 'interface2');
    final plug2 = MockPlug('plug2', 'interface2');
    const slot2 = MockSlot('slot2', 'interface1');
    final snap1 = MockSnap(name: 'test1', slots: [slot1], plugs: [plug1]);
    final snap2 = MockSnap(name: 'test2', slots: [slot2], plugs: [plug2]);

    plug1.slotSnap = snap2;
    plug1.slot = slot2;
    plug2.slotSnap = snap1;
    plug2.slot = slot1;

    final snapd = MockSnapdServer(snaps: [snap1, snap2]);
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    final client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    final response = await client.getConnections(interface: 'interface2');
    expect(
      response.plugs,
      unorderedEquals([
        const SnapPlug(
          snap: 'test2',
          plug: 'plug2',
          interface: 'interface2',
          connections: [SnapSlot(snap: 'test1', slot: 'slot1')],
        ),
      ]),
    );
    expect(
      response.slots,
      unorderedEquals([
        const SnapSlot(
          snap: 'test1',
          slot: 'slot1',
          interface: 'interface2',
          connections: [SnapPlug(snap: 'test2', plug: 'plug2')],
        ),
      ]),
    );
  });

  test('connect', () async {
    final plug1 = MockPlug('plug1', 'interface1');
    const slot3 = MockSlot('slot3', 'interface1');
    final snap1 = MockSnap(name: 'test1', plugs: [plug1]);
    final snap2 =
        MockSnap(name: 'test2', slots: [const MockSlot('slot2', 'interface1')]);
    final snap3 = MockSnap(
      name: 'test3',
      plugs: [MockPlug('plug3', 'interface1')],
      slots: [slot3],
    );

    final snapd = MockSnapdServer(snaps: [snap1, snap2, snap3]);
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    final client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    expect(plug1.slotSnap, isNull);
    expect(plug1.slot, isNull);
    final changeId = await client.connect('test1', 'plug1', 'test3', 'slot3');
    final change = await client.getChange(changeId);
    expect(change.ready, isTrue);
    expect(plug1.slotSnap, equals(snap3));
    expect(plug1.slot, equals(slot3));
  });

  test('disconnect', () async {
    final plug1 = MockPlug('plug1', 'interface1');
    const slot3 = MockSlot('slot3', 'interface1');
    final snap1 = MockSnap(name: 'test1', plugs: [plug1]);
    final snap2 =
        MockSnap(name: 'test2', slots: [const MockSlot('slot2', 'interface1')]);
    final snap3 = MockSnap(
      name: 'test3',
      plugs: [MockPlug('plug3', 'interface1')],
      slots: [slot3],
    );

    plug1.slotSnap = snap3;
    plug1.slot = slot3;

    final snapd = MockSnapdServer(snaps: [snap1, snap2, snap3]);
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    final client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    expect(plug1.slotSnap, equals(snap3));
    expect(plug1.slot, equals(slot3));
    final changeId =
        await client.disconnect('test1', 'plug1', 'test3', 'slot3');
    final change = await client.getChange(changeId);
    expect(change.ready, isTrue);
    expect(plug1.slotSnap, isNull);
    expect(plug1.slot, isNull);
  });

  test('find', () async {
    final snapd = MockSnapdServer(
      storeSnaps: [
        MockSnap(
          name: 'swordfish',
          channels: {'latest/stable': MockChannel(channel: 'latest/stable')},
        ),
        MockSnap(
          name: 'bear',
          channels: {'latest/stable': MockChannel(channel: 'latest/stable')},
        ),
        MockSnap(
          name: 'fishy',
          channels: {'latest/stable': MockChannel(channel: 'latest/stable')},
        ),
        MockSnap(
          name: 'hidden',
          channels: {'latest/edge': MockChannel(channel: 'latest/edge')},
        ),
      ],
    );
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    final client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    final snaps = await client.find();
    expect(snaps, hasLength(3));
    expect(snaps[0].name, equals('swordfish'));
    expect(snaps[1].name, equals('bear'));
    expect(snaps[2].name, equals('fishy'));
  });

  test('find - query', () async {
    final snapd = MockSnapdServer(
      storeSnaps: [
        MockSnap(
          name: 'swordfish',
          channels: {'latest/stable': MockChannel(channel: 'latest/stable')},
        ),
        MockSnap(
          name: 'bear',
          channels: {'latest/stable': MockChannel(channel: 'latest/stable')},
        ),
        MockSnap(
          name: 'fishy',
          channels: {'latest/stable': MockChannel(channel: 'latest/stable')},
        ),
      ],
    );
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    final client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    final snaps = await client.find(query: 'fish');
    expect(snaps, hasLength(2));
    expect(snaps[0].name, equals('swordfish'));
    expect(snaps[1].name, equals('fishy'));
  });

  test('find - name', () async {
    final snapd = MockSnapdServer(
      storeSnaps: [
        MockSnap(
          name: 'swordfish',
          channels: {
            'latest/stable': MockChannel(channel: 'latest/stable'),
          },
        ),
        MockSnap(
          name: 'bear',
          channels: {
            'latest/stable': MockChannel(channel: 'latest/stable'),
          },
        ),
        MockSnap(
          name: 'fishy',
          channels: {
            'latest/stable': MockChannel(channel: 'latest/stable'),
          },
        ),
      ],
    );
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    final client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    final snaps = await client.find(name: 'fishy');
    expect(snaps, hasLength(1));
    expect(snaps[0].name, equals('fishy'));
  });

  test('find - category', () async {
    final snapd = MockSnapdServer(
      storeSnaps: [
        MockSnap(
          name: 'swordfish',
          categories: [MockCategory(name: 'sharp')],
          channels: {'latest/stable': MockChannel(channel: 'latest/stable')},
        ),
        MockSnap(
          name: 'bear',
          categories: [MockCategory(name: 'soft')],
          channels: {'latest/stable': MockChannel(channel: 'latest/stable')},
        ),
        MockSnap(
          name: 'fishy',
          categories: [MockCategory(name: 'soft')],
          channels: {'latest/stable': MockChannel(channel: 'latest/stable')},
        ),
      ],
    );
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    final client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    final snaps = await client.find(category: 'soft');
    expect(snaps, hasLength(2));
    expect(snaps[0].name, equals('bear'));
    expect(snaps[1].name, equals('fishy'));
  });

  test('find - section', () async {
    final snapd = MockSnapdServer(
      storeSnaps: [
        MockSnap(
          name: 'swordfish',
          categories: [MockCategory(name: 'sharp')],
          channels: {'latest/stable': MockChannel(channel: 'latest/stable')},
        ),
        MockSnap(
          name: 'bear',
          categories: [MockCategory(name: 'soft')],
          channels: {'latest/stable': MockChannel(channel: 'latest/stable')},
        ),
        MockSnap(
          name: 'fishy',
          categories: [MockCategory(name: 'soft')],
          channels: {'latest/stable': MockChannel(channel: 'latest/stable')},
        ),
      ],
    );
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    final client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    // ignore: deprecated_member_use_from_same_package
    final snaps = await client.find(section: 'soft');
    expect(snaps, hasLength(2));
    expect(snaps[0].name, equals('bear'));
    expect(snaps[1].name, equals('fishy'));
  });

  test('find - select: refresh', () async {
    final snapd = MockSnapdServer(
      storeSnaps: [
        MockSnap(
          name: 'swordfish',
          channels: {
            'latest/stable': MockChannel(channel: 'latest/stable'),
          },
        ),
        MockSnap(
          name: 'bear',
          refreshable: true,
          channels: {
            'latest/stable': MockChannel(channel: 'latest/stable'),
          },
        ),
        MockSnap(
          name: 'fishy',
          channels: {
            'latest/stable': MockChannel(channel: 'latest/stable'),
          },
        ),
      ],
    );
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    final client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    final snaps = await client.find(filter: SnapFindFilter.refresh);
    expect(snaps, hasLength(1));
    expect(snaps[0].name, equals('bear'));
  });

  test('find - select: private', () async {
    final snapd = MockSnapdServer(
      storeSnaps: [
        MockSnap(
          name: 'swordfish',
          channels: {'latest/stable': MockChannel(channel: 'latest/stable')},
        ),
        MockSnap(
          name: 'bear',
          channels: {'latest/stable': MockChannel(channel: 'latest/stable')},
        ),
        MockSnap(
          name: 'fishy',
          private: true,
          channels: {'latest/stable': MockChannel(channel: 'latest/stable')},
        ),
      ],
    );
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    final client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    final snaps = await client.find(filter: SnapFindFilter.private);
    expect(snaps, hasLength(1));
    expect(snaps[0].name, equals('fishy'));
  });

  test('find - scope: wide', () async {
    final snapd = MockSnapdServer(
      storeSnaps: [
        MockSnap(
          name: 'unstable',
          channels: {'latest/edge': MockChannel(channel: 'latest/edge')},
        ),
      ],
    );
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    final client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    final snaps = await client.find(scope: SnapFindScope.wide);
    expect(snaps, hasLength(1));
    expect(snaps[0].name, equals('unstable'));
  });

  test('assertions', () async {
    final snapd = MockSnapdServer(
      storeSnaps: [
        MockSnap(
          name: 'swordfish',
          id: 'swordfishId',
          channels: {
            'latest/stable': MockChannel(
              channel: 'latest/stable',
            ),
          },
        ),
        MockSnap(
          name: 'bear',
          id: 'bearId',
          channels: {
            'latest/stable': MockChannel(channel: 'latest/stable'),
          },
        ),
        MockSnap(
          name: 'fishy',
          // no ID
          channels: {
            'latest/stable': MockChannel(
              channel: 'latest/stable',
            ),
          },
        ),
      ],
      snapDeclarations: [
        const MockSnapDeclaration(
          series: 16,
          snapName: 'swordfish',
          snapId: 'swordfishId',
        ),
        const MockSnapDeclaration(
          series: 16,
          snapName: 'bear',
          snapId: 'bearId',
        ),
        const MockSnapDeclaration(series: 16, snapName: 'fishy'),
      ],
    );
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    final client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    final assertion = await client.getAssertions(
      assertion: 'snap-declaration',
      params: {
        'series': '16',
        'remote': 'true',
        'snap-id': 'bearId',
      },
    );
    expect(assertion, isNotNull);
    expect(assertion, isA<Map<String, Object?>>());
    expect(assertion.toString().contains('bearId'), isTrue);
  });

  test('install', () async {
    final snapd = MockSnapdServer(
      storeSnaps: [
        MockSnap(name: 'test1'),
        MockSnap(name: 'test2'),
        MockSnap(name: 'test3'),
      ],
    );
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    final client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    expect(snapd.snaps, hasLength(0));
    final changeId = await client.install('test2');
    final change = await client.getChange(changeId);
    expect(change.ready, isTrue);
    expect(snapd.snaps.keys.toList(), equals(['test2']));
  });

  test('install - channel', () async {
    final snapd = MockSnapdServer(storeSnaps: [MockSnap(name: 'test1')]);
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    final client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    expect(snapd.snaps, hasLength(0));
    final changeId = await client.install('test1', channel: 'CHANNEL');
    final change = await client.getChange(changeId);
    expect(change.ready, isTrue);
    expect(snapd.snaps.keys.toList(), equals(['test1']));
    expect(snapd.snaps['test1']!.installedChannel, equals('CHANNEL'));
  });

  test('install - revision', () async {
    final snapd = MockSnapdServer(storeSnaps: [MockSnap(name: 'test1')]);
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    final client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    expect(snapd.snaps, hasLength(0));
    final changeId = await client.install('test1', revision: '123');
    final change = await client.getChange(changeId);
    expect(change.ready, isTrue);
    expect(snapd.snaps.keys.toList(), equals(['test1']));
    expect(snapd.snaps['test1']!.installedRevision, '123');
  });

  test('install - classic', () async {
    final snapd = MockSnapdServer(storeSnaps: [MockSnap(name: 'test1')]);
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    final client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    expect(snapd.snaps, hasLength(0));
    final changeId = await client.install('test1', classic: true);
    final change = await client.getChange(changeId);
    expect(change.ready, isTrue);
    expect(snapd.snaps.keys.toList(), equals(['test1']));
    expect(snapd.snaps['test1']!.classic, isTrue);
  });

  test('install - dangerous', () async {
    final snapd = MockSnapdServer(storeSnaps: [MockSnap(name: 'test1')]);
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    final client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    expect(snapd.snaps, hasLength(0));
    final changeId = await client.install('test1', dangerous: true);
    final change = await client.getChange(changeId);
    expect(change.ready, isTrue);
    expect(snapd.snaps.keys.toList(), equals(['test1']));
    expect(snapd.snaps['test1']!.dangerous, isTrue);
  });

  test('install - devmode', () async {
    final snapd = MockSnapdServer(storeSnaps: [MockSnap(name: 'test1')]);
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    final client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    expect(snapd.snaps, hasLength(0));
    final changeId = await client.install('test1', devmode: true);
    final change = await client.getChange(changeId);
    expect(change.ready, isTrue);
    expect(snapd.snaps.keys.toList(), equals(['test1']));
    expect(snapd.snaps['test1']!.devmode, isTrue);
  });

  test('install - jailmode', () async {
    final snapd = MockSnapdServer(storeSnaps: [MockSnap(name: 'test1')]);
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    final client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    expect(snapd.snaps, hasLength(0));
    final changeId = await client.install('test1', jailmode: true);
    final change = await client.getChange(changeId);
    expect(change.ready, isTrue);
    expect(snapd.snaps.keys.toList(), equals(['test1']));
    expect(snapd.snaps['test1']!.jailmode, isTrue);
  });

  test('remove', () async {
    final snapd = MockSnapdServer(
      snaps: [
        MockSnap(name: 'test1'),
        MockSnap(name: 'test2'),
        MockSnap(name: 'test3'),
      ],
    );
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    final client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    expect(snapd.snaps.keys.toList(), equals(['test1', 'test2', 'test3']));
    final changeId = await client.remove('test2');
    final change = await client.getChange(changeId);
    expect(change.ready, isTrue);
    expect(snapd.snaps.keys.toList(), equals(['test1', 'test3']));
  });

  test('remove - purge', () async {
    final snapd = MockSnapdServer(snaps: [MockSnap(name: 'test1')]);
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    final client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    expect(snapd.removedSnaps, isEmpty);
    final changeId = await client.remove('test1', purge: true);
    final change = await client.getChange(changeId);
    expect(change.ready, isTrue);
    expect(snapd.removedSnaps['test1']!.purged, isTrue);
  });

  test('refresh', () async {
    final snapd = MockSnapdServer(
      snaps: [
        MockSnap(name: 'test1'),
        MockSnap(name: 'test2'),
        MockSnap(name: 'test3'),
      ],
    );
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    final client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    expect(snapd.snaps['test1']!.refreshed, isFalse);
    expect(snapd.snaps['test2']!.refreshed, isFalse);
    expect(snapd.snaps['test3']!.refreshed, isFalse);
    final changeId = await client.refresh('test2');
    final change = await client.getChange(changeId);
    expect(change.ready, isTrue);
    expect(snapd.snaps['test1']!.refreshed, isFalse);
    expect(snapd.snaps['test2']!.refreshed, isTrue);
    expect(snapd.snaps['test3']!.refreshed, isFalse);
  });

  test('refresh - channel', () async {
    final snapd = MockSnapdServer(snaps: [MockSnap(name: 'test1')]);
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    final client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    final changeId = await client.refresh('test1', channel: 'latest/edge');
    final change = await client.getChange(changeId);
    expect(change.ready, isTrue);
    expect(snapd.snaps['test1']!.refreshed, isTrue);
    expect(snapd.snaps['test1']!.installedChannel, equals('latest/edge'));
  });

  test('refresh - classic', () async {
    final snapd = MockSnapdServer(snaps: [MockSnap(name: 'test1')]);
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    final client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    final changeId = await client.refresh('test1', classic: true);
    final change = await client.getChange(changeId);
    expect(change.ready, isTrue);
    expect(snapd.snaps['test1']!.refreshed, isTrue);
    expect(snapd.snaps['test1']!.classic, isTrue);
  });

  test('refresh many', () async {
    final snapd = MockSnapdServer(
      snaps: [
        MockSnap(name: 'test1'),
        MockSnap(name: 'test2'),
        MockSnap(name: 'test3'),
      ],
    );
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    final client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    expect(snapd.snaps['test1']!.refreshed, isFalse);
    expect(snapd.snaps['test2']!.refreshed, isFalse);
    expect(snapd.snaps['test3']!.refreshed, isFalse);
    final changeId = await client.refreshMany(['test2', 'test3']);
    final change = await client.getChange(changeId);
    expect(change.ready, isTrue);
    expect(snapd.snaps['test1']!.refreshed, isFalse);
    expect(snapd.snaps['test2']!.refreshed, isTrue);
    expect(snapd.snaps['test3']!.refreshed, isTrue);
  });

  test('install many', () async {
    final snapd = MockSnapdServer(
      storeSnaps: [
        MockSnap(name: 'test1'),
        MockSnap(name: 'test2'),
        MockSnap(name: 'test3'),
      ],
    );
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    final client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    expect(snapd.snaps, hasLength(0));
    final changeId = await client.installMany(['test1', 'test2', 'test3']);
    final change = await client.getChange(changeId);
    expect(change.ready, isTrue);
    expect(snapd.snaps, hasLength(3));
    expect(snapd.snaps.keys.toList(), equals(['test1', 'test2', 'test3']));
    expect(snapd.snaps['test1']!.classic, isFalse);
  });

  test('install many classic', () async {
    final snapd = MockSnapdServer(
      storeSnaps: [MockSnap(name: 'test1'), MockSnap(name: 'test2')],
    );
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    final client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    expect(snapd.snaps, hasLength(0));
    final changeId =
        await client.installMany(['test1', 'test2'], classic: true);
    final change = await client.getChange(changeId);
    expect(change.ready, isTrue);
    expect(snapd.snaps, hasLength(2));
    expect(snapd.snaps['test1']!.classic, isTrue);
    expect(snapd.snaps['test2']!.classic, isTrue);
  });

  test('enable', () async {
    final snapd =
        MockSnapdServer(snaps: [MockSnap(name: 'test1', enabled: false)]);
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    final client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    expect(snapd.snaps['test1']!.enabled, isFalse);
    final changeId = await client.enable('test1');
    final change = await client.getChange(changeId);
    expect(change.ready, isTrue);
    expect(snapd.snaps['test1']!.enabled, isTrue);
  });

  test('disable', () async {
    final snapd = MockSnapdServer(snaps: [MockSnap(name: 'test1')]);
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    final client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    expect(snapd.snaps['test1']!.enabled, isTrue);
    final changeId = await client.disable('test1');
    final change = await client.getChange(changeId);
    expect(change.ready, isTrue);
    expect(snapd.snaps['test1']!.enabled, isFalse);
  });

  test('changes', () async {
    final snapd = MockSnapdServer(
      changes: [
        MockChange(
          id: '1',
          kind: 'change-kind',
          summary: 'Summary',
          status: 'Doing',
          spawnTime: '2022-06-07T09:21:22.311860727Z',
          readyTime: '2022-06-07T09:21:22.550329668Z',
          error: 'Error',
          snapNames: [
            'snap1',
            'snap2',
          ],
          tasks: [
            MockTask(
              id: '11',
              kind: 'task-kind',
              progress:
                  MockTaskProgress(label: 'Progress', done: 22, total: 33),
              summary: 'Task',
              status: 'Doing',
            ),
          ],
        ),
        MockChange(id: '2', snapNames: ['snap2', 'snap3']),
        MockChange(id: '3', ready: true, snapNames: ['snap3', 'snap4']),
      ],
    );
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    final client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    // Default behaviour is to get in progress changes.
    final changes = await client.getChanges();
    expect(changes, hasLength(2));
    expect(
      changes[0],
      equals(
        SnapdChange(
          id: '1',
          kind: 'change-kind',
          summary: 'Summary',
          status: 'Doing',
          spawnTime: DateTime.utc(2022, 6, 7, 9, 21, 22, 311, 860),
          readyTime: DateTime.utc(2022, 6, 7, 9, 21, 22, 550, 329),
          err: 'Error',
          snapNames: const [
            'snap1',
            'snap2',
          ],
          tasks: [
            const SnapdTask(
              id: '11',
              kind: 'task-kind',
              summary: 'Task',
              status: 'Doing',
              progress: SnapdTaskProgress(
                label: 'Progress',
                done: 22,
                total: 33,
              ),
            ),
          ],
        ),
      ),
    );
    expect(changes[1].id, equals('2'));

    final allChanges = await client.getChanges(filter: SnapdChangeFilter.all);
    expect(allChanges, hasLength(3));
    expect(allChanges[0].id, equals('1'));
    expect(allChanges[1].id, equals('2'));
    expect(allChanges[2].id, equals('3'));

    final inProgressChanges =
        await client.getChanges(filter: SnapdChangeFilter.inProgress);
    expect(inProgressChanges, hasLength(2));
    expect(inProgressChanges[0].id, equals('1'));
    expect(inProgressChanges[1].id, equals('2'));

    final readyChanges =
        await client.getChanges(filter: SnapdChangeFilter.ready);
    expect(readyChanges, hasLength(1));
    expect(readyChanges[0].id, equals('3'));

    var nameChanges = await client.getChanges(name: 'snap2');
    expect(nameChanges, hasLength(2));
    expect(nameChanges[0].id, equals('1'));
    expect(nameChanges[1].id, equals('2'));

    final abortedChange = await client.abortChange(nameChanges[0].id);
    expect(abortedChange.id, equals('1'));
    expect(abortedChange.ready, isTrue);
    nameChanges = await client.getChanges(name: 'snap2');
    expect(nameChanges, hasLength(1));
    expect(nameChanges[0].id, equals('2'));
  });

  group('notices', () {
    final notices = [
      SnapdNotice(
        id: '1',
        userId: 1000,
        type: SnapdNoticeType.changeUpdate,
        key: '101',
        firstOccured: DateTime(2000),
        lastOccured: DateTime(2001),
        lastRepeated: DateTime(2001),
        occurrences: 2,
        lastData: {'kind': 'auto-refresh'},
        expireAfter: '168h0m0s',
      ),
      SnapdNotice(
        id: '2',
        userId: 1000,
        type: SnapdNoticeType.interfacesRequestsRuleUpdate,
        key: '301',
        firstOccured: DateTime(2020),
        lastOccured: DateTime(2021),
        lastRepeated: DateTime(2021),
        occurrences: 1,
        expireAfter: '168h0m0s',
      ),
      SnapdNotice(
        id: '3',
        userId: 1000,
        type: SnapdNoticeType.interfacesRequestsRuleUpdate,
        key: '302',
        firstOccured: DateTime(2020, 2),
        lastOccured: DateTime(2021, 2),
        lastRepeated: DateTime(2021, 2),
        occurrences: 1,
        expireAfter: '168h0m0s',
      ),
    ];

    final testCases = [
      (
        name: 'all',
        types: null,
        keys: null,
        after: null,
        expectedIds: ['1', '2', '3'],
      ),
      (
        name: 'type',
        types: [SnapdNoticeType.changeUpdate],
        keys: null,
        after: null,
        expectedIds: ['1'],
      ),
      (
        name: 'key',
        types: null,
        keys: ['301'],
        after: null,
        expectedIds: ['2'],
      ),
      (
        name: 'after',
        types: null,
        keys: null,
        after: DateTime(2021, 1, 2),
        expectedIds: ['3'],
      ),
    ];

    for (final testCase in testCases) {
      test(testCase.name, () async {
        final snapd = MockSnapdServer(notices: notices);
        await snapd.start();
        addTearDown(() async {
          await snapd.close();
        });

        final client = SnapdClient(socketPath: snapd.socketPath);
        addTearDown(() async {
          client.close();
        });

        final result = await client.getNotices(
          types: testCase.types,
          keys: testCase.keys,
          after: testCase.after,
        );
        expect(result, hasLength(testCase.expectedIds.length));
        for (final id in testCase.expectedIds) {
          expect(result.any((notice) => notice.id == id), isTrue);
        }
      });
    }
  });

  test('rules', () async {
    final rules = [
      SnapdRule(
        id: 'rule1',
        timestamp: DateTime(2000),
        snap: 'snap',
        interface: 'home',
        constraints: const SnapdConstraints(
          pathPattern: '/home/user/Downloads/*',
          permissions: ['read'],
        ),
        outcome: SnapdRequestOutcome.allow,
        lifespan: SnapdRequestLifespan.forever,
      ),
      SnapdRule(
        id: 'rule2',
        timestamp: DateTime(2002),
        snap: 'snap2',
        interface: 'home',
        constraints: const SnapdConstraints(
          pathPattern: '/home/user/Downloads/*.pdf',
          permissions: ['read', 'write'],
        ),
        outcome: SnapdRequestOutcome.deny,
        lifespan: SnapdRequestLifespan.timespan,
        expiration: DateTime(2003),
      ),
    ];

    final snapd = MockSnapdServer(rules: rules);
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    final client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    final allRules = await client.getRules();
    expect(allRules, hasLength(2));
    expect(allRules[0], equals(rules[0]));
    expect(allRules[1], equals(rules[1]));

    final rule = await client.getRule('rule2');
    expect(rule, equals(rules[1]));

    final snap1Rules = await client.getRules(snap: 'snap');
    expect(snap1Rules, hasLength(1));
    expect(snap1Rules[0], equals(rules[0]));
  });

  test('rules - delete', () async {
    final rules = [
      SnapdRule(
        id: 'rule1',
        timestamp: DateTime(2000),
        snap: 'snap',
        interface: 'home',
        constraints: const SnapdConstraints(
          pathPattern: '/home/user/Downloads/*',
          permissions: ['read'],
        ),
        outcome: SnapdRequestOutcome.allow,
        lifespan: SnapdRequestLifespan.forever,
      ),
      SnapdRule(
        id: 'rule2',
        timestamp: DateTime(2002),
        snap: 'snap2',
        interface: 'home',
        constraints: const SnapdConstraints(
          pathPattern: '/home/user/Downloads/*.pdf',
          permissions: ['read', 'write'],
        ),
        outcome: SnapdRequestOutcome.deny,
        lifespan: SnapdRequestLifespan.timespan,
        expiration: DateTime(2003),
      ),
    ];

    final snapd = MockSnapdServer(rules: rules);
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    final client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    expect(await client.getRules(), hasLength(2));

    await client.removeRule('rule2');

    final allRules = await client.getRules();
    expect(allRules, hasLength(1));
  });

  test('rules - add', () async {
    final snapd = MockSnapdServer();
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    final client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    const rule = SnapdRuleMask(
      snap: 'snap',
      interface: 'home',
      constraints: SnapdConstraints(
        pathPattern: '/home/user/Downloads/*',
        permissions: ['read'],
      ),
      outcome: SnapdRequestOutcome.allow,
      lifespan: SnapdRequestLifespan.forever,
    );

    await client.addRule(rule);

    final allRules = await client.getRules();
    expect(allRules, hasLength(1));
    expect(allRules[0].interface, rule.interface);
    expect(allRules[0].snap, equals(rule.snap));
    expect(allRules[0].constraints, equals(rule.constraints));
    expect(allRules[0].outcome, equals(rule.outcome));
    expect(allRules[0].lifespan, equals(rule.lifespan));
  });

  test('apparmor prompting', () async {
    final snapd = MockSnapdServer();
    await snapd.start();
    addTearDown(() async {
      await snapd.close();
    });

    final client = SnapdClient(socketPath: snapd.socketPath);
    addTearDown(() async {
      client.close();
    });

    final systemInfo = await client.systemInfo();
    expect(systemInfo.features?['apparmor-prompting']?['enabled'], isFalse);

    final changeId = await client.enablePrompting();
    final change = await client.getChange(changeId);

    expect(change.ready, isTrue);

    final newSystemInfo = await client.systemInfo();
    expect(newSystemInfo.features?['apparmor-prompting']?['enabled'], isTrue);
  });

  test('refresh inhibit can convert to date time', () {
    final refreshInhibit = RefreshInhibit.fromJson(
      {'proceed-time': '1990-12-31T07:00:00.000000000+02:00'},
    );
    expect(refreshInhibit.proceedTime, DateTime.utc(1990, 12, 31, 5));
  });
}
