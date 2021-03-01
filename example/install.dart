import 'package:snapd/snapd.dart';

void main(List<String> args) async {
  if (args.isEmpty) {
    print('Usage: install <snap>');
    return;
  }

  var client = SnapdClient();
  await client.loadAuthorization();
  var id = await client.install(args);
  print('Change ID: ${id}');

  client.close();
}
