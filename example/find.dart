import 'dart:math';
import 'package:snapd/snapd.dart';

void main(List<String> args) async {
  String? query;
  if (args.isNotEmpty) {
    query = args[0];
  }

  var client = SnapdClient();
  var snaps = await client.find(query: query);

  // Show basic information about the search results
  var rows = [
    ['Name', 'Version', 'Publisher', 'Summary']
  ];
  for (var snap in snaps) {
    var publisher = snap.publisher?.username;
    rows.add([snap.name, snap.version, publisher ?? '-', snap.summary]);
  }
  var columnWidths = [0, 0, 0, 0];
  for (var row in rows) {
    for (var i = 0; i < columnWidths.length; i++) {
      columnWidths[i] = max(columnWidths[i], row[i].length + 1);
    }
  }
  for (var row in rows) {
    var line = '';
    for (var i = 0; i < columnWidths.length; i++) {
      line += row[i].padRight(columnWidths[i]);
    }
    print(line);
  }

  client.close();
}
