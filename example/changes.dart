import 'package:snapd/snapd.dart';

void main() async {
  var client = SnapdClient();
  await client.loadAuthorization();

  // Get the installed snaps.
  var changes = await client.getChanges(filter: SnapdChangeFilter.all);

  print('ID Status Spawn Ready Summary');
  for (var change in changes) {
    print(
        '${change.id} ${change.status} ${change.spawnTime} ${change.readyTime} ${change.summary}');
  }

  client.close();
}
