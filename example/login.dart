import 'package:snapd/snapd.dart';

void main() async {
  var client = SnapdClient();
  var loginResult = await client.login('foo@example.com', 'secret');
  print(loginResult);
  client.close();
}
