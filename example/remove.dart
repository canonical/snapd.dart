import 'package:snapd/snapd.dart';

void main(List<String> args) async {
  if (args.isEmpty) {
    print('Usage: remove <snap>');
    return;
  }

  var client = SnapdClient();
  await client.loadAuthorization();
  var id = await client.remove(args);
  print('Change ID: ${id}');

  client.close();
}
