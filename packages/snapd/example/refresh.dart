// ignore_for_file: avoid_print

import 'package:snapd/snapd.dart';

void main(List<String> args) async {
  if (args.length != 1) {
    print('Usage: refresh <snap>');
    return;
  }
  final name = args[0];

  final client = SnapdClient();
  await client.loadAuthorization();
  final id = await client.refresh(name);
  while (true) {
    final change = await client.getChange(id);
    if (change.ready) {
      break;
    }

    await Future.delayed(const Duration(milliseconds: 100));
  }

  client.close();
}
