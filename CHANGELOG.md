# Changelog

## 0.2.0

* Require Dart 1.17.
* Replace HttpUnixClient with new HttpClient.connectionFactory.
* Use Object.hash for hashCode calculations.
* Remove unix socket workaround in tests.
* Add missing documentation.

## 0.1.2

* Only list as supporting Linux.
* Fix login response parsing.
* Make login response ID not nullable.
* Add missing parameter from logout().
* Fix parsing change with no tasks.
* Implement SnapdClient.connections.
* Add SnapdClient.connect/disconnect.
* Add missing close() in README example.

## 0.1.1

* Fix errors parsing snap responses.
* Added regresion tests.

## 0.1.0

* Initial release
