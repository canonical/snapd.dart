[![Pub Package](https://img.shields.io/pub/v/snapd.svg)](https://pub.dev/packages/snapd)

A library to interface with the [Snap daemon](https://snapcraft.io/).

## Example

```dart
import 'package:snapd/snapd.dart';

var client = SnapdClient();
var snaps = await client.snaps();
print (snaps);
```
