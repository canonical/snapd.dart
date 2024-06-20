// ignore_for_file: avoid_print

import 'package:snapd/snapd.dart';

void main() async {
  final client = SnapdClient();
  final loginResult = await client.login('foo@example.com', 'secret');
  print(loginResult);
  client.close();
}
