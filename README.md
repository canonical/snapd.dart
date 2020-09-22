[![Pub Package](https://img.shields.io/pub/v/snapd.svg)](https://pub.dev/packages/snapd)

Provides a client to access snapd, which allows you to manage, search and install [snaps](https://snapcraft.io/) on a Linux system.

## Example

```dart
import 'package:snapd/snapd.dart';

var client = SnapdClient();
var snaps = await client.snaps();
print (snaps);
```

## Contributing to snapd.dart

We welcome contributions! See the [contribution guide](CONTRIBUTING.md) for more details.
