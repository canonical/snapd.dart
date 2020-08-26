import 'package:snapd/snapd.dart';

void main(List<String> args) async {
  if (args.isEmpty) {
    print('Usage: remove <snap>');
    return;
  }

  var client = SnapdClient();
  await client.loadAuthorization();
  var id = await client.remove(args);
  while (true) {
    var change = await client.getChange(id);
    if (change.ready) {
      break;
    }

    await Future.delayed(Duration(milliseconds: 100));
  }

  client.close();
}
