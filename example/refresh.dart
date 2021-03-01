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
  print('Change ID: ${id}');

  client.close();
}
