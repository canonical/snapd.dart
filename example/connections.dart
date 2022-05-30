import 'dart:math';
import 'package:snapd/snapd.dart';

void main() async {
  var client = SnapdClient();
  await client.loadAuthorization();

  // Get the installed connections.
  var response = await client.getConnections();
  var rows = [];
  for (var connection in response.established) {
    var interface = connection.interface;
    if (interface == 'content') {
      interface = 'content[${connection.slotAttributes['content']}]';
    }
    var plug = '${connection.plug.snap}:${connection.plug.plug}';
    var slot =
        '${connection.slot.snap != 'core' ? connection.slot.snap : ''}:${connection.slot.slot}';
    rows.add([interface, plug, slot]);
  }
  rows.sort((a, b) {
    for (var i = 0; i < a.length; i++) {
      var d = a[i].compareTo(b[i]);
      if (d != 0) {
        return d;
      }
    }
    return 0;
  });
  rows.insert(0, ['Interface', 'Plug', 'Slot']);
  var columnWidths = [0, 0, 0];
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
