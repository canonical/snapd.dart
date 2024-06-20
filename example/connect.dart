// ignore_for_file: avoid_print

import 'package:snapd/snapd.dart';

void usage() {
  print('Usage connect <snap>:<plug>');
}

void main(List<String> args) async {
  final client = SnapdClient();
  await client.loadAuthorization();

  if (args.isEmpty || args.length > 2) {
    usage();
    return;
  }

  final tokens = args[0].split(':');
  if (tokens.length != 2) {
    usage();
    return;
  }
  final plugSnap = tokens[0];
  final plug = tokens[1];
  String? slotSnap;
  String? slot;
  if (args.length > 1) {
    final tokens = args[1].split(':');
    if (tokens.length > 2) {
      usage();
      return;
    }
    slotSnap = tokens[0];
    slot = tokens.length == 2 ? tokens[1] : null;
  }

  final id =
      await client.connect(plugSnap, plug, slotSnap ?? 'snapd', slot ?? plug);
  while (true) {
    final change = await client.getChange(id);
    if (change.ready) {
      break;
    }

    await Future.delayed(const Duration(milliseconds: 100));
  }

  client.close();
}
