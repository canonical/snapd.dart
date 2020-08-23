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

  /// Does a synchronous request to snapd.
  Future<dynamic> _getSync(String path,
      [Map<String, String> queryParameters]) async {
    var response =
        await _client.get(Uri.http('localhost', path, queryParameters));
    var snapResponse = json.decode(response.body);
    // FIXME(robert-ancell): Handle error results
    return snapResponse['result'];
  }

  /// Terminates all active connections. If a client remains unclosed, the Dart process may not terminate.
  void close() {
    _client.close();
  }
}
