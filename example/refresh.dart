import 'package:snapd/snapd.dart';

void main(List<String> args) async {
  var client = SnapdClient();
  await client.loadAuthorization();
  String id;
  if (args.isNotEmpty) {
    id = await client.refresh(args);
  } else {
    id = await client.refresh();
  }
  while (true) {
    var change = await client.getChange(id);
    if (change.ready) {
      break;
    }

    await Future.delayed(Duration(milliseconds: 100));
  }

  client.close();
}
