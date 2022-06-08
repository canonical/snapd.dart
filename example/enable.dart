import 'package:snapd/snapd.dart';

void main(List<String> args) async {
  if (args.length != 1) {
    print('Usage: install <snap>');
    return;
  }
  var name = args[0];

  var client = SnapdClient();
  await client.loadAuthorization();
  var id = await client.enable(name);
  while (true) {
    var change = await client.getChange(id);
    if (change.ready) {
      break;
    }

    await Future.delayed(Duration(milliseconds: 100));
  }

  client.close();
}
