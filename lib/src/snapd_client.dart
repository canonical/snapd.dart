import 'dart:convert';
import 'dart:io';
import 'package:collection/collection.dart';
import 'package:path/path.dart' as p;

/// The current state of a snap.
enum SnapStatus { unknown, available, priced, installed, active }

/// Confinement used by a snap.
enum SnapConfinement { unknown, strict, devmode, classic }

/// Filter to select which changes to get from snapd.
enum SnapdChangeFilter { all, inProgress, ready }

/// Filter to select which apps to get from snapd.
enum SnapdAppFilter { service }

/// Filter to select which connections to get from snapd.
enum SnapdConnectionFilter { all }

/// Filter to select which apps to return from a collection search.
enum SnapFindFilter { refresh, private }

DateTime? _parseDateTime(String? value) {
  return value != null ? DateTime.parse(value) : null;
}

SnapStatus _parseStatus(String? value) {
  return {
        'available': SnapStatus.available,
        'priced': SnapStatus.priced,
        'installed': SnapStatus.installed,
        'active': SnapStatus.active
      }[value] ??
      SnapStatus.unknown;
}

SnapConfinement _parseConfinement(String? value) {
  return {
        'strict': SnapConfinement.strict,
        'classic': SnapConfinement.classic,
        'devmode': SnapConfinement.devmode
      }[value] ??
      SnapConfinement.unknown;
}

/// An exception thrown by a request to snapd.
class SnapdException implements Exception {
  /// Error kind.
  final String? kind;

  /// Message with error.
  final String message;

  SnapdException({this.kind, required this.message});

  @override
  String toString() => '$runtimeType(kind: $kind, message: $message)';
}

/// Describes an app provided by a snap.
class SnapApp {
  /// The snap this app is part of
  final String? snap;

  /// Name of the app.
  final String name;

  /// Desktop file the app uses.
  final String? desktopFile;

  /// Type of daemon this app is.
  final String? daemon;

  /// True if this service is enabled.
  final bool enabled;

  /// True if this service is active.
  final bool active;

  /// A unique ID for this app.
  final String? commonId;

  // FIXME(robert-ancell) Implement
  //List<SnapActivator> activators.

  const SnapApp(
      {required this.snap,
      required this.name,
      this.desktopFile,
      this.daemon,
      this.enabled = true,
      this.active = true,
      this.commonId});

  factory SnapApp._fromJson(Map<String, dynamic> value) {
    return SnapApp(
        snap: value['snap'],
        name: value['name'],
        desktopFile: value['desktop-file'],
        daemon: value['daemon'],
        enabled: value['enabled'] ?? true,
        active: value['active'] ?? true,
        commonId: value['common-id']);
  }

  @override
  String toString() =>
      '$runtimeType(snap: $snap, name: $name, desktopFile: $desktopFile, daemon: $daemon, enabled: $enabled, active: $active, commonId: $commonId)';
}

/// Describes a channel available for a snap.
class SnapChannel {
  /// Confinement of this snap in this channel.
  final SnapConfinement confinement;

  /// The date this revision was released into the channel.
  final DateTime releasedAt;

  /// Revision of this snap in this channel.
  final String revision;

  /// Size of the snap in this channel in bytes.
  final int size;

  /// Version of this snap in this channel.
  final String version;

  const SnapChannel(
      {this.confinement = SnapConfinement.unknown,
      required this.releasedAt,
      this.revision = '',
      this.size = 0,
      this.version = ''});

  factory SnapChannel._fromJson(value) {
    return SnapChannel(
        confinement: _parseConfinement(value['confinement']),
        releasedAt: _parseDateTime(value['released-at']) ?? DateTime.utc(1970),
        revision: value['revision'] ?? '',
        size: value['size'] ?? 0,
        version: value['version'] ?? '');
  }

  @override
  String toString() =>
      '$runtimeType(confinement: $confinement, releasedAt: $releasedAt, revision: $revision, size: $size, version: $version)';
}

/// Describes a snap publisher.
class SnapPublisher {
  /// Unique ID for this publisher.
  final String id;

  /// Unique username for this publisher.
  final String username;

  /// Name to use when displaying this publisher.
  final String displayName;

  /// Validation level for this publisher.
  final String? validation;

  const SnapPublisher(
      {this.id = '',
      this.username = '',
      this.displayName = '',
      this.validation});

  factory SnapPublisher._fromJson(value) {
    return SnapPublisher(
        id: value['id'] ?? '',
        username: value['username'] ?? '',
        displayName: value['display-name'] ?? '',
        validation: value['validation']);
  }

  @override
  String toString() =>
      '$runtimeType(id: $id, username: $username, displayName: $displayName, validation: $validation)';
}

/// Describes a piece of media associated with a snap.
class SnapMedia {
  /// Media type
  final String type;

  /// URL of media.
  final String url;

  /// Width of media in pixels.
  final int? width;

  /// Height of media in pixels.
  final int? height;

  const SnapMedia(
      {required this.type, required this.url, this.width, this.height});

  factory SnapMedia._fromJson(value) {
    return SnapMedia(
        type: value['type'] ?? '',
        url: value['url'] ?? '',
        width: value['width'],
        height: value['height']);
  }

  @override
  String toString() =>
      '$runtimeType(type: $type, url: $url, width: $width, height: $height)';
}

/// Describes a snap package.
class Snap {
  /// Apps this snap provides.
  final List<SnapApp> apps;

  /// The base snap this snap uses.
  final String? base;

  /// The channel this snap is from, e.g. "stable".
  final String channel;

  /// Channels available for this snap.
  final Map<String, SnapChannel> channels;

  /// Common IDs this snap contains.
  final List<String> commonIds;

  /// The confinement this snap is using.
  final SnapConfinement confinement;

  /// Contact URL.
  final String? contact;

  /// Multi line description.
  final String description;

  /// True if this snap is running in developer mode.
  final bool devmode;

  /// Download size in bytes.
  final int? downloadSize;

  /// The date this snap will re-enable autmatic refreshing or null if no hold is present.
  final DateTime? hold;

  /// Unique ID for this snap.
  final String id;

  /// The date this snap was installed.
  final DateTime? installDate;

  /// Installed size in bytes.
  final int? installedSize;

  /// True if this snap is running in enforced confinement (jail) mode.
  final bool jailmode;

  /// Package license.
  final String? license;

  /// Media associated with this snap.
  final List<SnapMedia> media;

  /// The path this snap is mounted from, which is a .snap file for installed snaps and a directory for snaps in try mode.
  final String? mountedFrom;

  /// Unique name for this snap. Use [title] for displaying.
  final String name;

  /// True if this snap is only available to the developer.
  final bool private;

  /// Publisher information.
  final SnapPublisher? publisher;

  /// Revision of this snap.
  final String revision;

  /// The current status of this snap.
  final SnapStatus status;

  /// URL linking to the snap store page on this snap.
  final String? storeUrl;

  /// Single line summary.
  final String summary;

  /// Title of this snap.
  final String? title;

  /// The channel that updates will be installed from, e.g. "stable".
  final String? trackingChannel;

  /// Tracks this snap uses.
  final List<String> tracks;

  /// Type of snap.
  final String type;

  /// Version of this snap.
  final String version;

  /// Website URL.
  final String? website;

  const Snap(
      {this.apps = const [],
      this.base,
      this.channel = '',
      this.channels = const {},
      this.commonIds = const [],
      this.confinement = SnapConfinement.unknown,
      this.contact = '',
      this.description = '',
      this.devmode = false,
      this.downloadSize,
      this.hold,
      this.id = '',
      this.installDate,
      this.installedSize,
      this.jailmode = false,
      this.license,
      this.media = const [],
      this.mountedFrom,
      required this.name,
      this.private = false,
      this.publisher,
      this.revision = '',
      this.status = SnapStatus.unknown,
      this.storeUrl,
      this.summary = '',
      this.title = '',
      this.trackingChannel,
      this.tracks = const [],
      this.type = '',
      this.version = '',
      this.website});

  factory Snap._fromJson(Map<String, dynamic> value) {
    return Snap(
        apps: value['apps'] != null
            ? (value['apps'] as List).map((v) => SnapApp._fromJson(v)).toList()
            : [],
        base: value['base'],
        channel: value['channel'],
        channels: value['channels'] != null
            ? (value['channels'] as Map)
                .map((k, v) => MapEntry(k, SnapChannel._fromJson(v)))
            : {},
        commonIds: value['common-ids']?.cast<String>() ?? [],
        confinement: _parseConfinement(value['confinement']),
        contact: value['contact'] ?? '',
        description: value['description'] ?? '',
        devmode: value['devmode'] ?? false,
        downloadSize: value['download-size'],
        hold: _parseDateTime(value['hold']),
        id: value['id'],
        installDate: _parseDateTime(value['install-date']),
        installedSize: value['installed-size'],
        jailmode: value['jailmode'] ?? false,
        license: value['license'],
        mountedFrom: value['mounted-from'],
        media: value['media'] != null
            ? (value['media'] as List)
                .map((v) => SnapMedia._fromJson(v))
                .toList()
            : [],
        name: value['name'],
        private: value['private'] ?? false,
        publisher: value['publisher'] != null
            ? SnapPublisher._fromJson(value['publisher'])
            : null,
        revision: value['revision'] ?? '',
        storeUrl: value['store-url'],
        summary: value['summary'],
        status: _parseStatus(value['status']),
        title: value['title'],
        trackingChannel: value['tracking-channel'],
        tracks: value['tracks']?.cast<String>() ?? [],
        type: value['type'] ?? '',
        version: value['version'] ?? '',
        website: value['website']);
  }

  @override
  String toString() =>
      "$runtimeType(apps: $apps, base: $base, channel: $channel, channels: $channels, commonIds: $commonIds, confinement: $confinement, contact: $contact, description: '${description.replaceAll('\n', '\\n')}', devmode: $devmode, downloadSize: $downloadSize, hold: $hold, id: $id, installDate: $installDate, installedSize: $installedSize, jailmode: $jailmode, license: $license, media: $media, mountedFrom: $mountedFrom, name: $name, private: $private, publisher: $publisher, revision: $revision, status: $status, storeUrl: $storeUrl, summary: '$summary', title: '$title', trackingChannel: $trackingChannel, tracks: $tracks, type: $type, version: $version, website: $website)";
}

/// Response received when getting system information.
class SnapdSystemInfoResponse {
  /// The architecture snapd is running on.
  final String architecture;

  /// The build of snapd.
  final String buildId;

  /// The confinement level that is supported.
  final SnapConfinement confinement;

  /// The version of the Linux kernel this is running on.
  final String kernelVersion;

  // FIXME(robert-ancell): locations

  final bool managed;

  /// True if running on a classic system.
  final bool onClassic;

  // FIXME(robert-ancell): os-release

  /// The last time the system refreshed.
  final DateTime? refreshLast;

  /// The next time the system refreshed.
  final DateTime refreshNext;

  // FIXME(robert-ancell): Refresh timer.
  //String refreshTimer;

  // FIXME(robert-ancell): sandbox-features

  /// The core series in use.
  final String series;

  final String systemMode;

  /// The version of snapd.
  final String version;

  const SnapdSystemInfoResponse(
      {this.architecture = '',
      this.buildId = '',
      this.confinement = SnapConfinement.unknown,
      this.kernelVersion = '',
      this.managed = false,
      this.onClassic = false,
      this.refreshLast,
      required this.refreshNext,
      this.series = '',
      this.systemMode = '',
      this.version = ''});

  factory SnapdSystemInfoResponse._fromJson(value) {
    var refresh = value['refresh'];
    return SnapdSystemInfoResponse(
        architecture: value['architecture'] ?? '',
        buildId: value['build-id'] ?? '',
        confinement: _parseConfinement(value['confinement']),
        kernelVersion: value['kernel-version'] ?? '',
        managed: value['managed'] ?? false,
        onClassic: value['on-classic'] ?? false,
        refreshLast: refresh != null ? _parseDateTime(refresh['last']) : null,
        refreshNext:
            (refresh != null ? _parseDateTime(refresh['next']) : null) ??
                DateTime.utc(1970),
        series: value['series'] ?? '',
        systemMode: value['system-mode'] ?? '',
        version: value['version'] ?? '');
  }

  @override
  String toString() =>
      '$runtimeType(architecture: $architecture, buildId: $buildId, confinement: $confinement, kernelVersion: $kernelVersion, managed: $managed, onClassic: $onClassic, refreshLast: $refreshLast, refreshNext: $refreshNext, series: $series, systemMode: $systemMode, version: $version)';
}

/// Response received when logging in.
class SnapdLoginResponse {
  /// Id for this account, which can be used in [SnapdClient.logout].
  final int id;

  /// Username logged in with.
  final String? username;

  /// Email address logged in with.
  final String? email;

  /// Macaroon provided by the server.
  final String? macaroon;

  /// Discharges provided bu the server.
  final List<String> discharges;

  /// Secure Shell keys this user has.
  final List<String> sshKeys;

  const SnapdLoginResponse(
      {required this.id,
      this.username,
      this.email,
      this.macaroon,
      this.discharges = const [],
      this.sshKeys = const []});

  factory SnapdLoginResponse._fromJson(value) {
    return SnapdLoginResponse(
        id: value['id'],
        username: value['username'],
        email: value['email'],
        macaroon: value['macaroon'],
        discharges: value['discharges'].cast<String>() ?? [],
        sshKeys: value['ssh-keys'].cast<String>() ?? []);
  }

  @override
  String toString() =>
      '$runtimeType(id: $id, username: $username, email: $email, macaroon: $macaroon, discharges: $discharges)';
}

/// Information on a snap plug.
class SnapPlug {
  /// The snap this plug is provided by.
  final String snap;

  /// The plug name.
  final String plug;

  // Attributes for the plug.
  final Map<String, dynamic> attributes;

  /// The interface this plug uses.
  final String? interface;

  // Slots connected to this plug.
  final List<SnapSlot> connections;

  const SnapPlug(
      {required this.snap,
      required this.plug,
      this.attributes = const {},
      this.interface,
      this.connections = const []});

  factory SnapPlug._fromJson(value) {
    return SnapPlug(
        snap: value['snap'] ?? '',
        plug: value['plug'] ?? '',
        attributes: value['attrs']?.cast<String, dynamic>() ?? {},
        interface: value['interface'],
        connections: value['connections']
                ?.map<SnapSlot>((v) => SnapSlot._fromJson(v))
                ?.toList() ??
            []);
  }

  @override
  String toString() {
    var values = {'snap': snap, 'plug': plug};
    if (attributes.isNotEmpty) {
      values['attributes'] = '$attributes';
    }
    if (interface != null) {
      values['interface'] = '$interface';
    }
    if (connections.isNotEmpty) {
      values['connections'] = '$connections';
    }
    var args = values.entries.map((e) => '${e.key}: ${e.value}').join(', ');
    return '$runtimeType($args)';
  }

  @override
  bool operator ==(other) {
    if (identical(this, other)) return true;
    final deepEquals = const DeepCollectionEquality().equals;

    return other is SnapPlug &&
        other.snap == snap &&
        other.plug == plug &&
        deepEquals(other.attributes, attributes) &&
        other.interface == interface &&
        deepEquals(other.connections, connections);
  }

  @override
  int get hashCode => Object.hash(
      snap,
      plug,
      Object.hashAllUnordered(
          attributes.entries.map((e) => Object.hash(e.key, e.value))),
      interface,
      Object.hashAll(connections));
}

/// Information on a snap slot.
class SnapSlot {
  /// The snap this slot is provided by.
  final String snap;

  /// The slot name.
  final String slot;

  // Attributes for the slot.
  final Map<String, dynamic> attributes;

  /// The interface this slot uses.
  final String? interface;

  // Plugs connected to this slot.
  final List<SnapPlug> connections;

  const SnapSlot(
      {required this.snap,
      required this.slot,
      this.attributes = const {},
      this.interface,
      this.connections = const []});

  factory SnapSlot._fromJson(value) {
    return SnapSlot(
        snap: value['snap'] ?? '',
        slot: value['slot'] ?? '',
        attributes: value['attrs']?.cast<String, dynamic>() ?? {},
        interface: value['interface'],
        connections: value['connections']
                ?.map<SnapPlug>((v) => SnapPlug._fromJson(v))
                ?.toList() ??
            []);
  }

  @override
  String toString() {
    var values = {'snap': snap, 'slot': slot};
    if (attributes.isNotEmpty) {
      values['attributes'] = '$attributes';
    }
    if (interface != null) {
      values['interface'] = '$interface';
    }
    if (connections.isNotEmpty) {
      values['connections'] = '$connections';
    }
    var args = values.entries.map((e) => '${e.key}: ${e.value}').join(', ');
    return '$runtimeType($args)';
  }

  @override
  bool operator ==(other) {
    if (identical(this, other)) return true;
    final deepEquals = const DeepCollectionEquality().equals;

    return other is SnapSlot &&
        other.snap == snap &&
        other.slot == slot &&
        deepEquals(other.attributes, attributes) &&
        other.interface == interface &&
        deepEquals(other.connections, connections);
  }

  @override
  int get hashCode => Object.hash(
      snap,
      slot,
      Object.hashAllUnordered(
          attributes.entries.map((e) => Object.hash(e.key, e.value))),
      interface,
      Object.hashAll(connections));
}

/// Information on a connection between a snap plugs and slots.
class SnapConnection {
  // The slot used in this connection.
  final SnapSlot slot;

  // Attributes for the slot.
  final Map<String, dynamic> slotAttributes;

  // The plug used in this connection.
  final SnapPlug plug;

  // Attributes for the plug.
  final Map<String, dynamic> plugAttributes;

  // The interface the connection uses.
  final String interface;

  // True if this is manually connected.
  final bool manual;

  const SnapConnection(
      {required this.slot,
      this.slotAttributes = const {},
      required this.plug,
      this.plugAttributes = const {},
      required this.interface,
      this.manual = false});

  factory SnapConnection._fromJson(value) {
    return SnapConnection(
        slot: SnapSlot._fromJson(value['slot']),
        slotAttributes: value['slot-attrs']?.cast<String, dynamic>() ?? {},
        plug: SnapPlug._fromJson(value['plug']),
        plugAttributes: value['plug-attrs']?.cast<String, dynamic>() ?? {},
        interface: value['interface'] ?? '',
        manual: value['manual'] ?? false);
  }

  @override
  String toString() =>
      '$runtimeType(slot: $slot, slotAttributes: $slotAttributes, plug: $plug, plugAttributes: $plugAttributes, interface: $interface, manual: $manual)';

  @override
  bool operator ==(other) {
    if (identical(this, other)) return true;
    final mapEquals = const DeepCollectionEquality().equals;

    return other is SnapConnection &&
        other.slot == slot &&
        mapEquals(other.slotAttributes, slotAttributes) &&
        other.plug == plug &&
        mapEquals(other.plugAttributes, plugAttributes) &&
        other.interface == interface &&
        other.manual == manual;
  }

  @override
  int get hashCode => Object.hash(
      slot, slotAttributes, plug, plugAttributes, interface, manual);
}

/// Response received when getting connections.
class SnapdConnectionsResponse {
  /// Connections that have been established.
  final List<SnapConnection> established;

  /// Plugs on this system.
  final List<SnapPlug> plugs;

  /// Slots on this system.
  final List<SnapSlot> slots;

  /// Auto-connected connections that have been manually disconnected.
  final List<SnapConnection> undesired;

  const SnapdConnectionsResponse(
      {this.established = const [],
      this.plugs = const [],
      this.slots = const [],
      this.undesired = const []});

  factory SnapdConnectionsResponse._fromJson(value) {
    return SnapdConnectionsResponse(
        established: value['established']
                ?.map<SnapConnection>(
                    (connection) => SnapConnection._fromJson(connection))
                ?.toList() ??
            <SnapConnection>[],
        plugs: value['plugs']
                ?.map<SnapPlug>((plug) => SnapPlug._fromJson(plug))
                ?.toList() ??
            <SnapPlug>[],
        slots: value['slots']
                ?.map<SnapSlot>((slot) => SnapSlot._fromJson(slot))
                ?.toList() ??
            <SnapSlot>[],
        undesired: value['undesired']
                ?.map<SnapConnection>(
                    (connection) => SnapConnection._fromJson(connection))
                ?.toList() ??
            <SnapConnection>[]);
  }

  @override
  String toString() =>
      '$runtimeType(established: $established, plugs: $plugs, slots: $slots, undesired: $undesired)';
}

/// Gives the state of an asynchronous operation.
class SnapdChange {
  /// The ID of this change.
  final String id;

  /// The kind of change, e.g. 'install-snap'.
  final String kind;

  /// Short description of the change. e.g. 'Install snap "moon-buggy"'
  final String summary;

  /// Status of the change, e.g. 'Doing'.
  final String status;

  /// True when this change is complete.
  final bool ready;

  /// Error that occurred doing this change.
  final String? err;

  /// The time this change started.
  final DateTime spawnTime;

  /// The time this change completed.
  final DateTime? readyTime;

  /// The tasks of this change.
  final List<SnapdTask> tasks;

  /// The snaps that are associated with this change.
  final List<String> snapNames;

  const SnapdChange(
      {this.id = '',
      this.kind = '',
      this.summary = '',
      this.status = '',
      this.ready = false,
      required this.spawnTime,
      this.readyTime,
      this.err,
      this.tasks = const [],
      this.snapNames = const []});

  factory SnapdChange._fromJson(value) {
    var data = value['data'] ?? {};
    var snapNames = data['snap-names']?.cast<String>() ?? <String>[];
    return SnapdChange(
        id: value['id'] ?? '',
        kind: value['kind'] ?? '',
        summary: value['summary'] ?? '',
        status: value['status'] ?? '',
        ready: value['ready'] ?? false,
        err: value['err'],
        spawnTime: _parseDateTime(value['spawn-time']) ?? DateTime.utc(1970),
        readyTime: _parseDateTime(value['ready-time']),
        tasks: value['tasks']
                ?.map<SnapdTask>((v) => SnapdTask._fromJson(v))
                .toList() ??
            [],
        snapNames: snapNames);
  }

  @override
  String toString() =>
      "$runtimeType(id: $id, kind: $kind, summary: '$summary', status: $status, ready: $ready, err: $err, spawnTime: $spawnTime, readyTime: $readyTime, tasks: $tasks, snapNames: $snapNames)";
}

/// Information about a task in a [SnapdChange].
class SnapdTask {
  /// The ID of this task.
  final String id;

  /// The kind of task, e.g. 'download-snap'install-snap'.
  final String kind;

  /// Short description of the task. e.g. ''Download snap "moon-buggy" (12) from channel "stable"'
  final String summary;

  /// Status of the task, e.g. 'Doing'.
  final String status;

  /// Progress of this task.
  final SnapdTaskProgress progress;

  /// The time this task started.
  final DateTime spawnTime;

  /// The time this task completed.
  final DateTime? readyTime;

  const SnapdTask(
      {this.id = '',
      this.kind = '',
      this.summary = '',
      this.status = '',
      this.progress = const SnapdTaskProgress(),
      required this.spawnTime,
      this.readyTime});

  factory SnapdTask._fromJson(value) {
    return SnapdTask(
        id: value['id'] ?? '',
        kind: value['kind'] ?? '',
        summary: value['summary'] ?? '',
        status: value['status'] ?? '',
        progress: value['progress'] != null
            ? SnapdTaskProgress._fromJson(value['progress'])
            : SnapdTaskProgress(),
        spawnTime: _parseDateTime(value['spawn-time']) ?? DateTime.utc(1970),
        readyTime: _parseDateTime(value['ready-time']));
  }

  @override
  String toString() =>
      "$runtimeType(id: $id, kind: $kind, summary: '$summary', status: $status, progress: $progress, spawnTime: $spawnTime, readyTime: $readyTime)";
}

/// Progress of a [SnapdTask].
class SnapdTaskProgress {
  /// Optional label.
  final String label;

  /// Number of progress items complete.
  final int done;

  /// Total number of progress items in this task.
  final int total;

  const SnapdTaskProgress({this.label = '', this.done = 0, this.total = 0});

  factory SnapdTaskProgress._fromJson(value) {
    return SnapdTaskProgress(
        label: value['label'] ?? '',
        done: value['done'] ?? 0,
        total: value['total'] ?? 0);
  }

  @override
  String toString() =>
      "$runtimeType(label: '$label', done: $done, total: $total)";
}

/// General response from snapd.
abstract class _SnapdResponse {
  /// HTTP status code.
  final int statusCode;

  /// Status message.
  final String status;

  /// Request result. Throws an exception if not a sync result.
  dynamic get result;

  /// Request change ID. Throws an exception if not an async result.
  String get change;

  const _SnapdResponse({this.statusCode = 0, this.status = ''});
}

/// Response retuned when a sync request is completed.
class _SnapdSyncResponse extends _SnapdResponse {
  final dynamic _result;

  @override
  dynamic get result => _result;

  @override
  String get change => throw 'Result is sync';

  _SnapdSyncResponse(dynamic result, {int statusCode = 0, String status = ''})
      : _result = result,
        super(statusCode: statusCode, status: status);
}

/// Response retuned when an async request has been started.
class _SnapdAsyncResponse extends _SnapdResponse {
  final String _change;

  @override
  dynamic get result => throw 'Result is async';

  @override
  String get change => _change;

  _SnapdAsyncResponse(change, {int statusCode = 0, String status = ''})
      : _change = change,
        super(statusCode: statusCode, status: status);
}

/// Response retuned when an error occurred.
class _SnapdErrorResponse extends _SnapdResponse {
  /// Error message returned.
  final String message;

  /// Error kind returned.
  final String? kind;

  /// Error value.
  final dynamic value;

  @override
  dynamic get result => throw SnapdException(kind: kind, message: message);

  @override
  String get change => throw SnapdException(kind: kind, message: message);

  const _SnapdErrorResponse(this.message,
      {int statusCode = 0, String status = '', this.kind = '', this.value})
      : super(statusCode: statusCode, status: status);

  factory _SnapdErrorResponse.fromJson(int statusCode, String status, value) {
    return _SnapdErrorResponse(value['message'] ?? '',
        statusCode: statusCode,
        status: status,
        kind: value['kind'],
        value: value['value']);
  }
}

/// Manages a connection to the snapd server.
class SnapdClient {
  final HttpClient _client;
  String? _macaroon;
  List<String> _discharges = [];
  String? _userAgent;

  /// True if snapd operations are allowed to interact with the user.
  /// This affects operations that use polkit authorisation.
  bool allowInteraction = true;

  SnapdClient(
      {String userAgent = 'snapd.dart', socketPath = '/var/run/snapd.socket'})
      : _userAgent = userAgent,
        _client = HttpClient() {
    _client.connectionFactory = (Uri uri, String? proxyHost, int? proxyPort) {
      var address = InternetAddress(socketPath, type: InternetAddressType.unix);
      return Socket.startConnect(address, 0);
    };
  }

  /// Loads the saved authorization for this user.
  Future<void> loadAuthorization({String? path}) async {
    if (path == null) {
      var home = Platform.environment['HOME'];
      if (home == null) {
        throw 'Unable to determine home directory';
      }
      path = p.join(home, '.snap', 'auth.json');
    }
    var file = File(path);
    String contents;
    try {
      contents = await file.readAsString();
    } catch (e) {
      setAuthorization('', []);
      return;
    }

    var authData = json.decode(contents);
    var macaroon = authData['macaroon'];
    var discharges = authData['discharges'] != null
        ? authData['discharges'].cast<String>()
        : <String>[];
    setAuthorization(macaroon, discharges);
  }

  /// Sets the authorization used in the connection to snapd.
  void setAuthorization(String macaroon, List<String> discharges) {
    _macaroon = macaroon;
    _discharges = discharges;
  }

  /// Gets information about the system that snapd is running on.
  Future<SnapdSystemInfoResponse> systemInfo() async {
    var result = await _getSync('/v2/system-info');
    return SnapdSystemInfoResponse._fromJson(result);
  }

  /// Gets informtion on all installed snaps.
  Future<List<Snap>> getSnaps() async {
    var result = await _getSync('/v2/snaps');
    var snaps = <Snap>[];
    for (var snap in result) {
      snaps.add(Snap._fromJson(snap));
    }
    return snaps;
  }

  /// Gets information on an installed snap with the given [name].
  Future<Snap> getSnap(String name) async {
    var encodedName = Uri.encodeComponent(name);
    var result = await _getSync('/v2/snaps/$encodedName');
    return Snap._fromJson(result);
  }

  /// Gets information on all installed apps.
  Future<List<SnapApp>> getApps(
      {List<String>? names, SnapdAppFilter? filter}) async {
    var queryParameters = <String, String>{};
    if (names != null) {
      queryParameters['names'] = names.join(',');
    }
    if (filter != null) {
      var value = {SnapdAppFilter.service: 'service'}[filter];
      if (value != null) {
        queryParameters['select'] = value;
      }
    }
    var result = await _getSync('/v2/apps', queryParameters);
    var apps = <SnapApp>[];
    for (var app in result) {
      apps.add(SnapApp._fromJson(app));
    }
    return apps;
  }

  /// Gets the connections, plugs and slots used on this system.
  Future<SnapdConnectionsResponse> getConnections(
      {String? snap, String? interface, SnapdConnectionFilter? filter}) async {
    var queryParameters = <String, String>{};
    if (snap != null) {
      queryParameters['snap'] = snap;
    }
    if (interface != null) {
      queryParameters['interface'] = interface;
    }
    if (filter != null) {
      var value = {SnapdConnectionFilter.all: 'all'}[filter];
      if (value != null) {
        queryParameters['select'] = value;
      }
    }
    var result = await _getSync('/v2/connections', queryParameters);
    return SnapdConnectionsResponse._fromJson(result);
  }

  /// Refreshes the snaps given by [names].
  /// Returns the change ID for this operation, use [getChange] to get the status of this operation.
  Future<String> refreshMany(List<String> names) async {
    var request = {};
    request['action'] = 'refresh';
    request['snaps'] = names;
    return await _postAsync('/v2/snaps', request);
  }

  /// Connects a plug to a slot.
  Future<String> connect(
      String snap, String plug, String slotSnap, String slot) async {
    var request = {
      'action': 'connect',
      'plugs': [
        {'snap': snap, 'plug': plug}
      ],
      'slots': [
        {'snap': slotSnap, 'slot': slot}
      ]
    };
    return await _postAsync('/v2/interfaces', request);
  }

  /// Disonnects a plug from a slot.
  Future<String> disconnect(
      String plugSnap, String plug, String slotSnap, String slot) async {
    var request = {
      'action': 'disconnect',
      'plugs': [
        {'snap': plugSnap, 'plug': plug}
      ],
      'slots': [
        {'snap': slotSnap, 'slot': slot}
      ]
    };
    return await _postAsync('/v2/interfaces', request);
  }

  /// Sets the user agent sent in requests to snapd.
  set userAgent(String? value) => _userAgent = value;

  /// Searches for snaps in the store.
  ///
  /// If [query] is provided, searches for snaps that match the given string.
  /// If [name] is provided, match the snap with the given name.
  /// If [section] is provided, search within that store section.
  /// If [filter] is provided, alter the collection searched:
  ///   - 'refresh': search refreshable snaps. Can't be used with [query] nor [name].
  ///   - 'private': search private snaps. Can't be used with [query].
  Future<List<Snap>> find(
      {String? query,
      String? name,
      String? section,
      SnapFindFilter? filter}) async {
    var queryParameters = <String, String>{};
    if (query != null) {
      queryParameters['q'] = query;
    }
    if (name != null) {
      queryParameters['name'] = name;
    }
    if (section != null) {
      queryParameters['section'] = section;
    }
    if (filter != null) {
      var value = {
        SnapFindFilter.private: 'private',
        SnapFindFilter.refresh: 'refresh'
      }[filter];
      if (value != null) {
        queryParameters['select'] = value;
      }
    }
    var result = await _getSync('/v2/find', queryParameters);
    var snaps = <Snap>[];
    for (var snap in result) {
      snaps.add(Snap._fromJson(snap));
    }
    return snaps;
  }

  /// Logs into the snap store.
  Future<SnapdLoginResponse> login(String email, String password,
      {String? otp}) async {
    var request = {'email': email, 'password': password};
    if (otp != null) {
      request['otp'] = otp;
    }
    var result = await _postSync('/v2/login', request);
    return SnapdLoginResponse._fromJson(result);
  }

  /// Logs out acccount with [id] from the snap store.
  Future logout(int id) async {
    await _postSync('/v2/logout', {'id': id});
  }

  /// Installs the snap with the given [name].
  /// Returns the change ID for this operation, use [getChange] to get the status of this operation.
  Future<String> install(String name,
      {String? channel,
      String? revision,
      bool classic = false,
      bool dangerous = false,
      bool devmode = false,
      bool jailmode = false}) async {
    var request = <String, dynamic>{'action': 'install'};
    if (channel != null) {
      request['channel'] = channel;
    }
    if (revision != null) {
      request['revision'] = revision;
    }
    if (classic) {
      request['classic'] = true;
    }
    if (dangerous) {
      request['dangerous'] = true;
    }
    if (devmode) {
      request['devmode'] = true;
    }
    if (jailmode) {
      request['jailmode'] = true;
    }
    var encodedName = Uri.encodeComponent(name);
    return await _postAsync('/v2/snaps/$encodedName', request);
  }

  /// Refreshes the snap with the given [name].
  /// Returns the change ID for this operation, use [getChange] to get the status of this operation.
  Future<String> refresh(String name,
      {String? channel, bool classic = false}) async {
    var request = {};
    request['action'] = 'refresh';
    if (channel != null) {
      request['channel'] = channel;
    }
    if (classic) {
      request['classic'] = true;
    }
    var encodedName = Uri.encodeComponent(name);
    return await _postAsync('/v2/snaps/$encodedName', request);
  }

  /// Removes the snap with the given [name].
  /// Returns the change ID for this operation, use [getChange] to get the status of this operation.
  Future<String> remove(String name, {bool purge = false}) async {
    var request = <String, dynamic>{'action': 'remove'};
    if (purge) {
      request['purge'] = true;
    }
    var encodedName = Uri.encodeComponent(name);
    return await _postAsync('/v2/snaps/$encodedName', request);
  }

  Future<String> enable(String name) async {
    var request = <String, dynamic>{'action': 'enable'};
    var encodedName = Uri.encodeComponent(name);
    return await _postAsync('/v2/snaps/$encodedName', request);
  }

  Future<String> disable(String name) async {
    var request = <String, dynamic>{'action': 'disable'};
    var encodedName = Uri.encodeComponent(name);
    return await _postAsync('/v2/snaps/$encodedName', request);
  }

  /// Gets the status the change with the given [id].
  Future<SnapdChange> getChange(String id) async {
    var result = await _getSync('/v2/changes/$id');
    return SnapdChange._fromJson(result);
  }

  /// Get changes that have occurred / are occurring on the snap daemon.
  /// Use [filter] to choose which changes to receive.
  /// Use [name] to return only changes to the snap with that name.
  Future<List<SnapdChange>> getChanges(
      {SnapdChangeFilter? filter, String? name}) async {
    var queryParameters = <String, String>{};
    if (filter != null) {
      var value = {
        SnapdChangeFilter.all: 'all',
        SnapdChangeFilter.inProgress: 'in-progress',
        SnapdChangeFilter.ready: 'ready'
      }[filter];
      if (value != null) {
        queryParameters['select'] = value;
      }
    }
    if (name != null) {
      queryParameters['for'] = name;
    }
    var result = await _getSync('/v2/changes', queryParameters);
    var changes = <SnapdChange>[];
    for (var change in result) {
      changes.add(SnapdChange._fromJson(change));
    }
    return changes;
  }

  /// Aborts the change with the given [id].
  Future<SnapdChange> abortChange(String id) async {
    var queryParameters = {'action': 'abort'};
    var result = await _postSync('/v2/changes/$id', queryParameters);
    return SnapdChange._fromJson(result);
  }

  /// Terminates all active connections. If a client remains unclosed, the Dart process may not terminate.
  void close() {
    _client.close();
  }

  /// Does a synchronous request to snapd.
  Future<dynamic> _getSync(String path,
      [Map<String, String> queryParameters = const {}]) async {
    var request =
        await _client.getUrl(Uri.http('localhost', path, queryParameters));
    _setHeaders(request);
    await request.close();
    var snapdResponse = await _parseResponse(await request.done);
    return snapdResponse.result;
  }

  /// Does a synchronous request to snapd.
  Future<dynamic> _postSync(String path, [dynamic body]) async {
    var request = await _client.post('localhost', 0, path);
    _setHeaders(request);
    request.headers.contentType = ContentType('application', 'json');
    request.write(json.encode(body));
    await request.close();
    var snapdResponse = await _parseResponse(await request.done);
    return snapdResponse.result;
  }

  /// Does an asynchronous request to snapd.
  Future<String> _postAsync(String path, [dynamic body]) async {
    var request = await _client.post('localhost', 0, path);
    _setHeaders(request);
    request.headers.contentType = ContentType('application', 'json');
    request.write(json.encode(body));
    await request.close();
    var snapdResponse = await _parseResponse(await request.done);
    return snapdResponse.change;
  }

  /// Decodes a response from snapd.
  Future<_SnapdResponse> _parseResponse(HttpClientResponse response) async {
    var body = await response.transform(utf8.decoder).join();
    var jsonResponse = json.decode(body);
    _SnapdResponse snapdResponse;
    var type = jsonResponse['type'];
    var statusCode = jsonResponse['status-code'];
    var status = jsonResponse['status'];
    if (type == 'sync') {
      snapdResponse = _SnapdSyncResponse(jsonResponse['result'],
          statusCode: statusCode, status: status);
    } else if (type == 'async') {
      snapdResponse = _SnapdAsyncResponse(jsonResponse['change'],
          statusCode: statusCode, status: status);
    } else if (type == 'error') {
      var result = jsonResponse['result'];
      snapdResponse = _SnapdErrorResponse.fromJson(statusCode, status, result);
    } else {
      throw "Unknown snapd response '$type'";
    }

    return snapdResponse;
  }

  /// Makes base HTTP headers to send.
  void _setHeaders(HttpClientRequest request) {
    if (_userAgent != null) {
      request.headers.set(HttpHeaders.userAgentHeader, _userAgent!);
    }
    if (_macaroon != null) {
      var authorization = 'Macaroon root="$_macaroon"';
      for (var discharge in _discharges) {
        authorization += ',discharge="$discharge"';
      }
      request.headers.set(HttpHeaders.authorizationHeader, authorization);
    }
    if (allowInteraction) {
      request.headers.set('X-Allow-Interaction', 'true');
    }
  }
}
