// ignore_for_file: avoid_print

import 'dart:math';
import 'package:snapd/snapd.dart';

void usage() {
  print('Usage: connections [snap] [--all]');
}

void main(List<String> args) async {
  final client = SnapdClient();
  await client.loadAuthorization();

  String? snap;
  SnapdConnectionFilter? filter;
  for (final arg in args) {
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

  final response = await client.getConnections(snap: snap, filter: filter);
  final rows = <List<String>>[];
  String getInterfaceDescription(
    String interface,
    Map<String, dynamic> attributes,
  ) {
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

  for (final plug in response.plugs) {
    final interfaceDescription =
        getInterfaceDescription(plug.interface ?? '', plug.attributes);
    final plugDescription = getPlugDescription(plug);
    if (plug.connections.isNotEmpty) {
      for (final slot in plug.connections) {
        final slotDescription = getSlotDescription(slot);
        rows.add([interfaceDescription, plugDescription, slotDescription]);
      }
    } else {
      rows.add([interfaceDescription, plugDescription, '-']);
    }
  }
  for (final slot in response.slots) {
    final interfaceDescription =
        getInterfaceDescription(slot.interface ?? '', slot.attributes);
    final slotDescription = getSlotDescription(slot);
    if (slot.connections.isNotEmpty) {
      for (final plug in slot.connections) {
        // Skip connections to self - already added above.
        if (plug.snap == snap) {
          continue;
        }

        final plugDescription = getPlugDescription(plug);
        rows.add([interfaceDescription, plugDescription, slotDescription]);
      }
    } else {
      rows.add([interfaceDescription, '-', slotDescription]);
    }
  }
  rows.sort((a, b) {
    for (var i = 0; i < a.length; i++) {
      final d = a[i].compareTo(b[i]);
      if (d != 0) {
        return d;
      }
    }
    return 0;
  });
  rows.insert(0, ['Interface', 'Plug', 'Slot']);
  final columnWidths = [0, 0, 0];
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
