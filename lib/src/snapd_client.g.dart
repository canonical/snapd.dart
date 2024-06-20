// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'snapd_client.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SnapApp _$SnapAppFromJson(Map json) => SnapApp(
      snap: json['snap'] as String?,
      name: json['name'] as String,
      desktopFile: json['desktop-file'] as String?,
      daemon: json['daemon'] as String?,
      enabled: json['enabled'] as bool? ?? true,
      active: json['active'] as bool? ?? true,
      commonId: json['common-id'] as String?,
    );

Map<String, dynamic> _$SnapAppToJson(SnapApp instance) => <String, dynamic>{
      'snap': instance.snap,
      'name': instance.name,
      'desktop-file': instance.desktopFile,
      'daemon': instance.daemon,
      'enabled': instance.enabled,
      'active': instance.active,
      'common-id': instance.commonId,
    };

SnapCategory _$SnapCategoryFromJson(Map json) => SnapCategory(
      name: json['name'] as String,
      featured: json['featured'] as bool? ?? false,
    );

Map<String, dynamic> _$SnapCategoryToJson(SnapCategory instance) =>
    <String, dynamic>{
      'name': instance.name,
      'featured': instance.featured,
    };

SnapdCategoryDetails _$SnapdCategoryDetailsFromJson(Map json) =>
    SnapdCategoryDetails(
      name: json['name'] as String,
    );

Map<String, dynamic> _$SnapdCategoryDetailsToJson(
        SnapdCategoryDetails instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

SnapChannel _$SnapChannelFromJson(Map json) => SnapChannel(
      releasedAt: DateTime.parse(json['released-at'] as String),
      confinement: $enumDecodeNullable(
              _$SnapConfinementEnumMap, json['confinement'],
              unknownValue: SnapConfinement.unknown) ??
          SnapConfinement.unknown,
      revision: json['revision'] as String? ?? '',
      size: (json['size'] as num?)?.toInt() ?? 0,
      version: json['version'] as String? ?? '',
    );

Map<String, dynamic> _$SnapChannelToJson(SnapChannel instance) =>
    <String, dynamic>{
      'confinement': _$SnapConfinementEnumMap[instance.confinement]!,
      'released-at': instance.releasedAt.toIso8601String(),
      'revision': instance.revision,
      'size': instance.size,
      'version': instance.version,
    };

const _$SnapConfinementEnumMap = {
  SnapConfinement.unknown: 'unknown',
  SnapConfinement.strict: 'strict',
  SnapConfinement.devmode: 'devmode',
  SnapConfinement.classic: 'classic',
};

SnapPublisher _$SnapPublisherFromJson(Map json) => SnapPublisher(
      id: json['id'] as String? ?? '',
      username: json['username'] as String? ?? '',
      displayName: json['display-name'] as String? ?? '',
      validation: json['validation'] as String?,
    );

Map<String, dynamic> _$SnapPublisherToJson(SnapPublisher instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'display-name': instance.displayName,
      'validation': instance.validation,
    };

SnapMedia _$SnapMediaFromJson(Map json) => SnapMedia(
      type: json['type'] as String,
      url: json['url'] as String,
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
    );

Map<String, dynamic> _$SnapMediaToJson(SnapMedia instance) => <String, dynamic>{
      'type': instance.type,
      'url': instance.url,
      'width': instance.width,
      'height': instance.height,
    };

Snap _$SnapFromJson(Map json) => Snap(
      name: json['name'] as String,
      apps: (json['apps'] as List<dynamic>?)
              ?.map(
                  (e) => SnapApp.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
      base: json['base'] as String?,
      categories: (json['categories'] as List<dynamic>?)
              ?.map((e) =>
                  SnapCategory.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
      channel: json['channel'] as String? ?? '',
      channels: (json['channels'] as Map?)?.map(
            (k, e) => MapEntry(k as String,
                SnapChannel.fromJson(Map<String, dynamic>.from(e as Map))),
          ) ??
          const {},
      commonIds: (json['common-ids'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      confinement:
          $enumDecodeNullable(_$SnapConfinementEnumMap, json['confinement']) ??
              SnapConfinement.unknown,
      contact: json['contact'] as String? ?? '',
      description: json['description'] as String? ?? '',
      devmode: json['devmode'] as bool? ?? false,
      downloadSize: (json['download-size'] as num?)?.toInt(),
      hold:
          json['hold'] == null ? null : DateTime.parse(json['hold'] as String),
      id: json['id'] as String? ?? '',
      installDate: json['install-date'] == null
          ? null
          : DateTime.parse(json['install-date'] as String),
      installedSize: (json['installed-size'] as num?)?.toInt(),
      jailmode: json['jailmode'] as bool? ?? false,
      license: json['license'] as String?,
      media: (json['media'] as List<dynamic>?)
              ?.map((e) =>
                  SnapMedia.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
      mountedFrom: json['mounted-from'] as String?,
      private: json['private'] as bool? ?? false,
      publisher: json['publisher'] == null
          ? null
          : SnapPublisher.fromJson(
              Map<String, dynamic>.from(json['publisher'] as Map)),
      revision: json['revision'] as String? ?? '',
      status: $enumDecodeNullable(_$SnapStatusEnumMap, json['status']) ??
          SnapStatus.unknown,
      storeUrl: json['store-url'] as String?,
      summary: json['summary'] as String? ?? '',
      title: json['title'] as String? ?? '',
      trackingChannel: json['tracking-channel'] as String?,
      tracks: (json['tracks'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      type: json['type'] as String? ?? '',
      version: json['version'] as String? ?? '',
      website: json['website'] as String?,
    );

Map<String, dynamic> _$SnapToJson(Snap instance) => <String, dynamic>{
      'apps': instance.apps.map((e) => e.toJson()).toList(),
      'base': instance.base,
      'categories': instance.categories.map((e) => e.toJson()).toList(),
      'channel': instance.channel,
      'channels': instance.channels.map((k, e) => MapEntry(k, e.toJson())),
      'common-ids': instance.commonIds,
      'confinement': _$SnapConfinementEnumMap[instance.confinement]!,
      'contact': instance.contact,
      'description': instance.description,
      'devmode': instance.devmode,
      'download-size': instance.downloadSize,
      'hold': instance.hold?.toIso8601String(),
      'id': instance.id,
      'install-date': instance.installDate?.toIso8601String(),
      'installed-size': instance.installedSize,
      'jailmode': instance.jailmode,
      'license': instance.license,
      'media': instance.media.map((e) => e.toJson()).toList(),
      'mounted-from': instance.mountedFrom,
      'name': instance.name,
      'private': instance.private,
      'publisher': instance.publisher?.toJson(),
      'revision': instance.revision,
      'status': _$SnapStatusEnumMap[instance.status]!,
      'store-url': instance.storeUrl,
      'summary': instance.summary,
      'title': instance.title,
      'tracking-channel': instance.trackingChannel,
      'tracks': instance.tracks,
      'type': instance.type,
      'version': instance.version,
      'website': instance.website,
    };

const _$SnapStatusEnumMap = {
  SnapStatus.unknown: 'unknown',
  SnapStatus.available: 'available',
  SnapStatus.priced: 'priced',
  SnapStatus.installed: 'installed',
  SnapStatus.active: 'active',
};

SnapDeclaration _$SnapDeclarationFromJson(Map json) => SnapDeclaration(
      type: json['type'] as String? ?? '',
      authorityId: json['authority-id'] as String? ?? '',
      revision: (json['revision'] as num?)?.toInt() ?? 0,
      series: (json['series'] as num?)?.toInt() ?? 0,
      snapId: json['snap-id'] as String? ?? '',
      publisherId: json['publisher-id'] as String? ?? '',
      snapName: json['snap-name'] as String? ?? '',
      timestamp: json['timestamp'] as String? ?? '',
      signKey: json['sign-key'] as String? ?? '',
    );

Map<String, dynamic> _$SnapDeclarationToJson(SnapDeclaration instance) =>
    <String, dynamic>{
      'type': instance.type,
      'authority-id': instance.authorityId,
      'revision': instance.revision,
      'series': instance.series,
      'snap-id': instance.snapId,
      'publisher-id': instance.publisherId,
      'snap-name': instance.snapName,
      'timestamp': instance.timestamp,
      'sign-key': instance.signKey,
    };

SnapdSystemInfoResponse _$SnapdSystemInfoResponseFromJson(Map json) =>
    SnapdSystemInfoResponse(
      refresh: SnapdSystemRefreshInfo.fromJson(
          Map<String, dynamic>.from(json['refresh'] as Map)),
      architecture: json['architecture'] as String? ?? '',
      buildId: json['build-id'] as String? ?? '',
      confinement: $enumDecodeNullable(
              _$SnapConfinementEnumMap, json['confinement'],
              unknownValue: SnapConfinement.unknown) ??
          SnapConfinement.unknown,
      kernelVersion: json['kernel-version'] as String? ?? '',
      managed: json['managed'] as bool? ?? false,
      onClassic: json['on-classic'] as bool? ?? false,
      series: json['series'] as String? ?? '',
      systemMode: json['system-mode'] as String? ?? '',
      version: json['version'] as String? ?? '',
    );

Map<String, dynamic> _$SnapdSystemInfoResponseToJson(
        SnapdSystemInfoResponse instance) =>
    <String, dynamic>{
      'architecture': instance.architecture,
      'build-id': instance.buildId,
      'confinement': _$SnapConfinementEnumMap[instance.confinement]!,
      'kernel-version': instance.kernelVersion,
      'managed': instance.managed,
      'on-classic': instance.onClassic,
      'refresh': instance.refresh.toJson(),
      'series': instance.series,
      'system-mode': instance.systemMode,
      'version': instance.version,
    };

SnapdSystemRefreshInfo _$SnapdSystemRefreshInfoFromJson(Map json) =>
    SnapdSystemRefreshInfo(
      next: const _SnapdDateTimeConverter().fromJson(json['next'] as String?),
      last:
          json['last'] == null ? null : DateTime.parse(json['last'] as String),
    );

Map<String, dynamic> _$SnapdSystemRefreshInfoToJson(
        SnapdSystemRefreshInfo instance) =>
    <String, dynamic>{
      'last': instance.last?.toIso8601String(),
      'next': const _SnapdDateTimeConverter().toJson(instance.next),
    };

SnapdLoginResponse _$SnapdLoginResponseFromJson(Map json) => SnapdLoginResponse(
      id: (json['id'] as num).toInt(),
      username: json['username'] as String?,
      email: json['email'] as String?,
      macaroon: json['macaroon'] as String?,
      discharges: (json['discharges'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      sshKeys: (json['ssh-keys'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$SnapdLoginResponseToJson(SnapdLoginResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'macaroon': instance.macaroon,
      'discharges': instance.discharges,
      'ssh-keys': instance.sshKeys,
    };

SnapPlug _$SnapPlugFromJson(Map json) => SnapPlug(
      snap: json['snap'] as String,
      plug: json['plug'] as String,
      attributes: (json['attrs'] as Map?)?.map(
            (k, e) => MapEntry(k as String, e),
          ) ??
          const {},
      interface: json['interface'] as String?,
      connections: (json['connections'] as List<dynamic>?)
              ?.map(
                  (e) => SnapSlot.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$SnapPlugToJson(SnapPlug instance) => <String, dynamic>{
      'snap': instance.snap,
      'plug': instance.plug,
      'attrs': instance.attributes,
      'interface': instance.interface,
      'connections': instance.connections.map((e) => e.toJson()).toList(),
    };

SnapSlot _$SnapSlotFromJson(Map json) => SnapSlot(
      snap: json['snap'] as String,
      slot: json['slot'] as String,
      attributes: (json['attrs'] as Map?)?.map(
            (k, e) => MapEntry(k as String, e),
          ) ??
          const {},
      interface: json['interface'] as String?,
      connections: (json['connections'] as List<dynamic>?)
              ?.map(
                  (e) => SnapPlug.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$SnapSlotToJson(SnapSlot instance) => <String, dynamic>{
      'snap': instance.snap,
      'slot': instance.slot,
      'attrs': instance.attributes,
      'interface': instance.interface,
      'connections': instance.connections.map((e) => e.toJson()).toList(),
    };

SnapConnection _$SnapConnectionFromJson(Map json) => SnapConnection(
      slot: SnapSlot.fromJson(Map<String, dynamic>.from(json['slot'] as Map)),
      plug: SnapPlug.fromJson(Map<String, dynamic>.from(json['plug'] as Map)),
      interface: json['interface'] as String,
      slotAttributes: (json['slot-attrs'] as Map?)?.map(
            (k, e) => MapEntry(k as String, e),
          ) ??
          const {},
      plugAttributes: (json['plug-attrs'] as Map?)?.map(
            (k, e) => MapEntry(k as String, e),
          ) ??
          const {},
      manual: json['manual'] as bool? ?? false,
    );

Map<String, dynamic> _$SnapConnectionToJson(SnapConnection instance) =>
    <String, dynamic>{
      'slot': instance.slot.toJson(),
      'slot-attrs': instance.slotAttributes,
      'plug': instance.plug.toJson(),
      'plug-attrs': instance.plugAttributes,
      'interface': instance.interface,
      'manual': instance.manual,
    };

SnapdConnectionsResponse _$SnapdConnectionsResponseFromJson(Map json) =>
    SnapdConnectionsResponse(
      established: (json['established'] as List<dynamic>?)
              ?.map((e) =>
                  SnapConnection.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
      plugs: (json['plugs'] as List<dynamic>?)
              ?.map(
                  (e) => SnapPlug.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
      slots: (json['slots'] as List<dynamic>?)
              ?.map(
                  (e) => SnapSlot.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
      undesired: (json['undesired'] as List<dynamic>?)
              ?.map((e) =>
                  SnapConnection.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$SnapdConnectionsResponseToJson(
        SnapdConnectionsResponse instance) =>
    <String, dynamic>{
      'established': instance.established.map((e) => e.toJson()).toList(),
      'plugs': instance.plugs.map((e) => e.toJson()).toList(),
      'slots': instance.slots.map((e) => e.toJson()).toList(),
      'undesired': instance.undesired.map((e) => e.toJson()).toList(),
    };

SnapdChange _$SnapdChangeFromJson(Map json) => SnapdChange(
      spawnTime: DateTime.parse(json['spawn-time'] as String),
      id: json['id'] as String? ?? '',
      kind: json['kind'] as String? ?? '',
      summary: json['summary'] as String? ?? '',
      status: json['status'] as String? ?? '',
      ready: json['ready'] as bool? ?? false,
      readyTime: json['ready-time'] == null
          ? null
          : DateTime.parse(json['ready-time'] as String),
      err: json['err'] as String?,
      tasks: (json['tasks'] as List<dynamic>?)
              ?.map((e) =>
                  SnapdTask.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
      snapNames: json['data'] == null
          ? const []
          : SnapdChange._snapNamesFromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SnapdChangeToJson(SnapdChange instance) =>
    <String, dynamic>{
      'id': instance.id,
      'kind': instance.kind,
      'summary': instance.summary,
      'status': instance.status,
      'ready': instance.ready,
      'err': instance.err,
      'spawn-time': instance.spawnTime.toIso8601String(),
      'ready-time': instance.readyTime?.toIso8601String(),
      'tasks': instance.tasks.map((e) => e.toJson()).toList(),
      'data': SnapdChange._snapNamesToJson(instance.snapNames),
    };

SnapdTask _$SnapdTaskFromJson(Map json) => SnapdTask(
      id: json['id'] as String? ?? '',
      kind: json['kind'] as String? ?? '',
      summary: json['summary'] as String? ?? '',
      status: json['status'] as String? ?? '',
      progress: json['progress'] == null
          ? const SnapdTaskProgress()
          : SnapdTaskProgress.fromJson(
              Map<String, dynamic>.from(json['progress'] as Map)),
      spawnTime: json['spawn-time'] == null
          ? null
          : DateTime.parse(json['spawn-time'] as String),
      readyTime: json['ready-time'] == null
          ? null
          : DateTime.parse(json['ready-time'] as String),
    );

Map<String, dynamic> _$SnapdTaskToJson(SnapdTask instance) => <String, dynamic>{
      'id': instance.id,
      'kind': instance.kind,
      'summary': instance.summary,
      'status': instance.status,
      'progress': instance.progress.toJson(),
      'spawn-time': instance.spawnTime.toIso8601String(),
      'ready-time': instance.readyTime?.toIso8601String(),
    };

SnapdTaskProgress _$SnapdTaskProgressFromJson(Map json) => SnapdTaskProgress(
      label: json['label'] as String? ?? '',
      done: (json['done'] as num?)?.toInt() ?? 0,
      total: (json['total'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$SnapdTaskProgressToJson(SnapdTaskProgress instance) =>
    <String, dynamic>{
      'label': instance.label,
      'done': instance.done,
      'total': instance.total,
    };
