import 'dart:math';
import 'package:snapd/snapd.dart';

void main() async {
  var client = SnapdClient();
  await client.loadAuthorization();

  // Get the installed snaps.
  var snaps = await client.snaps();

  // Show basic information about installed snaps
  snaps.sort((a, b) => a.name.compareTo(b.name));
  var rows = [
    ['Name', 'Version', 'Rev', 'Tracking', 'Publisher']
  ];
  for (var snap in snaps) {
    var channel = '-';
    if (snap.channel != '') {
      channel = snap.channel;
    }
    var publisher = '-';
    if (snap.publisher != null) {
      publisher = snap.publisher.username;
    }
    rows.add([
      snap.name,
      snap.version ?? '-',
      snap.revision ?? '-',
      channel,
      publisher
    ]);
  }
  var columnWidths = [0, 0, 0, 0, 0];
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
