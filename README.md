[![Pub Package](https://img.shields.io/pub/v/snapd.svg)](https://pub.dev/packages/snapd)
[![codecov](https://codecov.io/gh/canonical/snapd.dart/branch/main/graph/badge.svg?token=QX3FFA5R9S)](https://codecov.io/gh/canonical/snapd.dart)

Provides a client to access snapd, which allows you to manage, search and install [snaps](https://snapcraft.io/) on a Linux system.

## Example

```dart
import 'package:snapd/snapd.dart';

var client = SnapdClient();
var snaps = await client.getSnaps();
print (snaps);
client.close();
```

## Contributing to snapd.dart

We welcome contributions! See the [contribution guide](CONTRIBUTING.md) for more details.
