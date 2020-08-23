import 'dart:convert';

import 'http_unix_client.dart';

class SnapdSnap {
  final String name;

  SnapdSnap(this.name);

  @override
  toString() {
    return "SnapdSnap('${name}')";
  }
}

class SnapdLoginResponse {
  final int id;
  final String username;
  final String email;
  final String macaroon;
  final List<String> discharges;

  SnapdLoginResponse(
      this.id, this.username, this.email, this.macaroon, this.discharges);

  @override
  String toString() {
    return 'SnapdLoginResponse(id: ${id}, username: ${username}, email: ${email}, macaroon: ${macaroon}, discharges: ${discharges})';
  }
}

class SnapdClient {
  var _client = HttpUnixClient('/var/run/snapd.socket');

  /// Gets the currently installed snaps.
  Future<List<SnapdSnap>> snaps() async {
    var result = await _getSync('/v2/snaps');
    var snaps = <SnapdSnap>[];
    for (var snap in result) {
      snaps.add(SnapdSnap(snap['name']));
    }
    return snaps;
  }

  /// Searches for snaps.
  ///
  /// If [query] searches for snaps that match the given string.
  /// If [name] is provided, match the snap with the given name.
  /// If [section] is provided, search within that store section.
  Future<List<SnapdSnap>> find(
      {String query, String name, String section}) async {
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
    var snaps = <SnapdSnap>[];
    for (var snap in result) {
      snaps.add(SnapdSnap(snap['name']));
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
    var response =
        await _client.get(Uri.http('localhost', path, queryParameters));
    var snapResponse = json.decode(response.body);
    // FIXME(robert-ancell): Handle error results
    return snapResponse['result'];
  }

  /// Does a synchronous request to snapd.
  Future<dynamic> _postSync(String path, dynamic request) async {
    var response = await _client.post(Uri.http('localhost', path),
        headers: {'Content-Type': 'application/json'},
        body: json.encode(request));
    var snapResponse = json.decode(response.body);
    // FIXME(robert-ancell): Handle error results
    return snapResponse['result'];
  }
}
