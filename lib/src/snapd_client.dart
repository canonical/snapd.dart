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
    var response = await _client.get('/v2/snaps');
    var snapResponse = json.decode(response.body);
    var result = snapResponse['result'];
    var snaps = <SnapdSnap>[];
    for (var snap in result) {
      snaps.add(SnapdSnap(snap['name']));
    }
    return snaps;
  }

  /// Terminates all active connections. If a client remains unclosed, the Dart process may not terminate.
  void close() {
    _client.close();
  }
}
