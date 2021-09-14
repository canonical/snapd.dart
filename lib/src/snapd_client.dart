import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart';
import 'package:path/path.dart' as p;

import 'http_unix_client.dart';

/// Describes an app provided by a snap.
class SnapApp {
  /// The snap this app is part of
  final String? snap;

  /// Name of the app.
  final String name;

  /// Desktop file the app uses.
  final String? desktopFile;

  /// Type of daemon this app is.
  final String? daemon;

  /// True if this service is enabled.
  final bool enabled;

  /// True if this service is active.
  final bool active;

  /// A unique ID for this app.
  final String? commonId;

  // FIXME(robert-ancell) Implement
  //List<SnapActivator> activators.

  const SnapApp(this.snap, this.name,
      {this.desktopFile,
      this.daemon,
      this.enabled = true,
      this.active = true,
      this.commonId});

  factory SnapApp._fromJson(Map<String, dynamic> value) {
    return SnapApp(value['snap'], value['name'],
        desktopFile: value['desktop-file'],
        daemon: value['daemon'],
        enabled: value['enabled'] ?? true,
        active: value['active'] ?? true,
        commonId: value['common-id']);
  }
}

/// Described a channel available for a snap.
class SnapChannel {
  /// Confinement of this snap in this channel.
  final String confinement;

  /// Revision of this snap in this channel.
  final String revision;

  /// Size of the snap in this channel in bytes.
  final int size;

  /// Version of this snap in this channel.
  final String version;

  const SnapChannel(
      {this.confinement = '',
      this.revision = '',
      this.size = 0,
      this.version = ''});

  factory SnapChannel._fromJson(value) {
    return SnapChannel(
        confinement: value['confinement'] ?? '',
        revision: value['revision'] ?? '',
        size: value['size'] ?? 0,
        version: value['version'] ?? '');
  }
}

/// Describes a snap publisher.
class SnapPublisher {
  /// Unique ID for this publisher.
  final String id;

  /// Unique username for this publisher.
  final String username;

  /// Name to use when displaying this publisher.
  final String displayName;

  /// Validation level for this publisher.
  final String? validation;

  const SnapPublisher(
      {this.id = '',
      this.username = '',
      this.displayName = '',
      this.validation});

  factory SnapPublisher._fromJson(value) {
    return SnapPublisher(
        id: value['id'] ?? '',
        username: value['username'] ?? '',
        displayName: value['display-name'] ?? '',
        validation: value['validation']);
  }
}

/// Describes a piece of media associated with a snap.
class SnapMedia {
  /// Media type
  final String type;

  /// URL of media.
  final String url;

  /// Width of media in pixels.
  final int? width;

  /// Height of media in pixels.
  final int? height;

  const SnapMedia(this.type, this.url, {this.width, this.height});

  factory SnapMedia._fromJson(value) {
    return SnapMedia(value['type'] ?? '', value['url'] ?? '',
        width: value['width'], height: value['height']);
  }
}

/// Describes a snap package.
class Snap {
  /// Apps this snap provides.
  final List<SnapApp> apps;

  /// Channel this snap is tracking.
  final String channel;

  /// Channels available for this snap.
  final Map<String, SnapChannel> channels;

  /// Common IDs this snap contains.
  final List<String> commonIds;

  /// Contact URL.
  final String? contact;

  /// Multi line description.
  final String description;

  /// Download size in bytes.
  final int? downloadSize;

  /// Unique ID for this snap.
  final String id;

  /// Installed size in bytes.
  final int? installedSize;

  /// Package license.
  final String? license;

  /// Media associated with this snap.
  final List<SnapMedia> media;

  /// Unique name for this snap. Use [title] for displaying.
  final String name;

  /// Publisher information.
  final SnapPublisher? publisher;

  /// Revision of this snap.
  final String revision;

  /// URL linking to the snap store page on this snap.
  final String? storeUrl;

  /// Single line summary.
  final String summary;

  /// Title of this snap.
  final String title;

  /// Tracks this snap uses.
  final List<String> tracks;

  /// Type of snap.
  final String type;

  /// Version of this snap.
  final String version;

  /// Website URL.
  final String? website;

  const Snap(
      {this.apps = const [],
      this.channel = '',
      this.channels = const {},
      this.commonIds = const [],
      this.contact = '',
      this.description = '',
      this.downloadSize,
      this.id = '',
      this.installedSize,
      this.license,
      this.media = const [],
      this.name = '',
      this.publisher,
      this.revision = '',
      this.storeUrl,
      this.summary = '',
      this.title = '',
      this.tracks = const [],
      this.type = '',
      this.version = '',
      this.website});

  @override
  String toString() {
    return "Snap('$name')";
  }

  factory Snap._fromJson(Map<String, dynamic> value) {
    return Snap(
        apps: value['apps'] != null
            ? (value['apps'] as List).map((v) => SnapApp._fromJson(v)).toList()
            : [],
        channel: value['channel'],
        channels: value['channels'] != null
            ? (value['channels'] as Map)
                .map((k, v) => MapEntry(k, SnapChannel._fromJson(v)))
            : {},
        commonIds: value['common-ids']?.cast<String>() ?? [],
        contact: value['contact'] ?? '',
        description: value['description'] ?? '',
        downloadSize: value['download-size'],
        id: value['id'],
        installedSize: value['installed-size'],
        license: value['license'],
        media: value['media'] != null
            ? (value['media'] as List)
                .map((v) => SnapMedia._fromJson(v))
                .toList()
            : [],
        name: value['name'],
        publisher: value['publisher'] != null
            ? SnapPublisher._fromJson(value['publisher'])
            : null,
        revision: value['revision'] ?? '',
        storeUrl: value['store-url'],
        summary: value['summary'],
        title: value['title'],
        tracks: value['tracks']?.cast<String>() ?? [],
        type: value['type'] ?? '',
        version: value['version'] ?? '',
        website: value['website']);
  }
}

/// Response received when getting system information
class SnapdSystemInfoResponse {
  /// The architecture snapd is running on.
  final String architecture;

  /// The build of snapd.
  final String buildId;

  /// The confinement level that is supported.
  final String confinement;

  /// The version of the Linux kernel this is running on.
  final String kernelVersion;

  // FIXME(robert-ancell): locations

  final bool managed;

  /// True if running on a classic system.
  final bool onClassic;

  // FIXME(robert-ancell): os-release
  // FIXME(robert-ancell): refresh
  // FIXME(robert-ancell): sandbox-features

  /// The core series in use.
  final String series;

  final String systemMode;

  /// The version of snapd.
  final String version;

  const SnapdSystemInfoResponse(
      {this.architecture = '',
      this.buildId = '',
      this.confinement = '',
      this.kernelVersion = '',
      this.managed = false,
      this.onClassic = false,
      this.series = '',
      this.systemMode = '',
      this.version = ''});

  @override
  String toString() =>
      'SnapdSystemInfoResponse(architecture: $architecture, buildId: $buildId, confinement: $confinement, kernelVersion: $kernelVersion, managed: $managed, onClassic: $onClassic, series: $series, systemMode: $systemMode, version: $version)';

  factory SnapdSystemInfoResponse._fromJson(value) {
    return SnapdSystemInfoResponse(
        architecture: value['architecture'] ?? '',
        buildId: value['build-id'] ?? '',
        confinement: value['confinement'] ?? '',
        kernelVersion: value['kernel-version'] ?? '',
        managed: value['managed'] ?? false,
        onClassic: value['on-classic'] ?? false,
        series: value['series'] ?? '',
        systemMode: value['system-mode'] ?? '',
        version: value['version'] ?? '');
  }
}

/// Response received when logging in.
class SnapdLoginResponse {
  final int? id;

  /// Username logged in with.
  final String? username;

  /// Email address logged in with.
  final String? email;

  /// Macaroon provided by the server.
  final String? macaroon;

  /// Discharges provided bu the server.
  final List<String> discharges;

  /// Secure Shell keys this user has.
  final List<String> sshKeys;

  const SnapdLoginResponse(
      {this.id,
      this.username,
      this.email,
      this.macaroon,
      this.discharges = const [],
      this.sshKeys = const []});

  @override
  String toString() {
    return 'SnapdLoginResponse(id: $id, username: $username, email: $email, macaroon: $macaroon, discharges: $discharges)';
  }

  factory SnapdLoginResponse._fromJson(value) {
    return SnapdLoginResponse(
        id: value['id'],
        username: value['username'],
        email: value['email'],
        macaroon: value['macaroon'],
        discharges: value['discharges'].cast<String>() ?? [],
        sshKeys: value['ssh-keys'].cast<String>() ?? []);
  }
}

/// Gives the state of an asynchronous operation.
class SnapdChange {
  /// The ID of this change.
  final String id;

  /// The kind of change, e.g. 'install-snap'.
  final String kind;

  /// Short description of the change. e.g. 'Install snap "moon-buggy"'
  final String summary;

  /// Status of the change, e.g. 'Doing'.
  final String status;

  /// True when this change is complete.
  final bool ready;

  final String? err;

  /// The time this change started.
  /// FIXME(robert-ancell): Implement
  ///final String spawnTime;

  /// The tasks of this change.
  final List<SnapdTask> tasks;

  const SnapdChange(
      {this.id = '',
      this.kind = '',
      this.summary = '',
      this.status = '',
      this.ready = false,
      this.err,
      this.tasks = const []});

  @override
  String toString() {
    return "SnapdChange(id: '$id', kind: '$kind', summary: '$summary', status: '$status', ready: $ready, err: $err, tasks: $tasks)";
  }

  factory SnapdChange._fromJson(value) {
    return SnapdChange(
        id: value['id'] ?? '',
        kind: value['kind'] ?? '',
        summary: value['summary'] ?? '',
        status: value['status'] ?? '',
        ready: value['ready'] ?? false,
        err: value['err'],
        tasks:
            value['tasks']?.map((v) => SnapdTask._fromJson(v)).toList() ?? []);
  }
}

/// Information about a task in a [SnapdChange].
class SnapdTask {
  /// The ID of this task.
  final String id;

  /// The kind of task, e.g. 'download-snap'install-snap'.
  final String kind;

  /// Short description of the task. e.g. ''Download snap "moon-buggy" (12) from channel "stable"'
  final String summary;

  /// Status of the task, e.g. 'Doing'.
  final String status;

  /// Progress of this task.
  final SnapdTaskProgress progress;

  /// The time this task started.
  /// FIXME(robert-ancell): Implement
  ///final String spawnTime;

  /// The time this task completed.
  /// FIXME(robert-ancell): Implement
  ///final String readyTime;

  const SnapdTask(
      {this.id = '',
      this.kind = '',
      this.summary = '',
      this.status = '',
      this.progress = const SnapdTaskProgress()});

  @override
  String toString() {
    return "SnapdTask(id: '$id', kind: '$kind', summary: '$summary', status: '$status', progress: $progress)";
  }

  factory SnapdTask._fromJson(value) {
    return SnapdTask(
        id: value['id'] ?? '',
        kind: value['kind'] ?? '',
        summary: value['summary'] ?? '',
        status: value['status'] ?? '',
        progress: value['progress'] != null
            ? SnapdTaskProgress._fromJson(value['progress'])
            : SnapdTaskProgress());
  }
}

/// Progress of a [SnapdTask].
class SnapdTaskProgress {
  /// Optional label.
  final String label;

  /// Number of progress items complete.
  final int done;

  /// Total number of progress items in this task.
  final int total;

  const SnapdTaskProgress({this.label = '', this.done = 0, this.total = 0});

  @override
  String toString() {
    return "SnapdTaskProgress(label: '$label', done: $done, total: $total)";
  }

  factory SnapdTaskProgress._fromJson(value) {
    return SnapdTaskProgress(
        label: value['label'] ?? '',
        done: value['done'] ?? 0,
        total: value['total'] ?? 0);
  }
}

/// General response from snapd.
abstract class _SnapdResponse {
  /// HTTP status code.
  final int statusCode;

  /// Status message.
  final String status;

  /// Request result. Throws an exception if not a sync result.
  dynamic get result;

  /// Request change ID. Throws an exception if not an async result.
  String get change;

  const _SnapdResponse({this.statusCode = 0, this.status = ''});
}

/// Response retuned when a sync request is completed.
class _SnapdSyncResponse extends _SnapdResponse {
  final dynamic _result;

  @override
  dynamic get result => _result;

  @override
  String get change => throw 'Result is sync';

  _SnapdSyncResponse(dynamic result, {int statusCode = 0, String status = ''})
      : _result = result,
        super(statusCode: statusCode, status: status);
}

/// Response retuned when an async request has been started.
class _SnapdAsyncResponse extends _SnapdResponse {
  final String _change;

  @override
  dynamic get result => throw 'Result is async';

  @override
  String get change => _change;

  _SnapdAsyncResponse(change, {int statusCode = 0, String status = ''})
      : _change = change,
        super(statusCode: statusCode, status: status);
}

/// Response retuned when an error occurred.
class _SnapdErrorResponse extends _SnapdResponse {
  /// Error message returned.
  final String message;

  /// Error kind returned.
  final String kind;

  /// Error value.
  final dynamic value;

  @override
  dynamic get result => throw 'Result is error $kind: $message';

  @override
  String get change => throw 'Result is error $kind: $message';

  const _SnapdErrorResponse(this.message,
      {int statusCode = 0, String status = '', this.kind = '', this.value})
      : super(statusCode: statusCode, status: status);

  factory _SnapdErrorResponse.fromJson(int statusCode, String status, value) {
    return _SnapdErrorResponse(value['message'],
        statusCode: statusCode,
        status: status,
        kind: value['kind'],
        value: value['value']);
  }
}

/// Manages a connection to the snapd server.
class SnapdClient {
  final HttpUnixClient _client;
  String? _macaroon;
  List<String> _discharges = [];
  String? _userAgent;

  /// True if snapd operations are allowed to interact with the user.
  /// This affects operations that use polkit authorisation.
  bool allowInteraction = true;

  SnapdClient(
      {String userAgent = 'snapd.dart', socketPath = '/var/run/snapd.socket'})
      : _userAgent = userAgent,
        _client = HttpUnixClient(socketPath);

  /// Loads the saved authorization for this user.
  Future<void> loadAuthorization() async {
    var home = Platform.environment['HOME'];
    if (home == null) {
      throw 'Unable to determine home directory';
    }
    var file = File(p.join(home, '.snap', 'auth.json'));
    String contents;
    try {
      contents = await file.readAsString();
    } catch (e) {
      setAuthorization('', []);
      return;
    }

    var authData = json.decode(contents);
    var macaroon = authData['macaroon'];
    var discharges = authData['discharges'] != null
        ? authData['discharges'].cast<String>()
        : <String>[];
    setAuthorization(macaroon, discharges);
  }

  /// Sets the authorization used in the connection to snapd.
  void setAuthorization(String macaroon, List<String> discharges) {
    _macaroon = macaroon;
    _discharges = discharges;
  }

  /// Gets information about the system that snapd is running on.
  Future<SnapdSystemInfoResponse> systemInfo() async {
    var result = await _getSync('/v2/system-info');
    return SnapdSystemInfoResponse._fromJson(result);
  }

  /// Gets the currently installed snaps.
  Future<List<Snap>> snaps() async {
    var result = await _getSync('/v2/snaps');
    var snaps = <Snap>[];
    for (var snap in result) {
      snaps.add(Snap._fromJson(snap));
    }
    return snaps;
  }

  /// Gets the currently installed apps.
  Future<List<SnapApp>> apps() async {
    var result = await _getSync('/v2/apps');
    var apps = <SnapApp>[];
    for (var app in result) {
      apps.add(SnapApp._fromJson(app));
    }
    return apps;
  }

  /// Sets the user agent sent in requests to snapd.
  set userAgent(String? value) => _userAgent = value;

  /// Searches for snaps.
  ///
  /// If [query] is provided, searches for snaps that match the given string.
  /// If [name] is provided, match the snap with the given name.
  /// If [section] is provided, search within that store section.
  Future<List<Snap>> find(
      {String? query, String? name, String? section}) async {
    var queryParameters = <String, String>{};
    if (query != null) {
      queryParameters['q'] = query;
    }
    if (name != null) {
      queryParameters['name'] = name;
    }
    if (section != null) {
      queryParameters['section'] = section;
    }
    var result = await _getSync('/v2/find', queryParameters);
    var snaps = <Snap>[];
    for (var snap in result) {
      snaps.add(Snap._fromJson(snap));
    }
    return snaps;
  }

  /// Logs into the snap store.
  Future<SnapdLoginResponse> login(String email, String password,
      {String? otp}) async {
    var request = {'email': email, 'password': password};
    if (otp != null) {
      request['otp'] = otp;
    }
    var result = await _postSync('/v2/login', request);
    return SnapdLoginResponse._fromJson(result);
  }

  /// Logs out acccount with [id] from the snap store.
  Future logout(int id) async {
    await _postSync('/v2/logout', {'id': id});
  }

  /// Installs the snaps with the given [names].
  /// Returns the change ID for this operation, use [getChange] to get the status of this operation.
  Future<String> install(List<String> names) async {
    var request = {'action': 'install', 'snaps': names};
    return await _postAsync('/v2/snaps', request);
  }

  /// Refreshes the snaps with the given [names].
  /// If no names provided refreshes all snaps.
  /// Returns the change ID for this operation, use [getChange] to get the status of this operation.
  Future<String> refresh([List<String>? names]) async {
    var request = {};
    request['action'] = 'refresh';
    if (names != null) {
      request['snaps'] = names;
    }
    return await _postAsync('/v2/snaps', request);
  }

  /// Removes the snaps with the given [names].
  /// Returns the change ID for this operation, use [getChange] to get the status of this operation.
  Future<String> remove(List<String> names) async {
    var request = {'action': 'remove', 'snaps': names};
    return await _postAsync('/v2/snaps', request);
  }

  /// Gets the status the change with the given [id].
  Future<SnapdChange> getChange(String id) async {
    var result = await _getSync('/v2/changes/$id');
    return SnapdChange._fromJson(result);
  }

  /// Terminates all active connections. If a client remains unclosed, the Dart process may not terminate.
  void close() {
    _client.close();
  }

  /// Does a synchronous request to snapd.
  Future<dynamic> _getSync(String path,
      [Map<String, String> queryParameters = const {}]) async {
    var request = Request('GET', Uri.http('localhost', path, queryParameters));
    _setHeaders(request);
    var response = await _client.send(request);
    var snapdResponse = await _parseResponse(response);
    return snapdResponse.result;
  }

  /// Does a synchronous request to snapd.
  Future<dynamic> _postSync(String path, [dynamic body]) async {
    var request = Request('POST', Uri.http('localhost', path));
    _setHeaders(request);
    request.headers['Content-Type'] = 'application/json';
    request.bodyBytes = utf8.encode(json.encode(body));
    var response = await _client.send(request);
    var snapdResponse = await _parseResponse(response);
    return snapdResponse.result;
  }

  /// Does an asynchronous request to snapd.
  Future<String> _postAsync(String path, [dynamic body]) async {
    var request = Request('POST', Uri.http('localhost', path));
    _setHeaders(request);
    request.headers['Content-Type'] = 'application/json';
    request.bodyBytes = utf8.encode(json.encode(body));
    var response = await _client.send(request);
    var snapdResponse = await _parseResponse(response);
    return snapdResponse.change;
  }

  /// Decodes a response from snapd.
  Future<_SnapdResponse> _parseResponse(StreamedResponse response) async {
    var body = await response.stream.bytesToString();
    var jsonResponse = json.decode(body);
    _SnapdResponse snapdResponse;
    var type = jsonResponse['type'];
    var statusCode = jsonResponse['status-code'];
    var status = jsonResponse['status'];
    if (type == 'sync') {
      snapdResponse = _SnapdSyncResponse(jsonResponse['result'],
          statusCode: statusCode, status: status);
    } else if (type == 'async') {
      snapdResponse = _SnapdAsyncResponse(jsonResponse['change'],
          statusCode: statusCode, status: status);
    } else if (type == 'error') {
      var result = jsonResponse['result'];
      snapdResponse = _SnapdErrorResponse.fromJson(statusCode, status, result);
    } else {
      throw "Unknown snapd response '$type'";
    }

    return snapdResponse;
  }

  /// Makes base HTTP headers to send.
  void _setHeaders(Request request) {
    if (_userAgent != null) {
      request.headers['User-Agent'] = _userAgent!;
    }
    if (_macaroon != null) {
      var authorization = 'Macaroon root="$_macaroon"';
      for (var discharge in _discharges) {
        authorization += ',discharge="$discharge"';
      }
      request.headers['Authorization'] = authorization;
    }
    if (allowInteraction) {
      request.headers['X-Allow-Interaction'] = 'true';
    }
  }
}
