import 'package:snapd/snapd.dart';

void main() async {
  var client = SnapdClient();
  var snaps = await client.snaps();
  print(snaps);
  client.close();
}
