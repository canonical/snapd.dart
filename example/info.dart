import 'package:snapd/snapd.dart';

void main(List<String> args) async {
  if (args.isEmpty) {
    print('Usage: info <snap>');
    return;
  }

  var client = SnapdClient();
  var snaps = await client.find(name: args[0]);
  var snap = snaps[0];

  var publisher = '-';
  if (snap.publisher != null) {
    publisher = snap.publisher.displayName;
  }

  print('name:      ${snap.name}');
  print('summary:   ${snap.summary}');
  print('publisher: ${publisher}');
  print('store-url: ${snap.storeUrl}');
  print('contact:   ${snap.contact}');
  print('license:   ${snap.license}');
  print('description: |');
  for (var line in snap.description.split('\n')) {
    print('  ${line}');
  }
  print('snap-id: ${snap.id}');
  if (snap.tracks != null) {
    print('channels:');
    for (var track in snap.tracks) {
      for (var risk in ['stable', 'candidate', 'beta', 'edge']) {
        var name = '${track}/${risk}';
        var channel = snap.channels[name];
        var description = '↑';
        if (channel != null) {
          description = '${channel.version} (${channel.revision})';
        }
        print('  ${track}/${risk.padRight(9)}: ${description}');
      }
    }
  }

  client.close();
}
