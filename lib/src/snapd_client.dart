import 'dart:convert';
import 'dart:io';
import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:path/path.dart' as p;
import 'package:yaml/yaml.dart';

part 'snapd_client.g.dart';

/// The current state of a snap.
enum SnapStatus { unknown, available, priced, installed, active }

/// Confinement used by a snap.
enum SnapConfinement { unknown, strict, devmode, classic }

/// Filter to select which changes to get from snapd.
enum SnapdChangeFilter {
  all('all'),
  inProgress('in-progress'),
  ready('ready');

  const SnapdChangeFilter(this.value);

  final String value;
}

/// Filter to select which apps to get from snapd.
enum SnapdAppFilter { service }

/// Filter to select which connections to get from snapd.
enum SnapdConnectionFilter { all }

/// Filter to select which apps to return from a collection search.
enum SnapFindFilter { refresh, private }

/// Scope to search snaps.
enum SnapFindScope { wide }

class _SnapdDateTimeConverter implements JsonConverter<DateTime, String?> {
  const _SnapdDateTimeConverter();

  @override
  DateTime fromJson(String? json) =>
      json != null ? DateTime.parse(json) : DateTime.utc(1970);

  @override
  String? toJson(DateTime value) => value.toIso8601String();
}

/// An exception thrown by a request to snapd.
class SnapdException implements Exception {
  SnapdException({required this.message, this.kind});

  /// Error kind.
  final String? kind;

  /// Message with error.
  final String message;

  @override
  String toString() => 'SnapdException(kind: $kind, message: $message)';
}

/// Describes an app provided by a snap.
@immutable
@JsonSerializable()
class SnapApp {
  // FIXME(robert-ancell) Implement
  //List<SnapActivator> activators.

  const SnapApp({
    required this.snap,
    required this.name,
    this.desktopFile,
    this.daemon,
    this.enabled = true,
    this.active = true,
    this.commonId,
  });

  factory SnapApp.fromJson(Map<String, dynamic> json) =>
      _$SnapAppFromJson(json);

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

  Map<String, dynamic> toJson() => _$SnapAppToJson(this);

  @override
  String toString() =>
      'SnapApp(snap: $snap, name: $name, desktopFile: $desktopFile, daemon: $daemon, enabled: $enabled, active: $active, commonId: $commonId)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SnapApp &&
        other.snap == snap &&
        other.name == name &&
        other.desktopFile == desktopFile &&
        other.daemon == daemon &&
        other.enabled == enabled &&
        other.active == active &&
        other.commonId == commonId;
  }

  @override
  int get hashCode =>
      Object.hash(snap, name, desktopFile, daemon, enabled, active, commonId);
}

/// Describes an category this snap is part of.
@immutable
@JsonSerializable()
class SnapCategory {
  const SnapCategory({required this.name, this.featured = false});

  factory SnapCategory.fromJson(Map<String, dynamic> json) =>
      _$SnapCategoryFromJson(json);

  /// Name of the category this snap is in.
  final String name;

  /// True if this snap is featured in this category.
  final bool featured;

  Map<String, dynamic> toJson() => _$SnapCategoryToJson(this);

  @override
  String toString() => 'SnapCategory(name: $name, featured: $featured)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SnapCategory &&
        other.name == name &&
        other.featured == featured;
  }

  @override
  int get hashCode => Object.hash(name, featured);
}

/// Describes a snap category.
@immutable
@JsonSerializable()
class SnapdCategoryDetails {
  const SnapdCategoryDetails({required this.name});

  factory SnapdCategoryDetails.fromJson(Map<String, dynamic> json) =>
      _$SnapdCategoryDetailsFromJson(json);

  /// Name of the category.
  final String name;

  Map<String, dynamic> toJson() => _$SnapdCategoryDetailsToJson(this);

  @override
  String toString() => 'SnapdCategoryDetails(name: $name)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SnapdCategoryDetails && other.name == name;
  }

  @override
  int get hashCode => name.hashCode;
}

/// Describes a channel available for a snap.
@immutable
@JsonSerializable()
class SnapChannel {
  const SnapChannel({
    required this.releasedAt,
    this.confinement = SnapConfinement.unknown,
    this.revision = '',
    this.size = 0,
    this.version = '',
  });

  factory SnapChannel.fromJson(Map<String, dynamic> json) =>
      _$SnapChannelFromJson(json);

  /// Confinement of this snap in this channel.
  @JsonKey(unknownEnumValue: SnapConfinement.unknown)
  final SnapConfinement confinement;

  /// The date this revision was released into the channel.
  final DateTime releasedAt;

  /// Revision of this snap in this channel.
  final String revision;

  /// Size of the snap in this channel in bytes.
  final int size;

  /// Version of this snap in this channel.
  final String version;

  Map<String, dynamic> toJson() => _$SnapChannelToJson(this);

  @override
  String toString() =>
      'SnapChannel(confinement: $confinement, releasedAt: $releasedAt, revision: $revision, size: $size, version: $version)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SnapChannel &&
        other.confinement == confinement &&
        other.releasedAt == releasedAt &&
        other.revision == revision &&
        other.size == size &&
        other.version == version;
  }

  @override
  int get hashCode =>
      Object.hash(confinement, releasedAt, revision, size, version);
}

/// Describes a snap publisher.
@immutable
@JsonSerializable()
class SnapPublisher {
  const SnapPublisher({
    this.id = '',
    this.username = '',
    this.displayName = '',
    this.validation,
  });

  factory SnapPublisher.fromJson(Map<String, dynamic> json) =>
      _$SnapPublisherFromJson(json);

  /// Unique ID for this publisher.
  final String id;

  /// Unique username for this publisher.
  final String username;

  /// Name to use when displaying this publisher.
  final String displayName;

  /// Validation level for this publisher.
  final String? validation;

  Map<String, dynamic> toJson() => _$SnapPublisherToJson(this);

  @override
  String toString() =>
      'SnapPublisher(id: $id, username: $username, displayName: $displayName, validation: $validation)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SnapPublisher &&
        other.id == id &&
        other.username == username &&
        other.displayName == displayName &&
        other.validation == validation;
  }

  @override
  int get hashCode => Object.hash(id, username, displayName, validation);
}

/// Describes a piece of media associated with a snap.
@immutable
@JsonSerializable()
class SnapMedia {
  const SnapMedia({
    required this.type,
    required this.url,
    this.width,
    this.height,
  });

  factory SnapMedia.fromJson(Map<String, dynamic> json) =>
      _$SnapMediaFromJson(json);

  /// Media type
  final String type;

  /// URL of media.
  final String url;

  /// Width of media in pixels.
  final int? width;

  /// Height of media in pixels.
  final int? height;

  Map<String, dynamic> toJson() => _$SnapMediaToJson(this);

  @override
  String toString() =>
      'SnapMedia(type: $type, url: $url, width: $width, height: $height)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SnapMedia &&
        other.type == type &&
        other.url == url &&
        other.width == width &&
        other.height == height;
  }

  @override
  int get hashCode => Object.hash(type, url, width, height);
}

/// Describes a snap package.
@immutable
@JsonSerializable()
class Snap {
  const Snap({
    required this.name,
    this.apps = const [],
    this.base,
    this.categories = const [],
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
    this.website,
  });

  factory Snap.fromJson(Map<String, dynamic> json) => _$SnapFromJson(json);

  /// Apps this snap provides.
  final List<SnapApp> apps;

  /// The base snap this snap uses.
  final String? base;

  /// Categories this snap belongs to.
  final List<SnapCategory> categories;

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

  Map<String, dynamic> toJson() => _$SnapToJson(this);

  @override
  String toString() =>
      "Snap(apps: $apps, base: $base, categories: $categories, channel: $channel, channels: $channels, commonIds: $commonIds, confinement: $confinement, contact: $contact, description: '${description.replaceAll('\n', '\\n')}', devmode: $devmode, downloadSize: $downloadSize, hold: $hold, id: $id, installDate: $installDate, installedSize: $installedSize, jailmode: $jailmode, license: $license, media: $media, mountedFrom: $mountedFrom, name: $name, private: $private, publisher: $publisher, revision: $revision, status: $status, storeUrl: $storeUrl, summary: '$summary', title: '$title', trackingChannel: $trackingChannel, tracks: $tracks, type: $type, version: $version, website: $website)";

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final deepEquals = const DeepCollectionEquality().equals;

    return other is Snap &&
        deepEquals(other.apps, apps) &&
        other.base == base &&
        deepEquals(other.categories, categories) &&
        other.channel == channel &&
        deepEquals(other.channels, channels) &&
        deepEquals(other.commonIds, commonIds) &&
        other.confinement == confinement &&
        other.contact == contact &&
        other.description == description &&
        other.devmode == devmode &&
        other.downloadSize == downloadSize &&
        other.hold == hold &&
        other.id == id &&
        other.installDate == installDate &&
        other.installedSize == installedSize &&
        other.jailmode == jailmode &&
        other.license == license &&
        deepEquals(other.media, media) &&
        other.mountedFrom == mountedFrom &&
        other.name == name &&
        other.private == private &&
        other.publisher == publisher &&
        other.revision == revision &&
        other.status == status &&
        other.storeUrl == storeUrl &&
        other.summary == summary &&
        other.title == title &&
        other.trackingChannel == trackingChannel &&
        deepEquals(other.tracks, tracks) &&
        other.type == type &&
        other.version == version &&
        other.website == website;
  }

  @override
  int get hashCode {
    final deepHash = const DeepCollectionEquality().hash;
    return Object.hashAll([
      deepHash(apps),
      base,
      deepHash(categories),
      channel,
      deepHash(channels),
      deepHash(commonIds),
      confinement,
      contact,
      description,
      devmode,
      downloadSize,
      hold,
      id,
      installDate,
      installedSize,
      jailmode,
      license,
      deepHash(media),
      mountedFrom,
      name,
      private,
      publisher,
      revision,
      status,
      storeUrl,
      summary,
      title,
      trackingChannel,
      deepHash(tracks),
      type,
      version,
      website,
    ]);
  }
}

/// Response received from snap-declaration assertions.
@immutable
@JsonSerializable()
class SnapDeclaration {
  const SnapDeclaration({
    this.type = '',
    this.authorityId = '',
    this.revision = 0,
    this.series = 0,
    this.snapId = '',
    this.publisherId = '',
    this.snapName = '',
    this.timestamp = '',
    this.signKey = '',
  });

  factory SnapDeclaration.fromJson(Map<String, dynamic> json) =>
      _$SnapDeclarationFromJson(json);
  final String type;
  final String authorityId;
  final int revision;
  final int series;
  final String snapId;
  final String publisherId;
  final String snapName;
  final String timestamp;
  final String signKey;

  Map<String, dynamic> toJson() => _$SnapDeclarationToJson(this);

  @override
  String toString() =>
      'SnapDeclaration(type: $type, authority-id: $authorityId, revision: $revision, series: $series, snap-id: $snapId, publisher-id: $publisherId, snap-name: $snapName, timestamp: $timestamp, sign-key: $signKey)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SnapDeclaration &&
        other.type == type &&
        other.authorityId == authorityId &&
        other.revision == revision &&
        other.series == series &&
        other.snapId == snapId &&
        other.publisherId == publisherId &&
        other.snapName == snapName &&
        other.timestamp == timestamp &&
        other.signKey == signKey;
  }

  @override
  int get hashCode => Object.hash(
        type,
        authorityId,
        revision,
        series,
        snapId,
        publisherId,
        snapName,
        timestamp,
        signKey,
      );
}

/// Response received when getting system information.
@immutable
@JsonSerializable()
class SnapdSystemInfoResponse {
  const SnapdSystemInfoResponse({
    required this.refresh,
    this.architecture = '',
    this.buildId = '',
    this.confinement = SnapConfinement.unknown,
    this.kernelVersion = '',
    this.managed = false,
    this.onClassic = false,
    this.series = '',
    this.systemMode = '',
    this.version = '',
  });

  factory SnapdSystemInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$SnapdSystemInfoResponseFromJson(json);

  /// The architecture snapd is running on.
  final String architecture;

  /// The build of snapd.
  final String buildId;

  /// The confinement level that is supported.
  @JsonKey(unknownEnumValue: SnapConfinement.unknown)
  final SnapConfinement confinement;

  /// The version of the Linux kernel this is running on.
  final String kernelVersion;

  // FIXME(robert-ancell): locations

  final bool managed;

  /// True if running on a classic system.
  final bool onClassic;

  // FIXME(robert-ancell): os-release

  /// Contains information about refreshes.
  final SnapdSystemRefreshInfo refresh;

  @Deprecated('Use refresh.last instead')
  DateTime? get refreshLast => refresh.last;

  @Deprecated('Use refresh.next instead')
  DateTime get refreshNext => refresh.next;

  // FIXME(robert-ancell): sandbox-features

  /// The core series in use.
  final String series;

  final String systemMode;

  /// The version of snapd.
  final String version;

  Map<String, dynamic> toJson() => _$SnapdSystemInfoResponseToJson(this);

  @override
  String toString() =>
      'SnapdSystemInfoResponse(architecture: $architecture, buildId: $buildId, confinement: $confinement, kernelVersion: $kernelVersion, managed: $managed, onClassic: $onClassic, refreshLast: ${refresh.last}, refreshNext: ${refresh.next}, series: $series, systemMode: $systemMode, version: $version)';
}

/// Contains information about refreshes.
@immutable
@JsonSerializable()
class SnapdSystemRefreshInfo {
  // FIXME(robert-ancell): Refresh timer.
  //final String timer;

  const SnapdSystemRefreshInfo({required this.next, this.last});

  factory SnapdSystemRefreshInfo.fromJson(Map<String, dynamic> json) =>
      _$SnapdSystemRefreshInfoFromJson(json);

  /// The last time the system refreshed.
  final DateTime? last;

  /// The next time the system refreshed.
  @_SnapdDateTimeConverter()
  final DateTime next;

  Map<String, dynamic> toJson() => _$SnapdSystemRefreshInfoToJson(this);

  @override
  String toString() => 'SnapdSystemRefreshInfo(last: $last, next: $next)';
}

/// Response received when logging in.
@immutable
@JsonSerializable()
class SnapdLoginResponse {
  const SnapdLoginResponse({
    required this.id,
    this.username,
    this.email,
    this.macaroon,
    this.discharges = const [],
    this.sshKeys = const [],
  });

  factory SnapdLoginResponse.fromJson(Map<String, dynamic> json) =>
      _$SnapdLoginResponseFromJson(json);

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

  Map<String, dynamic> toJson() => _$SnapdLoginResponseToJson(this);

  @override
  String toString() =>
      'SnapdLoginResponse(id: $id, username: $username, email: $email, macaroon: $macaroon, discharges: $discharges)';
}

/// Information on a snap plug.
@immutable
@JsonSerializable()
class SnapPlug {
  const SnapPlug({
    required this.snap,
    required this.plug,
    this.attributes = const {},
    this.interface,
    this.connections = const [],
  });

  factory SnapPlug.fromJson(Map<String, dynamic> json) =>
      _$SnapPlugFromJson(json);

  /// The snap this plug is provided by.
  final String snap;

  /// The plug name.
  final String plug;

  // Attributes for the plug.
  @JsonKey(name: 'attrs')
  final Map<String, dynamic> attributes;

  /// The interface this plug uses.
  final String? interface;

  // Slots connected to this plug.
  final List<SnapSlot> connections;

  Map<String, dynamic> toJson() => _$SnapPlugToJson(this);

  @override
  String toString() {
    final values = <String, dynamic>{
      'snap': snap,
      'plug': plug,
      if (attributes.isNotEmpty) 'attributes': '$attributes',
      if (interface != null) 'interface': '$interface',
      if (connections.isNotEmpty) 'connections': '$connections',
    };
    final args = values.entries.map((e) => '${e.key}: ${e.value}').join(', ');
    return 'SnapPlug($args)';
  }

  @override
  bool operator ==(Object other) {
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
          attributes.entries.map((e) => Object.hash(e.key, e.value)),
        ),
        interface,
        Object.hashAll(connections),
      );
}

/// Information on a snap slot.
@immutable
@JsonSerializable()
class SnapSlot {
  const SnapSlot({
    required this.snap,
    required this.slot,
    this.attributes = const {},
    this.interface,
    this.connections = const [],
  });

  factory SnapSlot.fromJson(Map<String, dynamic> json) =>
      _$SnapSlotFromJson(json);

  /// The snap this slot is provided by.
  final String snap;

  /// The slot name.
  final String slot;

  // Attributes for the slot.
  @JsonKey(name: 'attrs')
  final Map<String, dynamic> attributes;

  /// The interface this slot uses.
  final String? interface;

  // Plugs connected to this slot.
  final List<SnapPlug> connections;

  Map<String, dynamic> toJson() => _$SnapSlotToJson(this);

  @override
  String toString() {
    final values = {'snap': snap, 'slot': slot};
    if (attributes.isNotEmpty) {
      values['attributes'] = '$attributes';
    }
    if (interface != null) {
      values['interface'] = '$interface';
    }
    if (connections.isNotEmpty) {
      values['connections'] = '$connections';
    }
    final args = values.entries.map((e) => '${e.key}: ${e.value}').join(', ');
    return 'SnapSlot($args)';
  }

  @override
  bool operator ==(Object other) {
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
          attributes.entries.map((e) => Object.hash(e.key, e.value)),
        ),
        interface,
        Object.hashAll(connections),
      );
}

/// Information on a connection between a snap plugs and slots.
@immutable
@JsonSerializable()
class SnapConnection {
  const SnapConnection({
    required this.slot,
    required this.plug,
    required this.interface,
    this.slotAttributes = const {},
    this.plugAttributes = const {},
    this.manual = false,
  });

  factory SnapConnection.fromJson(Map<String, dynamic> json) =>
      _$SnapConnectionFromJson(json);
  // The slot used in this connection.
  final SnapSlot slot;

  // Attributes for the slot.
  @JsonKey(name: 'slot-attrs')
  final Map<String, dynamic> slotAttributes;

  // The plug used in this connection.
  final SnapPlug plug;

  // Attributes for the plug.
  @JsonKey(name: 'plug-attrs')
  final Map<String, dynamic> plugAttributes;

  // The interface the connection uses.
  final String interface;

  // True if this is manually connected.
  final bool manual;

  Map<String, dynamic> toJson() => _$SnapConnectionToJson(this);

  @override
  String toString() =>
      'SnapConnection(slot: $slot, slotAttributes: $slotAttributes, plug: $plug, plugAttributes: $plugAttributes, interface: $interface, manual: $manual)';

  @override
  bool operator ==(Object other) {
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
        slot,
        slotAttributes,
        plug,
        plugAttributes,
        interface,
        manual,
      );
}

/// Response received when getting connections.
@immutable
@JsonSerializable()
class SnapdConnectionsResponse {
  const SnapdConnectionsResponse({
    this.established = const [],
    this.plugs = const [],
    this.slots = const [],
    this.undesired = const [],
  });

  factory SnapdConnectionsResponse.fromJson(Map<String, dynamic> json) =>
      _$SnapdConnectionsResponseFromJson(json);

  /// Connections that have been established.
  final List<SnapConnection> established;

  /// Plugs on this system.
  final List<SnapPlug> plugs;

  /// Slots on this system.
  final List<SnapSlot> slots;

  /// Auto-connected connections that have been manually disconnected.
  final List<SnapConnection> undesired;

  Map<String, dynamic> toJson() => _$SnapdConnectionsResponseToJson(this);

  @override
  String toString() =>
      'SnapdConnectionResponse(established: $established, plugs: $plugs, slots: $slots, undesired: $undesired)';
}

/// Gives the state of an asynchronous operation.
@immutable
@JsonSerializable()
class SnapdChange {
  const SnapdChange({
    required this.spawnTime,
    this.id = '',
    this.kind = '',
    this.summary = '',
    this.status = '',
    this.ready = false,
    this.readyTime,
    this.err,
    this.tasks = const [],
    this.snapNames = const [],
  });

  factory SnapdChange.fromJson(Map<String, dynamic> json) =>
      _$SnapdChangeFromJson(json);

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
  @JsonKey(
    name: 'data',
    toJson: _snapNamesToJson,
    fromJson: _snapNamesFromJson,
  )
  final List<String> snapNames;

  static Map<String, dynamic> _snapNamesToJson(List<String> snapNames) {
    return {'snap-names': snapNames};
  }

  static List<String> _snapNamesFromJson(Map<String, dynamic> json) {
    return json['snap-names']?.cast<String>() as List<String>? ??
        const <String>[];
  }

  Map<String, dynamic> toJson() => _$SnapdChangeToJson(this);

  @override
  String toString() =>
      "SnapdChange(id: $id, kind: $kind, summary: '$summary', status: $status, ready: $ready, err: $err, spawnTime: $spawnTime, readyTime: $readyTime, tasks: $tasks, snapNames: $snapNames)";

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final deepEquals = const DeepCollectionEquality().equals;

    return other is SnapdChange &&
        other.id == id &&
        other.kind == kind &&
        other.summary == summary &&
        other.status == status &&
        other.ready == ready &&
        other.err == err &&
        other.spawnTime == spawnTime &&
        other.readyTime == readyTime &&
        deepEquals(other.tasks, tasks) &&
        deepEquals(other.snapNames, snapNames);
  }

  @override
  int get hashCode {
    final deepHash = const DeepCollectionEquality().hash;

    return Object.hash(
      id,
      kind,
      summary,
      status,
      ready,
      err,
      spawnTime,
      readyTime,
      deepHash(tasks),
      deepHash(snapNames),
    );
  }
}

/// Information about a task in a [SnapdChange].
@immutable
@JsonSerializable()
class SnapdTask {
  SnapdTask({
    this.id = '',
    this.kind = '',
    this.summary = '',
    this.status = '',
    this.progress = const SnapdTaskProgress(),
    DateTime? spawnTime,
    this.readyTime,
  }) : spawnTime = spawnTime ?? DateTime.utc(1970);

  factory SnapdTask.fromJson(Map<String, dynamic> json) =>
      _$SnapdTaskFromJson(json);

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

  Map<String, dynamic> toJson() => _$SnapdTaskToJson(this);

  @override
  String toString() =>
      "SnapdTask(id: $id, kind: $kind, summary: '$summary', status: $status, progress: $progress, spawnTime: $spawnTime, readyTime: $readyTime)";

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SnapdTask &&
        other.id == id &&
        other.kind == kind &&
        other.summary == summary &&
        other.status == status &&
        other.progress == progress &&
        other.spawnTime == spawnTime &&
        other.readyTime == readyTime;
  }

  @override
  int get hashCode =>
      Object.hash(id, kind, summary, status, progress, spawnTime, readyTime);
}

/// Progress of a [SnapdTask].
@immutable
@JsonSerializable()
class SnapdTaskProgress {
  const SnapdTaskProgress({this.label = '', this.done = 0, this.total = 0});

  factory SnapdTaskProgress.fromJson(Map<String, dynamic> json) =>
      _$SnapdTaskProgressFromJson(json);

  /// Optional label.
  final String label;

  /// Number of progress items complete.
  final int done;

  /// Total number of progress items in this task.
  final int total;

  Map<String, dynamic> toJson() => _$SnapdTaskProgressToJson(this);

  @override
  String toString() =>
      "SnapdTaskProgress(label: '$label', done: $done, total: $total)";

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SnapdTaskProgress &&
        other.label == label &&
        other.done == done &&
        other.total == total;
  }

  @override
  int get hashCode => Object.hash(label, done, total);
}

/// General response from snapd.
abstract class _SnapdResponse {
  const _SnapdResponse({this.statusCode = 0, this.status = ''});

  /// HTTP status code.
  final int statusCode;

  /// Status message.
  final String status;

  /// Request result. Throws an exception if not a sync result.
  dynamic get result;

  /// Request change ID. Throws an exception if not an async result.
  String get change;
}

/// Response returned when a sync request is completed.
class _SnapdSyncResponse extends _SnapdResponse {
  _SnapdSyncResponse(dynamic result, {super.statusCode, super.status})
      : _result = result;
  final dynamic _result;

  @override
  dynamic get result => _result;

  @override
  String get change => throw 'Result is sync';
}

/// Response returned when an error occurred.
class _SnapdErrorResponse extends _SnapdResponse {
  const _SnapdErrorResponse(
    this.message, {
    super.statusCode,
    super.status,
    this.kind = '',
    this.value,
  });

  factory _SnapdErrorResponse.fromJson(int statusCode, String status, value) {
    return _SnapdErrorResponse(
      value['message'] as String? ?? '',
      statusCode: statusCode,
      status: status,
      kind: value['kind'] as String?,
      value: value['value'],
    );
  }

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
}

/// Manages a connection to the snapd server.
class SnapdClient {
  SnapdClient({
    this.userAgent = 'snapd.dart',
    String socketPath = '/var/run/snapd.socket',
  }) : _client = HttpClient() {
    _client.connectionFactory = (uri, proxyHost, proxyPort) {
      final address =
          InternetAddress(socketPath, type: InternetAddressType.unix);
      return Socket.startConnect(address, 0);
    };
  }

  final HttpClient _client;
  String? userAgent;
  String? _macaroon;
  List<String> _discharges = [];

  /// True if snapd operations are allowed to interact with the user.
  /// This affects operations that use polkit authorisation.
  bool allowInteraction = true;

  /// Loads the saved authorization for this user.
  Future<void> loadAuthorization({String? path}) async {
    if (path == null) {
      final home = Platform.environment['HOME'];
      if (home == null) {
        throw 'Unable to determine home directory';
      }
      path = p.join(home, '.snap', 'auth.json');
    }
    final file = File(path);
    String contents;
    try {
      contents = await file.readAsString();
      // ignore: avoid_catches_without_on_clauses
    } catch (e) {
      setAuthorization('', []);
      return;
    }

    final authData = json.decode(contents);
    final macaroon = authData['macaroon'] as String;
    final discharges = authData['discharges'] != null
        ? authData['discharges'].cast<String>() as List<String>
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
    final result = await _getSync<Map<String, dynamic>>('/v2/system-info');
    return SnapdSystemInfoResponse.fromJson(result);
  }

  /// Gets information on all installed snaps.
  Future<List<Snap>> getSnaps() async {
    final result = await _getSyncList('/v2/snaps');
    return result.map(Snap.fromJson).toList();
  }

  /// Gets information on an installed snap with the given [name].
  Future<Snap> getSnap(String name) async {
    final encodedName = Uri.encodeComponent(name);
    final result =
        await _getSync<Map<String, dynamic>>('/v2/snaps/$encodedName');
    return Snap.fromJson(result);
  }

  /// Gets information on all installed apps.
  Future<List<SnapApp>> getApps({
    List<String>? names,
    SnapdAppFilter? filter,
  }) async {
    final queryParameters = <String, String>{
      if (names != null) 'names': names.join(','),
      if (filter != null) 'select': filter.name,
    };
    final result = await _getSyncList('/v2/apps', queryParameters);
    return result.map(SnapApp.fromJson).toList();
  }

  /// Gets all the store categories available.
  Future<List<SnapdCategoryDetails>> getCategories() async {
    final result = await _getSyncList('/v2/categories');
    return result.map(SnapdCategoryDetails.fromJson).toList();
  }

  /// Gets the connections, plugs and slots used on this system.
  Future<SnapdConnectionsResponse> getConnections({
    String? snap,
    String? interface,
    SnapdConnectionFilter? filter,
  }) async {
    final queryParameters = <String, String>{
      if (snap != null) 'snap': snap,
      if (interface != null) 'interface': interface,
      if (filter != null) 'select': filter.name,
    };
    final result = await _getSync<Map<String, dynamic>>(
      '/v2/connections',
      queryParameters,
    );
    return SnapdConnectionsResponse.fromJson(result);
  }

  /// Refreshes the snaps given by [names].
  /// Returns the change ID for this operation, use [getChange] to get the
  /// status of this operation.
  Future<String> refreshMany(List<String> names) async {
    final request = {
      'action': 'refresh',
      'snaps': names,
    };
    return _postAsync('/v2/snaps', request);
  }

  /// Installs the snaps given by [names].
  /// Returns the change ID for this operation, use [getChange] to get the
  /// status of this operation.
  Future<String> installMany(List<String> names, {bool classic = false}) async {
    final request = {
      'action': 'install',
      'snaps': names,
      if (classic) 'classic': true,
    };
    return _postAsync('/v2/snaps', request);
  }

  /// Connects a plug to a slot.
  /// Returns the change ID for this operation, use [getChange] to get the status of this operation.
  Future<String> connect(
    String snap,
    String plug,
    String slotSnap,
    String slot,
  ) async {
    final request = {
      'action': 'connect',
      'plugs': [
        {
          'snap': snap,
          'plug': plug,
        },
      ],
      'slots': [
        {
          'snap': slotSnap,
          'slot': slot,
        },
      ],
    };
    return _postAsync('/v2/interfaces', request);
  }

  /// Disconnects a plug from a slot.
  /// Returns the change ID for this operation, use [getChange] to get the
  /// status of this operation.
  Future<String> disconnect(
    String plugSnap,
    String plug,
    String slotSnap,
    String slot,
  ) async {
    final request = {
      'action': 'disconnect',
      'plugs': [
        {
          'snap': plugSnap,
          'plug': plug,
        },
      ],
      'slots': [
        {
          'snap': slotSnap,
          'slot': slot,
        },
      ],
    };
    return _postAsync('/v2/interfaces', request);
  }

  /// Searches for snaps in the store.
  ///
  /// If [query] is provided, searches for snaps that match the given string.
  /// If [name] is provided, match the snap with the given name.
  /// If [category] is provided, search within that store category.
  /// If [filter] is provided, alter the collection searched:
  ///   - 'refresh': search refreshable snaps. Can't be used with [query] nor [name].
  ///   - 'private': search private snaps. Can't be used with [query].
  /// If [scope] is provided, adjust the search scope.
  ///   - 'wide': search for snaps that don't have a stable release.
  Future<List<Snap>> find({
    String? query,
    String? name,
    String? category,
    @Deprecated('Replaced with category') String? section,
    SnapFindFilter? filter,
    SnapFindScope? scope,
  }) async {
    final queryParameters = <String, String>{
      if (query != null) 'q': query,
      if (name != null) 'name': name,
      if (category != null) 'category': category,
      if (section != null) 'section': section,
      if (filter != null) 'select': filter.name,
      if (scope != null) 'scope': scope.name,
    };
    final result = await _getSyncList('/v2/find', queryParameters);
    return result.map(Snap.fromJson).toList();
  }

  /// List all assertions of the given [assertion] type.
  /// If no [assertion] type is provided, lists available assertion types.
  /// If [params] are provided, the assertions are filtered to items that have
  /// matching fields defined by their assertion type. More information can be
  /// found in the snapd documentation:
  /// https://snapcraft.io/docs/snapd-rest-api#heading--assertion-type
  Future<Map<String, dynamic>> getAssertions({
    String? assertion,
    Map<String, String>? params,
  }) async {
    if (assertion == null) {
      final result = await _getSync<Map<String, dynamic>>('/v2/assertions');
      return result;
    }

    final raw = await _getSyncRaw('/v2/assertions/$assertion', params ?? {});
    final yaml = loadYaml(raw, recover: true) as YamlMap? ?? YamlMap.wrap({});
    return Map<String, dynamic>.from(yaml);
  }

  /// Logs into the snap store.
  Future<SnapdLoginResponse> login(
    String email,
    String password, {
    String? otp,
  }) async {
    final request = {
      'email': email,
      'password': password,
      if (otp != null) 'otp': otp,
    };
    final result = await _postSync<Map<String, dynamic>>('/v2/login', request);
    return SnapdLoginResponse.fromJson(result);
  }

  /// Logs out account with [id] from the snap store.
  Future<void> logout(int id) async {
    await _postSync('/v2/logout', {'id': id});
  }

  /// Installs the snap with the given [name].
  /// Returns the change ID for this operation, use [getChange] to get the
  /// status of this operation.
  Future<String> install(
    String name, {
    String? channel,
    String? revision,
    bool classic = false,
    bool dangerous = false,
    bool devmode = false,
    bool jailmode = false,
  }) async {
    final request = <String, dynamic>{
      'action': 'install',
      if (channel != null) 'channel': channel,
      if (revision != null) 'revision': revision,
      if (classic) 'classic': true,
      if (dangerous) 'dangerous': true,
      if (devmode) 'devmode': true,
      if (jailmode) 'jailmode': true,
    };

    final encodedName = Uri.encodeComponent(name);
    return _postAsync('/v2/snaps/$encodedName', request);
  }

  /// Refreshes the snap with the given [name].
  /// Returns the change ID for this operation, use [getChange] to get the
  /// status of this operation.
  Future<String> refresh(
    String name, {
    String? channel,
    bool classic = false,
  }) async {
    final request = <String, dynamic>{
      'action': 'refresh',
      if (channel != null) 'channel': channel,
      if (classic) 'classic': true,
    };

    final encodedName = Uri.encodeComponent(name);
    return _postAsync('/v2/snaps/$encodedName', request);
  }

  /// Removes the snap with the given [name].
  /// Returns the change ID for this operation, use [getChange] to get the
  /// status of this operation.
  Future<String> remove(String name, {bool purge = false}) async {
    final request = <String, Object?>{
      'action': 'remove',
      if (purge) 'purge': true,
    };
    final encodedName = Uri.encodeComponent(name);
    return _postAsync('/v2/snaps/$encodedName', request);
  }

  // Enable the snap with the given [name].
  /// Returns the change ID for this operation, use [getChange] to get the
  /// status of this operation.
  Future<String> enable(String name) async {
    final request = <String, dynamic>{'action': 'enable'};
    final encodedName = Uri.encodeComponent(name);
    return _postAsync('/v2/snaps/$encodedName', request);
  }

  // Disable the snap with the given [name].
  /// Returns the change ID for this operation, use [getChange] to get the
  /// status of this operation.
  Future<String> disable(String name) async {
    final request = <String, dynamic>{'action': 'disable'};
    final encodedName = Uri.encodeComponent(name);
    return _postAsync('/v2/snaps/$encodedName', request);
  }

  /// Gets the status the change with the given [id].
  Future<SnapdChange> getChange(String id) async {
    final result = await _getSync<Map<String, dynamic>>('/v2/changes/$id');
    return SnapdChange.fromJson(result);
  }

  /// Get changes that have occurred / are occurring on the snap daemon.
  /// Use [filter] to choose which changes to receive.
  /// Use [name] to return only changes to the snap with that name.
  Future<List<SnapdChange>> getChanges({
    SnapdChangeFilter? filter,
    String? name,
  }) async {
    final queryParameters = <String, String>{
      if (filter != null) 'select': filter.value,
      if (name != null) 'for': name,
    };
    final result = await _getSyncList('/v2/changes', queryParameters);
    return result.map(SnapdChange.fromJson).toList();
  }

  /// Aborts the change with the given [id].
  Future<SnapdChange> abortChange(String id) async {
    final queryParameters = {'action': 'abort'};
    final result = await _postSync<Map<String, dynamic>>(
      '/v2/changes/$id',
      queryParameters,
    );
    return SnapdChange.fromJson(result);
  }

  /// Terminates all active connections. If a client remains unclosed, the Dart
  /// process may not terminate.
  void close() {
    _client.close();
  }

  /// Does a synchronous request to snapd.
  Future<T> _getSync<T>(
    String path, [
    Map<String, String> queryParameters = const {},
  ]) async {
    final response = await _getSyncResponse(path, queryParameters);
    final snapdResponse = await _parseResponse(response);
    return snapdResponse.result as T;
  }

  /// Does a synchronous request to snapd expecting a list back.
  Future<List<Map<String, Object?>>> _getSyncList(
    String path, [
    Map<String, String> queryParameters = const {},
  ]) async {
    return _getSync(path, queryParameters);
  }

  /// Does a synchronous request to snapd without parsing the response.
  Future<String> _getSyncRaw(
    String path, [
    Map<String, String> queryParameters = const {},
  ]) async {
    final response = await _getSyncResponse(path, queryParameters);
    return response.transform(utf8.decoder).join();
  }

  /// Does a synchronous request and returns the response.
  Future<HttpClientResponse> _getSyncResponse(
    String path, [
    Map<String, String> queryParameters = const {},
  ]) async {
    final request =
        await _client.getUrl(Uri.http('localhost', path, queryParameters));
    _setHeaders(request);
    await request.close();
    return request.done;
  }

  /// Does a synchronous request to snapd.
  Future<T> _postSync<T>(String path, [dynamic body]) async {
    final request = await _client.post('localhost', 0, path);
    _setHeaders(request);
    request.headers.contentType = ContentType('application', 'json');
    request.write(json.encode(body));
    await request.close();
    final snapdResponse = await _parseResponse(await request.done);
    return snapdResponse.result as T;
  }

  /// Does an asynchronous request to snapd.
  /// Returns the change ID for this operation, use [getChange] to get the
  /// status of this operation.
  Future<String> _postAsync(String path, [dynamic body]) async {
    final request = await _client.post('localhost', 0, path);
    _setHeaders(request);
    request.headers.contentType = ContentType('application', 'json');
    request.write(json.encode(body));
    await request.close();
    final snapdResponse = await _parseResponse(await request.done);
    return snapdResponse.change;
  }

  /// Decodes a response from snapd.
  Future<_SnapdResponse> _parseResponse(HttpClientResponse response) async {
    final body = await response.transform(utf8.decoder).join();
    final jsonResponse = json.decode(body);
    final type = jsonResponse['type'] as String;
    final statusCode = jsonResponse['status-code'] as int;
    final status = jsonResponse['status'] as String;
    if (type == 'error') {
      final result = jsonResponse['result'];
      return _SnapdErrorResponse.fromJson(statusCode, status, result);
    } else if (type != 'sync' && type != 'async') {
      throw "Unknown snapd response '$type'";
    } else {
      final result =
          type == 'sync' ? jsonResponse['result'] : jsonResponse['change'];
      return _SnapdSyncResponse(
        result as String,
        statusCode: statusCode,
        status: status,
      );
    }
  }

  /// Makes base HTTP headers to send.
  void _setHeaders(HttpClientRequest request) {
    if (userAgent != null) {
      request.headers.set(HttpHeaders.userAgentHeader, userAgent!);
    }
    if (_macaroon != null) {
      var authorization = 'Macaroon root="$_macaroon"';
      for (final discharge in _discharges) {
        authorization += ',discharge="$discharge"';
      }
      request.headers.set(HttpHeaders.authorizationHeader, authorization);
    }
    if (allowInteraction) {
      request.headers.set('X-Allow-Interaction', 'true');
    }
  }
}
