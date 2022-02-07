import 'package:snapd/snapd.dart';

void main() async {
  var client = SnapdClient();

  var info = await client.systemInfo();
  print('Running snapd ${info.version}');

  client.close();
}
