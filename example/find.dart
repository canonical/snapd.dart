// ignore_for_file: avoid_print

import 'dart:math';
import 'package:snapd/snapd.dart';

void main(List<String> args) async {
  String? query;
  if (args.isNotEmpty) {
    query = args[0];
  }

  final client = SnapdClient();
  final snaps = await client.find(query: query);

  // Show basic information about the search results
  final rows = [
    ['Name', 'Version', 'Publisher', 'Summary'],
  ];
  for (final snap in snaps) {
    final publisher = snap.publisher?.username;
    rows.add([snap.name, snap.version, publisher ?? '-', snap.summary]);
  }
  final columnWidths = [0, 0, 0, 0];
  for (final row in rows) {
    for (var i = 0; i < columnWidths.length; i++) {
      columnWidths[i] = max(columnWidths[i], row[i].length + 1);
    }
  }
  for (final row in rows) {
    var line = '';
    for (var i = 0; i < columnWidths.length; i++) {
      line += row[i].padRight(columnWidths[i]);
    }
    print(line);
  }

  client.close();
}
