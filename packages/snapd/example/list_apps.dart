// ignore_for_file: avoid_print

import 'package:snapd/snapd.dart';

void main() async {
  final client = SnapdClient();
  await client.loadAuthorization();

  // Get the installed apps.
  final apps = await client.getApps();
  for (final app in apps) {
    print(app.name);
  }

  client.close();
}
