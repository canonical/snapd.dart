// ignore_for_file: avoid_print

import 'package:snapd/snapd.dart';

void main(List<String> args) async {
  if (args.length != 1) {
    print('Usage: info <snap>');
    return;
  }
  final name = args[0];

  final client = SnapdClient();

  Snap? localSnap;
  try {
    localSnap = await client.getSnap(name);
  } on SnapdException {
    localSnap = null;
  }

  Snap? storeSnap;
  try {
    final snaps = await client.find(name: name);
    storeSnap = snaps[0];
  } on SnapdException {
    storeSnap = null;
  }

  if (localSnap == null && storeSnap == null) {
    print('error: no snap found for "$name"');
    client.close();
    return;
  }

  final publisher = storeSnap?.publisher?.displayName;
  final summary = storeSnap != null ? storeSnap.summary : localSnap!.summary;
  final license =
      storeSnap != null ? storeSnap.license : localSnap!.license ?? 'unset';
  var description =
      storeSnap != null ? storeSnap.description : localSnap!.description;

  print('name:      $name');
  print('summary:   $summary');
  print('publisher: ${publisher ?? '-'}');
  if (storeSnap != null) {
    print('store-url: ${storeSnap.storeUrl}');
    print('contact:   ${storeSnap.contact}');
  }
  print('license:   $license');
  print('description: |');
  if (description.endsWith('\n')) {
    description = description.substring(0, description.length - 1);
  }
  for (final line in description.split('\n')) {
    print('  $line');
  }
  if (storeSnap != null) {
    print('snap-id:      ${storeSnap.id}');
  }
  if (localSnap != null && localSnap.trackingChannel != null) {
    print('tracking:     ${localSnap.trackingChannel}');
  }
  if (localSnap != null && localSnap.installDate != null) {
    print('refresh-date: ${localSnap.installDate}');
  }
  if (storeSnap != null && storeSnap.tracks.isNotEmpty) {
    print('channels:');
    for (final track in storeSnap.tracks) {
      for (final risk in ['stable', 'candidate', 'beta', 'edge']) {
        final name = '$track/$risk';
        final channel = storeSnap.channels[name];
        var description = '↑';
        if (channel != null) {
          description = '${channel.version} (${channel.revision})';
        }
        print('  $track/${risk.padRight(9)}: $description');
      }
    }
  }
  if (localSnap != null) {
    print('installed:    ${localSnap.version} (${localSnap.revision})');
  }

  client.close();
}
