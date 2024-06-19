import 'package:snapd/snapd.dart';

void main() async {
  final client = SnapdClient();

  final info = await client.systemInfo();
  print('Running snapd ${info.version}');

  client.close();
}
