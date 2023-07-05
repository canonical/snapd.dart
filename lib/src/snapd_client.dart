import 'dart:convert';
import 'dart:io';
import 'package:built_collection/built_collection.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:path/path.dart' as p;

part 'snapd_client.g.dart';

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
  /// Error kind.
  final String? kind;

  /// Message with error.
  final String message;

  SnapdException({this.kind, required this.message});

  @override
  String toString() => '$runtimeType(kind: $kind, message: $message)';
}

/// Describes an app provided by a snap.
@immutable
@JsonSerializable()
class SnapApp {
  /// The snap this app is part of
  String? get snap => _data.snap;

  /// Name of the app.
  String get name => _data.name;

  /// Desktop file the app uses.
  String? get desktopFile => _data.desktopFile;

  /// Type of daemon this app is.
  String? get daemon => _data.daemon;

  /// True if this service is enabled.
  bool get enabled => _data.enabled;

  /// True if this service is active.
  bool get active => _data.active;

  /// A unique ID for this app.
  String? get commonId => _data.commonId;

  // FIXME(robert-ancell) Implement
  //List<SnapActivator> get activators => _data.activators.asList();

  const SnapApp(
      {required String? snap,
      required String name,
      String? desktopFile,
      String? daemon,
      bool enabled = true,
      bool active = true,
      String? commonId})
      : _data = (
          snap: snap,
          name: name,
          desktopFile: desktopFile,
          daemon: daemon,
          enabled: enabled,
          active: active,
          commonId: commonId,
        );

  final ({
    String? snap,
    String name,
    String? desktopFile,
    String? daemon,
    bool enabled,
    bool active,
    String? commonId,
  }) _data;

  factory SnapApp.fromJson(Map<String, dynamic> json) =>
      _$SnapAppFromJson(json);

  Map<String, dynamic> toJson() => _$SnapAppToJson(this);

  @override
  String toString() => '$runtimeType$_data';

  @override
  bool operator ==(Object other) => other is SnapApp && other._data == _data;

  @override
  int get hashCode => _data.hashCode;
}

/// Describes an category this snap is part of.
@immutable
@JsonSerializable()
class SnapCategory {
  /// Name of the category this snap is in.
  String get name => _data.name;

  /// True if this snap is featured in this category.
  bool get featured => _data.featured;

  const SnapCategory({required String name, bool featured = false})
      : _data = (name: name, featured: featured);

  final ({String name, bool featured}) _data;

  factory SnapCategory.fromJson(Map<String, dynamic> json) =>
      _$SnapCategoryFromJson(json);

  Map<String, dynamic> toJson() => _$SnapCategoryToJson(this);

  @override
  String toString() => '$runtimeType(name: $name, featured: $featured)';

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
  /// Name of the category.
  String get name => _data.name;

  const SnapdCategoryDetails({required String name}) : _data = (name: name);

  final ({String name}) _data;

  factory SnapdCategoryDetails.fromJson(Map<String, dynamic> json) =>
      _$SnapdCategoryDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$SnapdCategoryDetailsToJson(this);

  @override
  String toString() => '$runtimeType$_data';

  @override
  bool operator ==(Object other) =>
      other is SnapdCategoryDetails && other._data == _data;

  @override
  int get hashCode => _data.hashCode;
}

/// Describes a channel available for a snap.
@immutable
@JsonSerializable()
class SnapChannel {
  /// Confinement of this snap in this channel.
  SnapConfinement get confinement => _data.confinement;

  /// The date this revision was released into the channel.
  @_SnapdDateTimeConverter()
  DateTime get releasedAt => _data.releasedAt;

  /// Revision of this snap in this channel.
  String get revision => _data.revision;

  /// Size of the snap in this channel in bytes.
  int get size => _data.size;

  /// Version of this snap in this channel.
  String get version => _data.version;

  const SnapChannel(
      {SnapConfinement confinement = SnapConfinement.unknown,
      required DateTime releasedAt,
      String revision = '',
      int size = 0,
      String version = ''})
      : _data = (
          confinement: confinement,
          releasedAt: releasedAt,
          revision: revision,
          size: size,
          version: version,
        );

  final ({
    SnapConfinement confinement,
    DateTime releasedAt,
    String revision,
    int size,
    String version,
  }) _data;

  factory SnapChannel.fromJson(Map<String, dynamic> json) =>
      _$SnapChannelFromJson(json);

  Map<String, dynamic> toJson() => _$SnapChannelToJson(this);

  @override
  String toString() => '$runtimeType($_data)';

  @override
  bool operator ==(Object other) =>
      other is SnapChannel && other._data == _data;

  @override
  int get hashCode => _data.hashCode;
}

/// Describes a snap publisher.
@immutable
@JsonSerializable()
class SnapPublisher {
  /// Unique ID for this publisher.
  String get id => _data.id;

  /// Unique username for this publisher.
  String get username => _data.username;

  /// Name to use when displaying this publisher.
  String get displayName => _data.displayName;

  /// Validation level for this publisher.
  String? get validation => _data.validation;

  const SnapPublisher(
      {String id = '',
      String username = '',
      String displayName = '',
      String? validation})
      : _data = (
          id: id,
          username: username,
          displayName: displayName,
          validation: validation,
        );

  final ({
    String id,
    String username,
    String displayName,
    String? validation,
  }) _data;

  factory SnapPublisher.fromJson(Map<String, dynamic> json) =>
      _$SnapPublisherFromJson(json);

  Map<String, dynamic> toJson() => _$SnapPublisherToJson(this);

  @override
  String toString() => '$runtimeType$_data';

  @override
  bool operator ==(Object other) =>
      other is SnapPublisher && other._data == _data;

  @override
  int get hashCode => _data.hashCode;
}

/// Describes a piece of media associated with a snap.
@immutable
@JsonSerializable()
class SnapMedia {
  /// Media type
  String get type => _data.type;

  /// URL of media.
  String get url => _data.url;

  /// Width of media in pixels.
  int? get width => _data.width;

  /// Height of media in pixels.
  int? get height => _data.height;

  const SnapMedia(
      {required String type, required String url, int? width, int? height})
      : _data = (type: type, url: url, width: width, height: height);

  final ({
    String type,
    String url,
    int? width,
    int? height,
  }) _data;

  factory SnapMedia.fromJson(Map<String, dynamic> json) =>
      _$SnapMediaFromJson(json);

  Map<String, dynamic> toJson() => _$SnapMediaToJson(this);

  @override
  String toString() => '$runtimeType$_data';

  @override
  bool operator ==(Object other) => other is SnapMedia && other._data == _data;

  @override
  int get hashCode => _data.hashCode;
}

/// Describes a snap package.
@immutable
@JsonSerializable()
class Snap {
  /// Apps this snap provides.
  List<SnapApp> get apps => _data.apps.asList();

  /// The base snap this snap uses.
  String? get base => _data.base;

  /// Categories this snap belongs to.
  List<SnapCategory> get categories => _data.categories.asList();

  /// The channel this snap is from, e.g. "stable".
  String get channel => _data.channel;

  /// Channels available for this snap.
  Map<String, SnapChannel> get channels => _data.channels.asMap();

  /// Common IDs this snap contains.
  List<String> get commonIds => _data.commonIds.asList();

  /// The confinement this snap is using.
  SnapConfinement get confinement => _data.confinement;

  /// Contact URL.
  String? get contact => _data.contact;

  /// Multi line description.
  String get description => _data.description;

  /// True if this snap is running in developer mode.
  bool get devmode => _data.devmode;

  /// Download size in bytes.
  int? get downloadSize => _data.downloadSize;

  /// The date this snap will re-enable autmatic refreshing or null if no hold is present.
  DateTime? get hold => _data.hold;

  /// Unique ID for this snap.
  String get id => _data.id;

  /// The date this snap was installed.
  DateTime? get installDate => _data.installDate;

  /// Installed size in bytes.
  int? get installedSize => _data.installedSize;

  /// True if this snap is running in enforced confinement (jail) mode.
  bool get jailmode => _data.jailmode;

  /// Package license.
  String? get license => _data.license;

  /// Media associated with this snap.
  List<SnapMedia> get media => _data.media.asList();

  /// The path this snap is mounted from, which is a .snap file for installed snaps and a directory for snaps in try mode.
  String? get mountedFrom => _data.mountedFrom;

  /// Unique name for this snap. Use [title] for displaying.
  String get name => _data.name;

  /// True if this snap is only available to the developer.
  bool get private => _data.private;

  /// Publisher information.
  SnapPublisher? get publisher => _data.publisher;

  /// Revision of this snap.
  String get revision => _data.revision;

  /// The current status of this snap.
  SnapStatus get status => _data.status;

  /// URL linking to the snap store page on this snap.
  String? get storeUrl => _data.storeUrl;

  /// Single line summary.
  String get summary => _data.summary;

  /// Title of this snap.
  String? get title => _data.title;

  /// The channel that updates will be installed from, e.g. "stable".
  String? get trackingChannel => _data.trackingChannel;

  /// Tracks this snap uses.
  List<String> get tracks => _data.tracks.asList();

  /// Type of snap.
  String get type => _data.type;

  /// Version of this snap.
  String get version => _data.version;

  /// Website URL.
  String? get website => _data.website;

  Snap(
      {List<SnapApp> apps = const [],
      String? base,
      List<SnapCategory> categories = const [],
      String channel = '',
      Map<String, SnapChannel> channels = const {},
      List<String> commonIds = const [],
      SnapConfinement confinement = SnapConfinement.unknown,
      String? contact = '',
      String description = '',
      bool devmode = false,
      int? downloadSize,
      DateTime? hold,
      String id = '',
      DateTime? installDate,
      int? installedSize,
      bool jailmode = false,
      String? license,
      List<SnapMedia> media = const [],
      String? mountedFrom,
      required String name,
      bool private = false,
      SnapPublisher? publisher,
      String revision = '',
      SnapStatus status = SnapStatus.unknown,
      String? storeUrl,
      String summary = '',
      String? title,
      String? trackingChannel,
      List<String> tracks = const [],
      String type = '',
      String version = '',
      String? website})
      : _data = (
          apps: BuiltList(apps),
          base: base,
          categories: BuiltList(categories),
          channel: channel,
          channels: BuiltMap(channels),
          commonIds: BuiltList(commonIds),
          confinement: confinement,
          contact: contact,
          description: description,
          devmode: devmode,
          downloadSize: downloadSize,
          hold: hold,
          id: id,
          installDate: installDate,
          installedSize: installedSize,
          jailmode: jailmode,
          license: license,
          media: BuiltList(media),
          mountedFrom: mountedFrom,
          name: name,
          private: private,
          publisher: publisher,
          revision: revision,
          status: status,
          storeUrl: storeUrl,
          summary: summary,
          title: title,
          trackingChannel: trackingChannel,
          tracks: BuiltList(tracks),
          type: type,
          version: version,
          website: website,
        );

  final ({
    BuiltList<SnapApp> apps,
    String? base,
    BuiltList<SnapCategory> categories,
    String channel,
    BuiltMap<String, SnapChannel> channels,
    BuiltList<String> commonIds,
    SnapConfinement confinement,
    String? contact,
    String description,
    bool devmode,
    int? downloadSize,
    DateTime? hold,
    String id,
    DateTime? installDate,
    int? installedSize,
    bool jailmode,
    String? license,
    BuiltList<SnapMedia> media,
    String? mountedFrom,
    String name,
    bool private,
    SnapPublisher? publisher,
    String revision,
    SnapStatus status,
    String? storeUrl,
    String summary,
    String? title,
    String? trackingChannel,
    BuiltList<String> tracks,
    String type,
    String version,
    String? website,
  }) _data;

  factory Snap.fromJson(Map<String, dynamic> json) => _$SnapFromJson(json);

  Map<String, dynamic> toJson() => _$SnapToJson(this);

  @override
  String toString() => '$runtimeType$_data';

  @override
  bool operator ==(Object other) => other is Snap && other._data == _data;

  @override
  int get hashCode => _data.hashCode;
}

/// Response received when getting system information.
@immutable
@JsonSerializable()
class SnapdSystemInfoResponse {
  /// The architecture snapd is running on.
  String get architecture => _data.architecture;

  /// The build of snapd.
  String get buildId => _data.buildId;

  /// The confinement level that is supported.
  SnapConfinement get confinement => _data.confinement;

  /// The version of the Linux kernel this is running on.
  String get kernelVersion => _data.kernelVersion;

  // FIXME(robert-ancell): locations

  bool get managed => _data.managed;

  /// True if running on a classic system.
  bool get onClassic => _data.onClassic;

  // FIXME(robert-ancell): os-release

  /// Contains information about refreshes.
  SnapdSystemRefreshInfo get refresh => _data.refresh;

  // FIXME(robert-ancell): sandbox-features

  /// The core series in use.
  String get series => _data.series;

  String get systemMode => _data.systemMode;

  /// The version of snapd.
  String get version => _data.version;

  const SnapdSystemInfoResponse(
      {String architecture = '',
      String buildId = '',
      SnapConfinement confinement = SnapConfinement.unknown,
      String kernelVersion = '',
      bool managed = false,
      bool onClassic = false,
      required SnapdSystemRefreshInfo refresh,
      String series = '',
      String systemMode = '',
      String version = ''})
      : _data = (
          architecture: architecture,
          buildId: buildId,
          confinement: confinement,
          kernelVersion: kernelVersion,
          managed: managed,
          onClassic: onClassic,
          refresh: refresh,
          series: series,
          systemMode: systemMode,
          version: version,
        );

  final ({
    String architecture,
    String buildId,
    SnapConfinement confinement,
    String kernelVersion,
    bool managed,
    bool onClassic,
    SnapdSystemRefreshInfo refresh,
    String series,
    String systemMode,
    String version,
  }) _data;

  factory SnapdSystemInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$SnapdSystemInfoResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SnapdSystemInfoResponseToJson(this);

  @override
  String toString() => '$runtimeType$_data';

  @override
  bool operator ==(Object other) =>
      other is SnapdSystemInfoResponse && other._data == _data;

  @override
  int get hashCode => _data.hashCode;
}

/// Contains information about refreshes.
@immutable
@JsonSerializable()
class SnapdSystemRefreshInfo {
  /// The last time the system refreshed.
  DateTime? get last => _data.last;

  /// The next time the system refreshed.
  @_SnapdDateTimeConverter()
  DateTime get next => _data.next;

  // FIXME(robert-ancell): Refresh timer.
  //String get timer => _data.timer;

  const SnapdSystemRefreshInfo({DateTime? last, required DateTime next})
      : _data = (last: last, next: next);

  final ({DateTime? last, DateTime next}) _data;

  factory SnapdSystemRefreshInfo.fromJson(Map<String, dynamic> json) =>
      _$SnapdSystemRefreshInfoFromJson(json);

  Map<String, dynamic> toJson() => _$SnapdSystemRefreshInfoToJson(this);

  @override
  String toString() => '$runtimeType$_data';

  @override
  bool operator ==(Object other) =>
      other is SnapdSystemRefreshInfo && other._data == _data;

  @override
  int get hashCode => _data.hashCode;
}

/// Response received when logging in.
@immutable
@JsonSerializable()
class SnapdLoginResponse {
  /// Id for this account, which can be used in [SnapdClient.logout].
  int get id => _data.id;

  /// Username logged in with.
  String? get username => _data.username;

  /// Email address logged in with.
  String? get email => _data.email;

  /// Macaroon provided by the server.
  String? get macaroon => _data.macaroon;

  /// Discharges provided bu the server.
  List<String> get discharges => _data.discharges.asList();

  /// Secure Shell keys this user has.
  List<String> get sshKeys => _data.sshKeys.asList();

  SnapdLoginResponse(
      {required int id,
      String? username,
      String? email,
      String? macaroon,
      List<String> discharges = const [],
      List<String> sshKeys = const []})
      : _data = (
          id: id,
          username: username,
          email: email,
          macaroon: macaroon,
          discharges: BuiltList(discharges),
          sshKeys: BuiltList(sshKeys),
        );

  final ({
    int id,
    String? username,
    String? email,
    String? macaroon,
    BuiltList<String> discharges,
    BuiltList<String> sshKeys,
  }) _data;

  factory SnapdLoginResponse.fromJson(Map<String, dynamic> json) =>
      _$SnapdLoginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SnapdLoginResponseToJson(this);

  @override
  String toString() => '$runtimeType$_data';

  @override
  bool operator ==(Object other) =>
      other is SnapdLoginResponse && other._data == _data;

  @override
  int get hashCode => _data.hashCode;
}

/// Information on a snap plug.
@immutable
@JsonSerializable()
class SnapPlug {
  /// The snap this plug is provided by.
  String get snap => _data.snap;

  /// The plug name.
  String get plug => _data.plug;

  // Attributes for the plug.
  @JsonKey(name: 'attrs')
  Map<String, dynamic> get attributes => _data.attributes.asMap();

  /// The interface this plug uses.
  String? get interface => _data.interface;

  // Slots connected to this plug.
  List<SnapSlot> get connections => _data.connections.asList();

  SnapPlug(
      {required String snap,
      required String plug,
      Map<String, dynamic> attributes = const {},
      String? interface,
      List<SnapSlot> connections = const []})
      : _data = (
          snap: snap,
          plug: plug,
          attributes: BuiltMap(attributes),
          interface: interface,
          connections: BuiltList(connections),
        );

  final ({
    String snap,
    String plug,
    BuiltMap<String, dynamic> attributes,
    String? interface,
    BuiltList<SnapSlot> connections,
  }) _data;

  factory SnapPlug.fromJson(Map<String, dynamic> json) =>
      _$SnapPlugFromJson(json);

  Map<String, dynamic> toJson() => _$SnapPlugToJson(this);

  @override
  String toString() => '$runtimeType$_data';

  @override
  bool operator ==(Object other) => other is SnapPlug && other._data == _data;

  @override
  int get hashCode => _data.hashCode;
}

/// Information on a snap slot.
@immutable
@JsonSerializable()
class SnapSlot {
  /// The snap this slot is provided by.
  String get snap => _data.snap;

  /// The slot name.
  String get slot => _data.slot;

  // Attributes for the slot.
  @JsonKey(name: 'attrs')
  Map<String, dynamic> get attributes => _data.attributes.asMap();

  /// The interface this slot uses.
  String? get interface => _data.interface;

  // Plugs connected to this slot.
  List<SnapPlug> get connections => _data.connections.asList();

  SnapSlot(
      {required String snap,
      required String slot,
      Map<String, dynamic> attributes = const {},
      String? interface,
      List<SnapPlug> connections = const []})
      : _data = (
          snap: snap,
          slot: slot,
          attributes: BuiltMap(attributes),
          interface: interface,
          connections: BuiltList(connections),
        );

  final ({
    String snap,
    String slot,
    BuiltMap<String, dynamic> attributes,
    String? interface,
    BuiltList<SnapPlug> connections,
  }) _data;

  factory SnapSlot.fromJson(Map<String, dynamic> json) =>
      _$SnapSlotFromJson(json);

  Map<String, dynamic> toJson() => _$SnapSlotToJson(this);

  @override
  String toString() => '$runtimeType$_data';

  @override
  bool operator ==(Object other) => other is SnapSlot && other._data == _data;

  @override
  int get hashCode => _data.hashCode;
}

/// Information on a connection between a snap plugs and slots.
@immutable
@JsonSerializable()
class SnapConnection {
  // The slot used in this connection.
  SnapSlot get slot => _data.slot;

  // Attributes for the slot.
  @JsonKey(name: 'slot-attrs')
  Map<String, dynamic> get slotAttributes => _data.slotAttributes.asMap();

  // The plug used in this connection.
  SnapPlug get plug => _data.plug;

  // Attributes for the plug.
  @JsonKey(name: 'plug-attrs')
  Map<String, dynamic> get plugAttributes => _data.plugAttributes.asMap();

  // The interface the connection uses.
  String get interface => _data.interface;

  // True if this is manually connected.
  bool get manual => _data.manual;

  SnapConnection(
      {required SnapSlot slot,
      Map<String, dynamic> slotAttributes = const {},
      required SnapPlug plug,
      Map<String, dynamic> plugAttributes = const {},
      required String interface,
      bool manual = false})
      : _data = (
          slot: slot,
          slotAttributes: BuiltMap(slotAttributes),
          plug: plug,
          plugAttributes: BuiltMap(plugAttributes),
          interface: interface,
          manual: manual,
        );

  final ({
    SnapSlot slot,
    BuiltMap<String, dynamic> slotAttributes,
    SnapPlug plug,
    BuiltMap<String, dynamic> plugAttributes,
    String interface,
    bool manual,
  }) _data;

  factory SnapConnection.fromJson(Map<String, dynamic> json) =>
      _$SnapConnectionFromJson(json);

  Map<String, dynamic> toJson() => _$SnapConnectionToJson(this);

  @override
  String toString() => '$runtimeType$_data';

  @override
  bool operator ==(Object other) =>
      other is SnapConnection && other._data == _data;

  @override
  int get hashCode => _data.hashCode;
}

/// Response received when getting connections.
@immutable
@JsonSerializable()
class SnapdConnectionsResponse {
  /// Connections that have been established.
  List<SnapConnection> get established => _data.established.asList();

  /// Plugs on this system.
  List<SnapPlug> get plugs => _data.plugs.asList();

  /// Slots on this system.
  List<SnapSlot> get slots => _data.slots.asList();

  /// Auto-connected connections that have been manually disconnected.
  List<SnapConnection> get undesired => _data.undesired.asList();

  SnapdConnectionsResponse(
      {List<SnapConnection> established = const [],
      List<SnapPlug> plugs = const [],
      List<SnapSlot> slots = const [],
      List<SnapConnection> undesired = const []})
      : _data = (
          established: BuiltList(established),
          plugs: BuiltList(plugs),
          slots: BuiltList(slots),
          undesired: BuiltList(undesired),
        );

  final ({
    BuiltList<SnapConnection> established,
    BuiltList<SnapPlug> plugs,
    BuiltList<SnapSlot> slots,
    BuiltList<SnapConnection> undesired,
  }) _data;

  factory SnapdConnectionsResponse.fromJson(Map<String, dynamic> json) =>
      _$SnapdConnectionsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SnapdConnectionsResponseToJson(this);

  @override
  String toString() => '$runtimeType$_data';

  @override
  bool operator ==(Object other) =>
      other is SnapdConnectionsResponse && other._data == _data;

  @override
  int get hashCode => _data.hashCode;
}

/// Gives the state of an asynchronous operation.
@immutable
@JsonSerializable()
class SnapdChange {
  /// The ID of this change.
  String get id => _data.id;

  /// The kind of change, e.g. 'install-snap'.
  String get kind => _data.kind;

  /// Short description of the change. e.g. 'Install snap "moon-buggy"'
  String get summary => _data.summary;

  /// Status of the change, e.g. 'Doing'.
  String get status => _data.status;

  /// True when this change is complete.
  bool get ready => _data.ready;

  /// Error that occurred doing this change.
  String? get err => _data.err;

  /// The time this change started.
  @_SnapdDateTimeConverter()
  DateTime get spawnTime => _data.spawnTime;

  /// The time this change completed.
  DateTime? get readyTime => _data.readyTime;

  /// The tasks of this change.
  List<SnapdTask> get tasks => _data.tasks.asList();

  /// The snaps that are associated with this change.
  @JsonKey(
    name: 'data',
    toJson: _snapNamesToJson,
    fromJson: _snapNamesFromJson,
  )
  List<String> get snapNames => _data.snapNames.asList();

  static Map<String, dynamic> _snapNamesToJson(List<String> snapNames) {
    return {'snap-names': snapNames};
  }

  static List<String> _snapNamesFromJson(Map<String, dynamic> json) {
    return json['snap-names']?.cast<String>() ?? const [];
  }

  SnapdChange(
      {String id = '',
      String kind = '',
      String summary = '',
      String status = '',
      bool ready = false,
      required DateTime spawnTime,
      DateTime? readyTime,
      String? err,
      List<SnapdTask> tasks = const [],
      List<String> snapNames = const []})
      : _data = (
          id: id,
          kind: kind,
          summary: summary,
          status: status,
          ready: ready,
          spawnTime: spawnTime,
          readyTime: readyTime,
          err: err,
          tasks: BuiltList(tasks),
          snapNames: BuiltList(snapNames),
        );

  final ({
    String id,
    String kind,
    String summary,
    String status,
    bool ready,
    DateTime spawnTime,
    DateTime? readyTime,
    String? err,
    BuiltList<SnapdTask> tasks,
    BuiltList<String> snapNames,
  }) _data;

  factory SnapdChange.fromJson(Map<String, dynamic> json) =>
      _$SnapdChangeFromJson(json);

  Map<String, dynamic> toJson() => _$SnapdChangeToJson(this);

  @override
  String toString() => '$runtimeType$_data';

  @override
  bool operator ==(Object other) =>
      other is SnapdChange && other._data == _data;

  @override
  int get hashCode => _data.hashCode;
}

/// Information about a task in a [SnapdChange].
@immutable
@JsonSerializable()
class SnapdTask {
  /// The ID of this task.
  String get id => _data.id;

  /// The kind of task, e.g. 'download-snap'install-snap'.
  String get kind => _data.kind;

  /// Short description of the task. e.g. ''Download snap "moon-buggy" (12) from channel "stable"'
  String get summary => _data.summary;

  /// Status of the task, e.g. 'Doing'.
  String get status => _data.status;

  /// Progress of this task.
  SnapdTaskProgress get progress => _data.progress;

  /// The time this task started.
  @_SnapdDateTimeConverter()
  DateTime get spawnTime => _data.spawnTime;

  /// The time this task completed.
  DateTime? get readyTime => _data.readyTime;

  const SnapdTask(
      {String id = '',
      String kind = '',
      String summary = '',
      String status = '',
      SnapdTaskProgress progress = const SnapdTaskProgress(),
      required DateTime spawnTime,
      DateTime? readyTime})
      : _data = (
          id: id,
          kind: kind,
          summary: summary,
          status: status,
          progress: progress,
          spawnTime: spawnTime,
          readyTime: readyTime,
        );

  final ({
    String id,
    String kind,
    String summary,
    String status,
    SnapdTaskProgress progress,
    DateTime spawnTime,
    DateTime? readyTime,
  }) _data;

  factory SnapdTask.fromJson(Map<String, dynamic> json) =>
      _$SnapdTaskFromJson(json);

  Map<String, dynamic> toJson() => _$SnapdTaskToJson(this);

  @override
  String toString() => '$runtimeType$_data';

  @override
  bool operator ==(Object other) => other is SnapdTask && other._data == _data;

  @override
  int get hashCode => _data.hashCode;
}

/// Progress of a [SnapdTask].
@immutable
@JsonSerializable()
class SnapdTaskProgress {
  /// Optional label.
  String get label => _data.label;

  /// Number of progress items complete.
  int get done => _data.done;

  /// Total number of progress items in this task.
  int get total => _data.total;

  const SnapdTaskProgress({String label = '', int done = 0, int total = 0})
      : _data = (label: label, done: done, total: total);

  final ({String label, int done, int total}) _data;

  factory SnapdTaskProgress.fromJson(Map<String, dynamic> json) =>
      _$SnapdTaskProgressFromJson(json);

  Map<String, dynamic> toJson() => _$SnapdTaskProgressToJson(this);

  @override
  String toString() => '$runtimeType$_data';

  @override
  bool operator ==(Object other) =>
      other is SnapdTaskProgress && other._data == _data;

  @override
  int get hashCode => _data.hashCode;
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
    return SnapdSystemInfoResponse.fromJson(result);
  }

  /// Gets informtion on all installed snaps.
  Future<List<Snap>> getSnaps() async {
    var result = await _getSync('/v2/snaps');
    var snaps = <Snap>[];
    for (var snap in result) {
      snaps.add(Snap.fromJson(snap));
    }
    return snaps;
  }

  /// Gets information on an installed snap with the given [name].
  Future<Snap> getSnap(String name) async {
    var encodedName = Uri.encodeComponent(name);
    var result = await _getSync('/v2/snaps/$encodedName');
    return Snap.fromJson(result);
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
      apps.add(SnapApp.fromJson(app));
    }
    return apps;
  }

  /// Gets all the store categories available.
  Future<List<SnapdCategoryDetails>> getCategories() async {
    var result = await _getSync('/v2/categories');
    var categories = <SnapdCategoryDetails>[];
    for (var category in result) {
      categories.add(SnapdCategoryDetails.fromJson(category));
    }
    return categories;
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
    return SnapdConnectionsResponse.fromJson(result);
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
  /// Returns the change ID for this operation, use [getChange] to get the status of this operation.
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
  /// Returns the change ID for this operation, use [getChange] to get the status of this operation.
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
  /// If [category] is provided, search within that store category.
  /// If [filter] is provided, alter the collection searched:
  ///   - 'refresh': search refreshable snaps. Can't be used with [query] nor [name].
  ///   - 'private': search private snaps. Can't be used with [query].
  Future<List<Snap>> find(
      {String? query,
      String? name,
      String? category,
      @Deprecated('Replaced with category') String? section,
      SnapFindFilter? filter}) async {
    var queryParameters = <String, String>{};
    if (query != null) {
      queryParameters['q'] = query;
    }
    if (name != null) {
      queryParameters['name'] = name;
    }
    if (category != null) {
      queryParameters['category'] = category;
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
      snaps.add(Snap.fromJson(snap));
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
    return SnapdLoginResponse.fromJson(result);
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

  // Enable the snap with the given [name].
  /// Returns the change ID for this operation, use [getChange] to get the status of this operation.
  Future<String> enable(String name) async {
    var request = <String, dynamic>{'action': 'enable'};
    var encodedName = Uri.encodeComponent(name);
    return await _postAsync('/v2/snaps/$encodedName', request);
  }

  // Disable the snap with the given [name].
  /// Returns the change ID for this operation, use [getChange] to get the status of this operation.
  Future<String> disable(String name) async {
    var request = <String, dynamic>{'action': 'disable'};
    var encodedName = Uri.encodeComponent(name);
    return await _postAsync('/v2/snaps/$encodedName', request);
  }

  /// Gets the status the change with the given [id].
  Future<SnapdChange> getChange(String id) async {
    var result = await _getSync('/v2/changes/$id');
    return SnapdChange.fromJson(result);
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
      changes.add(SnapdChange.fromJson(change));
    }
    return changes;
  }

  /// Aborts the change with the given [id].
  Future<SnapdChange> abortChange(String id) async {
    var queryParameters = {'action': 'abort'};
    var result = await _postSync('/v2/changes/$id', queryParameters);
    return SnapdChange.fromJson(result);
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
  /// Returns the change ID for this operation, use [getChange] to get the status of this operation.
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
