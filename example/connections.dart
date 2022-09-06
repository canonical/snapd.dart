import 'dart:math';
import 'package:snapd/snapd.dart';

void usage() {
  print('Usage: connections [snap] [--all]');
}

void main(List<String> args) async {
  var client = SnapdClient();
  await client.loadAuthorization();

  String? snap;
  SnapdConnectionFilter? filter;
  for (var arg in args) {
    if (arg.startsWith('--')) {
      if (arg == '--all') {
        filter = SnapdConnectionFilter.all;
      } else {
        usage();
        return;
      }
    } else {
      if (snap != null) {
        usage();
        return;
      }
      snap = arg;
      filter = SnapdConnectionFilter.all;
    }
  }

  var response = await client.getConnections(snap: snap, filter: filter);
  var rows = [];
  String getInterfaceDescription(
      String interface, Map<String, dynamic> attributes) {
    if (interface == 'content') {
      return 'content[${attributes['content']}]';
    } else {
      return interface;
    }
  }

  String getPlugDescription(SnapPlug plug) {
    return '${plug.snap != 'snapd' ? plug.snap : ''}:${plug.plug}';
  }

  String getSlotDescription(SnapSlot slot) {
    return '${slot.snap != 'snapd' ? slot.snap : ''}:${slot.slot}';
  }

  for (var plug in response.plugs) {
    var interfaceDescription =
        getInterfaceDescription(plug.interface ?? '', plug.attributes);
    var plugDescription = getPlugDescription(plug);
    if (plug.connections.isNotEmpty) {
      for (var slot in plug.connections) {
        var slotDescription = getSlotDescription(slot);
        rows.add([interfaceDescription, plugDescription, slotDescription]);
      }
    } else {
      rows.add([interfaceDescription, plugDescription, '-']);
    }
  }
  for (var slot in response.slots) {
    var interfaceDescription =
        getInterfaceDescription(slot.interface ?? '', slot.attributes);
    var slotDescription = getSlotDescription(slot);
    if (slot.connections.isNotEmpty) {
      for (var plug in slot.connections) {
        // Skip connections to self - already added above.
        if (plug.snap == snap) {
          continue;
        }

        var plugDescription = getPlugDescription(plug);
        rows.add([interfaceDescription, plugDescription, slotDescription]);
      }
    } else {
      rows.add([interfaceDescription, '-', slotDescription]);
    }
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
