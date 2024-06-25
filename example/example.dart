// ignore_for_file: avoid_print

import 'dart:math';
import 'package:snapd/snapd.dart';

void main() async {
  final client = SnapdClient();
  await client.loadAuthorization();

  // Get the installed snaps.
  final snaps = await client.getSnaps();

  // Show basic information about installed snaps
  snaps.sort((a, b) => a.name.compareTo(b.name));
  final rows = [
    ['Name', 'Version', 'Rev', 'Tracking', 'Publisher'],
  ];
  for (final snap in snaps) {
    final publisher = snap.publisher?.username;
    rows.add(
      [
        snap.name,
        snap.version,
        snap.revision.toString(),
        snap.channel,
        publisher ?? '-',
      ],
    );
  }
  final columnWidths = [0, 0, 0, 0, 0];
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
