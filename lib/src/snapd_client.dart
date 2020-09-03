import 'dart:convert';
import 'package:http/http.dart';

import 'http_unix_client.dart';

/// Describes an app provided by a snap.
class SnapApp {
  /// Name of the app.
  final String name;

  /// Desktop file the app uses.
  final String desktopFile;

  SnapApp(this.name, {this.desktopFile});
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

  SnapChannel({this.confinement, this.revision, this.size, this.version});
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
  final String validation;

  SnapPublisher({this.id, this.username, this.displayName, this.validation});
}

/// Describes a piece of media associated with a snap.
class SnapMedia {
  /// Media type
  String type;

  /// URL of media.
  String url;

  /// Width of media in pixels.
  final int width;

  /// Height of media in pixels.
  final int height;

  SnapMedia(this.type, this.url, {this.width, this.height});
}

/// Describes a snap package.
class Snap {
  /// Apps this snap provides.
  final List<SnapApp> apps;

  /// Channel this snap is tracking.
  final String channel;

  /// Channels available for this snap.
  final Map<String, SnapChannel> channels;

  /// Contact URL.
  final String contact;

  /// Multi line description.
  final String description;

  /// Download size in bytes.
  final int downloadSize;

  /// Unique ID for this snap.
  final String id;

  /// Installed size in bytes.
  final int installedSize;

  /// Package license.
  final String license;

  /// Media associated with this snap.
  final List<SnapMedia> media;

  /// Unique name for this snap. Use [title] for displaying.
  final String name;

  /// Publisher information.
  final SnapPublisher publisher;

  /// Revision of this snap.
  final String revision;

  /// URL linking to the snap store page on this snap.
  final String storeUrl;

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
  final String website;

  Snap(
      {this.apps,
      this.channel,
      this.channels,
      this.contact,
      this.description,
      this.downloadSize,
      this.id,
      this.installedSize,
      this.license,
      this.media,
      this.name,
      this.publisher,
      this.revision,
      this.storeUrl,
      this.summary,
      this.title,
      this.tracks,
      this.type,
      this.version,
      this.website});

  @override
  String toString() {
    return "Snap('${name}')";
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

  SnapdSystemInfoResponse(
      {this.architecture,
      this.buildId,
      this.confinement,
      this.kernelVersion,
      this.managed = false,
      this.onClassic = false,
      this.series,
      this.systemMode,
      this.version});

  @override
  String toString() =>
      'SnapdSystemInfoResponse(architecture: ${architecture}, buildId: ${buildId}, confinement: ${confinement}, kernelVersion: ${kernelVersion}, managed: ${managed}, onClassic: ${onClassic}, series: ${series}, systemMode: ${systemMode}, version: ${version})';
}

/// Response received when logging in.
class SnapdLoginResponse {
  final int id;

  /// Username logged in with.
  final String username;

  /// Email address logged in with.
  final String email;

  /// Macaroon provided by the server.
  final String macaroon;

  /// Discharges provided bu the server.
  final List<String> discharges;

  SnapdLoginResponse(
      this.id, this.username, this.email, this.macaroon, this.discharges);

  @override
  String toString() {
    return 'SnapdLoginResponse(id: ${id}, username: ${username}, email: ${email}, macaroon: ${macaroon}, discharges: ${discharges})';
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

  _SnapdResponse({this.statusCode, this.status});
}

/// Response retuned when a sync request is completed.
class _SnapdSyncResponse extends _SnapdResponse {
  final dynamic _result;

  @override
  dynamic get result => _result;

  @override
  String get change => throw 'Result is sync';

  _SnapdSyncResponse(dynamic result, {int statusCode, String status})
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

  _SnapdAsyncResponse(change, {int statusCode, String status})
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
  final value;

  @override
  dynamic get result => throw 'Result is error ${kind}: ${message}';

  @override
  String get change => throw 'Result is error ${kind}: ${message}';

  _SnapdErrorResponse(this.message,
      {int statusCode, String status, this.kind, this.value})
      : super(statusCode: statusCode, status: status);
}

/// Manages a connection to the snapd server.
class SnapdClient {
  final _client = HttpUnixClient('/var/run/snapd.socket');
  String _macaroon;
  List<String> _discharges;
  String _userAgent = 'snapd.dart';

  /// Sets the authorization used in the connection to snapd.
  void setAuthorization(String macaroon, List<String> discharges) {
    _macaroon = macaroon;
    _discharges = discharges;
  }

  /// Gets information about the system that snapd is running on.
  Future<SnapdSystemInfoResponse> systemInfo() async {
    var result = await _getSync('/v2/system-info');
    return SnapdSystemInfoResponse(
        architecture: result['architecture'],
        buildId: result['build-id'],
        confinement: result['confinement'],
        kernelVersion: result['kernel-version'],
        managed: result['managed'],
        onClassic: result['on-classic'],
        series: result['series'],
        systemMode: result['system-mode'],
        version: result['version']);
  }

  /// Gets the currently installed snaps.
  Future<List<Snap>> snaps() async {
    var result = await _getSync('/v2/snaps');
    var snaps = <Snap>[];
    for (var snap in result) {
      snaps.add(_makeSnap(snap));
    }
    return snaps;
  }

  /// Sets the user agent sent in requests to snapd.
  set userAgent(String value) => _userAgent = value;

  /// Searches for snaps.
  ///
  /// If [query] searches for snaps that match the given string.
  /// If [name] is provided, match the snap with the given name.
  /// If [section] is provided, search within that store section.
  Future<List<Snap>> find({String query, String name, String section}) async {
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
      snaps.add(_makeSnap(snap));
    }
    return snaps;
  }

  /// Logs into the snap store.
  Future<SnapdLoginResponse> login(String email, String password,
      {String otp}) async {
    var request = {'email': email, 'password': password};
    if (otp != null) {
      request['otp'] = otp;
    }
    var result = await _postSync('/v2/login', request);
    return SnapdLoginResponse(result['id'], result['username'], result['email'],
        result['macaroon'], result['discharges']);
  }

  /// Logs out of the snap store.
  Future logout() async {
    await _postSync('/v2/logout');
  }

  /// Installs the snaps with the given [names].
  /// Returns the change ID for this operation.
  Future<String> install(List<String> names) async {
    var request = {'action': 'install', 'snaps': names};
    return await _postAsync('/v2/snaps', request);
  }

  /// Refreshes the snaps with the given [names].
  /// If no names provided refreshes all snaps.
  /// Returns the change ID for this operation.
  Future<String> refresh([List<String> names]) async {
    var request = {};
    request['action'] = 'refresh';
    if (names != null) {
      request['snaps'] = names;
    }
    return await _postAsync('/v2/snaps', request);
  }

  /// Removes the snaps with the given [names].
  /// Returns the change ID for this operation.
  Future<String> remove(List<String> names) async {
    var request = {'action': 'remove', 'snaps': names};
    return await _postAsync('/v2/snaps', request);
  }

  /// Terminates all active connections. If a client remains unclosed, the Dart process may not terminate.
  void close() {
    _client.close();
  }

  /// Does a synchronous request to snapd.
  Future<dynamic> _getSync(String path,
      [Map<String, String> queryParameters]) async {
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
      snapdResponse = _SnapdErrorResponse(result['message'],
          statusCode: statusCode,
          status: status,
          kind: result['kind'],
          value: result['value']);
    } else {
      throw "Unknown snapd response '${type}'";
    }

    return snapdResponse;
  }

  /// Makes base HTTP headers to send.
  void _setHeaders(Request request) {
    if (_userAgent != null) {
      request.headers['User-Agent'] = _userAgent;
    }
    if (_macaroon != null) {
      var authorization = 'Macaroon root="${_macaroon}"';
      for (var discharge in _discharges) {
        authorization += ',discharge="${discharge}"';
      }
      request.headers['Authorization'] = authorization;
    }
  }

  /// Convert a JSON snap representation to a Snap object.
  Snap _makeSnap(dynamic json) {
    List<SnapApp> apps;
    if (json['apps'] != null) {
      apps = <SnapApp>[];
      for (var a in json['apps']) {
        apps.add(SnapApp(a['name'], desktopFile: a['desktop-file']));
      }
    }
    Map<String, SnapChannel> channels;
    if (json['channels'] != null) {
      channels = <String, SnapChannel>{};
      json['channels'].forEach((name, c) {
        channels[name] = SnapChannel(
            confinement: c['confinement'],
            revision: c['revision'],
            size: c['size'],
            version: c['version']);
      });
    }
    SnapPublisher publisher;
    var p = json['publisher'];
    if (p != null) {
      publisher = SnapPublisher(
          id: p['id'],
          username: p['username'],
          displayName: p['display-name'],
          validation: p['validation']);
    }
    List<SnapMedia> media;
    if (json['media'] != null) {
      media = <SnapMedia>[];
      for (var m in json['media']) {
        media.add(SnapMedia(m['type'], m['url'],
            width: m['width'], height: m['height']));
      }
    }
    List<String> tracks;
    if (json['tracks'] != null) {
      tracks = <String>[];
      for (var t in json['tracks']) {
        tracks.add(t);
      }
    }
    return Snap(
        apps: apps,
        channel: json['channel'],
        channels: channels,
        contact: json['contact'],
        description: json['description'],
        downloadSize: json['download-size'],
        id: json['id'],
        installedSize: json['installed-size'],
        license: json['license'],
        media: media,
        name: json['name'],
        publisher: publisher,
        revision: json['revision'],
        storeUrl: json['store-url'],
        summary: json['summary'],
        title: json['title'],
        tracks: tracks,
        type: json['type'],
        version: json['version'],
        website: json['website']);
  }
}
