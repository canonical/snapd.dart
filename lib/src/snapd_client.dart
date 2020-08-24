import 'dart:convert';

import 'http_unix_client.dart';

/// Describes a snap publisher.
class SnapPublisher {
  /// Unique ID for this publisher.
  final String id;

  /// Unique username for this publisher.
  final String username;

  /// Name to use when displaying this publisher.
  final String display_name;

  /// Validation level for this publisher.
  final String validation;

  SnapPublisher({this.id, this.username, this.display_name, this.validation});
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
  /// Unique ID for this snap.
  final String id;

  /// Unique name for this snap.
  final String name;

  /// Single line summary.
  final String summary;

  /// Multi line description.
  final String description;

  /// Version of this snap.
  final String version;

  /// Revision of this snap.
  final String revision;

  /// Publisher information.
  final SnapPublisher publisher;

  /// Channel this snap is tracking.
  final String channel;

  /// Media associated with this snap.
  final List<SnapMedia> media;

  Snap(
      {this.id,
      this.name,
      this.summary,
      this.description,
      this.version,
      this.revision,
      this.publisher,
      this.channel,
      this.media});

  @override
  toString() {
    return "Snap('${name}')";
  }
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

/// Manages a connection to the snapd server.
class SnapdClient {
  var _client = HttpUnixClient('/var/run/snapd.socket');
  String _macaroon;
  List<String> _discharges;
  String _userAgent = 'snapd.dart';

  /// Sets the authorization used in the connection to snapd.
  void setAuthorization(String macaroon, List<String> discharges) {
    _macaroon = macaroon;
    _discharges = discharges;
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
  String set userAgent(String value) => _userAgent = value;

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

  /// Terminates all active connections. If a client remains unclosed, the Dart process may not terminate.
  void close() {
    _client.close();
  }

  /// Does a synchronous request to snapd.
  Future<dynamic> _getSync(String path,
      [Map<String, String> queryParameters]) async {
    var response = await _client.get(
        Uri.http('localhost', path, queryParameters),
        headers: _makeHeaders());
    var snapResponse = json.decode(response.body);
    // FIXME(robert-ancell): Handle error results
    return snapResponse['result'];
  }

  /// Does a synchronous request to snapd.
  Future<dynamic> _postSync(String path, [dynamic request]) async {
    var headers = _makeHeaders();
    headers['Content-Type'] = 'application/json';
    var response = await _client.post(Uri.http('localhost', path),
        headers: headers, body: json.encode(request));
    var snapResponse = json.decode(response.body);
    // FIXME(robert-ancell): Handle error results
    return snapResponse['result'];
  }

  /// Makes base HTTP headers to send.
  Map<String, String> _makeHeaders() {
    var headers = <String, String>{};
    if (_userAgent != null) {
      headers['User-Agent'] = _userAgent;
    }
    if (_macaroon != null) {
      var authorization = 'Macaroon root="${_macaroon}"';
      for (var discharge in _discharges) {
        authorization += ',discharge="${discharge}"';
      }
      headers['Authorization'] = authorization;
    }
    return headers;
  }

  /// Convert a JSON snap representation to a Snap object.
  Snap _makeSnap(dynamic json) {
    SnapPublisher publisher;
    var p = json['publisher'];
    if (p != null) {
      publisher = SnapPublisher(
          id: p['id'],
          username: p['username'],
          display_name: p['display-name'],
          validation: p['validation']);
    }
    var media = <SnapMedia>[];
    if (json['media'] != null) {
      for (var m in json['media']) {
        media.add(SnapMedia(m['type'], m['url'],
            width: m['width'], height: m['height']));
      }
    }
    return Snap(
        channel: json['channel'],
        description: json['description'],
        id: json['id'],
        media: media,
        name: json['name'],
        publisher: publisher,
        revision: json['revision'],
        summary: json['summary'],
        version: json['version']);
  }
}
