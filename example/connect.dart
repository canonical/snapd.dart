import 'package:snapd/snapd.dart';

void usage() {
  print('Usage connect <snap>:<plug>');
}

void main(List<String> args) async {
  var client = SnapdClient();
  await client.loadAuthorization();

  if (args.isEmpty || args.length > 2) {
    usage();
    return;
  }

  var tokens = args[0].split(':');
  if (tokens.length != 2) {
    usage();
    return;
  }
  var plugSnap = tokens[0];
  var plug = tokens[1];
  String? slotSnap;
  String? slot;
  if (args.length > 1) {
    var tokens = args[1].split(':');
    if (tokens.length > 2) {
      usage();
      return;
    }
    slotSnap = tokens[0];
    slot = tokens.length == 2 ? tokens[1] : null;
  }

  var id =
      await client.connect(plugSnap, plug, slotSnap ?? 'snapd', slot ?? plug);
  while (true) {
    var change = await client.getChange(id);
    if (change.ready) {
      break;
    }

    await Future.delayed(Duration(milliseconds: 100));
  }

  client.close();
}
