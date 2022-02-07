import 'package:snapd/snapd.dart';

void main() async {
  var client = SnapdClient();
  await client.loadAuthorization();

  // Get the installed apps.
  var apps = await client.apps();
  for (var app in apps) {
    print(app.name);
  }

  client.close();
}
