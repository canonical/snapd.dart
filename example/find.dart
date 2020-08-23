import 'package:snapd/snapd.dart';

void main() async {
  var client = SnapdClient();
  var snaps = await client.find(query: 'flutter');
  print(snaps);
  client.close();
}
