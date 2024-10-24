// ignore_for_file: avoid_print

import 'package:snapd/snapd.dart';

void main() async {
  final client = SnapdClient();
  await client.loadAuthorization();

  // Get the installed snaps.
  final changes = await client.getChanges(filter: SnapdChangeFilter.all);

  print('ID Status Spawn Ready Summary');
  for (final change in changes) {
    print(
      '${change.id} ${change.status} ${change.spawnTime} ${change.readyTime} ${change.summary}',
    );
  }

  client.close();
}
