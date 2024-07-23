// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'snapd_client.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SnapAppImpl _$$SnapAppImplFromJson(Map json) => _$SnapAppImpl(
      name: json['name'] as String,
      snap: json['snap'] as String?,
      desktopFile: json['desktop-file'] as String?,
      daemon: json['daemon'] as String?,
      enabled: json['enabled'] as bool? ?? true,
      active: json['active'] as bool? ?? true,
      commonId: json['common-id'] as String?,
    );

Map<String, dynamic> _$$SnapAppImplToJson(_$SnapAppImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'snap': instance.snap,
      'desktop-file': instance.desktopFile,
      'daemon': instance.daemon,
      'enabled': instance.enabled,
      'active': instance.active,
      'common-id': instance.commonId,
    };

_$SnapCategoryImpl _$$SnapCategoryImplFromJson(Map json) => _$SnapCategoryImpl(
      name: json['name'] as String,
      featured: json['featured'] as bool? ?? false,
    );

Map<String, dynamic> _$$SnapCategoryImplToJson(_$SnapCategoryImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'featured': instance.featured,
    };

_$SnapCategoryDetailsImpl _$$SnapCategoryDetailsImplFromJson(Map json) =>
    _$SnapCategoryDetailsImpl(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$SnapCategoryDetailsImplToJson(
        _$SnapCategoryDetailsImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$SnapChannelImpl _$$SnapChannelImplFromJson(Map json) => _$SnapChannelImpl(
      releasedAt: DateTime.parse(json['released-at'] as String),
      confinement: $enumDecodeNullable(
              _$SnapConfinementEnumMap, json['confinement'],
              unknownValue: SnapConfinement.unknown) ??
          SnapConfinement.unknown,
      revision: json['revision'] as String?,
      size: (json['size'] as num?)?.toInt() ?? 0,
      version: json['version'] as String?,
    );

Map<String, dynamic> _$$SnapChannelImplToJson(_$SnapChannelImpl instance) =>
    <String, dynamic>{
      'released-at': instance.releasedAt.toIso8601String(),
      'confinement': _$SnapConfinementEnumMap[instance.confinement]!,
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

_$SnapPublisherImpl _$$SnapPublisherImplFromJson(Map json) =>
    _$SnapPublisherImpl(
      id: json['id'] as String,
      displayName: json['display-name'] as String,
      username: json['username'] as String?,
      validation: json['validation'] as String?,
    );

Map<String, dynamic> _$$SnapPublisherImplToJson(_$SnapPublisherImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'display-name': instance.displayName,
      'username': instance.username,
      'validation': instance.validation,
    };

_$SnapMediaImpl _$$SnapMediaImplFromJson(Map json) => _$SnapMediaImpl(
      type: json['type'] as String,
      url: json['url'] as String,
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$SnapMediaImplToJson(_$SnapMediaImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'url': instance.url,
      'width': instance.width,
      'height': instance.height,
    };

_$SnapImpl _$$SnapImplFromJson(Map json) => _$SnapImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      version: json['version'] as String,
      channel: json['channel'] as String,
      type: json['type'] as String,
      revision: Snap._parseRevision(json['revision']),
      contact: json['contact'] as String? ?? '',
      description: json['description'] as String? ?? '',
      summary: json['summary'] as String? ?? '',
      channels: (json['channels'] as Map?)?.map(
            (k, e) => MapEntry(k as String,
                SnapChannel.fromJson(Map<String, dynamic>.from(e as Map))),
          ) ??
          const {},
      apps: (json['apps'] as List<dynamic>?)
              ?.map(
                  (e) => SnapApp.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
      categories: (json['categories'] as List<dynamic>?)
              ?.map((e) =>
                  SnapCategory.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
      tracks: (json['tracks'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      commonIds: (json['common-ids'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      media: (json['media'] as List<dynamic>?)
              ?.map((e) =>
                  SnapMedia.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
      confinement: $enumDecodeNullable(
              _$SnapConfinementEnumMap, json['confinement'],
              unknownValue: SnapConfinement.unknown) ??
          SnapConfinement.unknown,
      status: $enumDecodeNullable(_$SnapStatusEnumMap, json['status']) ??
          SnapStatus.unknown,
      devmode: json['devmode'] as bool? ?? false,
      jailmode: json['jailmode'] as bool? ?? false,
      private: json['private'] as bool? ?? false,
      base: json['base'] as String?,
      title: json['title'] as String?,
      trackingChannel: json['tracking-channel'] as String?,
      website: json['website'] as String?,
      license: json['license'] as String?,
      mountedFrom: json['mounted-from'] as String?,
      storeUrl: json['store-url'] as String?,
      hold:
          json['hold'] == null ? null : DateTime.parse(json['hold'] as String),
      installDate: json['install-date'] == null
          ? null
          : DateTime.parse(json['install-date'] as String),
      downloadSize: (json['download-size'] as num?)?.toInt(),
      installedSize: (json['installed-size'] as num?)?.toInt(),
      publisher: json['publisher'] == null
          ? null
          : SnapPublisher.fromJson(
              Map<String, dynamic>.from(json['publisher'] as Map)),
      refreshInhibit: json['refresh-inhibit'] == null
          ? null
          : RefreshInhibit.fromJson(
              Map<String, dynamic>.from(json['refresh-inhibit'] as Map)),
    );

Map<String, dynamic> _$$SnapImplToJson(_$SnapImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'version': instance.version,
      'channel': instance.channel,
      'type': instance.type,
      'revision': instance.revision,
      'contact': instance.contact,
      'description': instance.description,
      'summary': instance.summary,
      'channels': instance.channels.map((k, e) => MapEntry(k, e.toJson())),
      'apps': instance.apps.map((e) => e.toJson()).toList(),
      'categories': instance.categories.map((e) => e.toJson()).toList(),
      'tracks': instance.tracks,
      'common-ids': instance.commonIds,
      'media': instance.media.map((e) => e.toJson()).toList(),
      'confinement': _$SnapConfinementEnumMap[instance.confinement]!,
      'status': _$SnapStatusEnumMap[instance.status]!,
      'devmode': instance.devmode,
      'jailmode': instance.jailmode,
      'private': instance.private,
      'base': instance.base,
      'title': instance.title,
      'tracking-channel': instance.trackingChannel,
      'website': instance.website,
      'license': instance.license,
      'mounted-from': instance.mountedFrom,
      'store-url': instance.storeUrl,
      'hold': instance.hold?.toIso8601String(),
      'install-date': instance.installDate?.toIso8601String(),
      'download-size': instance.downloadSize,
      'installed-size': instance.installedSize,
      'publisher': instance.publisher?.toJson(),
      'refresh-inhibit': instance.refreshInhibit?.toJson(),
    };

const _$SnapStatusEnumMap = {
  SnapStatus.unknown: 'unknown',
  SnapStatus.available: 'available',
  SnapStatus.priced: 'priced',
  SnapStatus.installed: 'installed',
  SnapStatus.active: 'active',
};

_$SnapDeclarationImpl _$$SnapDeclarationImplFromJson(Map json) =>
    _$SnapDeclarationImpl(
      snapId: json['snap-id'] as String,
      type: json['type'] as String?,
      authorityId: json['authority-id'] as String?,
      revision: (json['revision'] as num?)?.toInt() ?? 0,
      series: (json['series'] as num?)?.toInt() ?? 0,
      publisherId: json['publisher-id'] as String?,
      snapName: json['snap-name'] as String?,
      timestamp: json['timestamp'] as String?,
      signKey: json['sign-key'] as String?,
    );

Map<String, dynamic> _$$SnapDeclarationImplToJson(
        _$SnapDeclarationImpl instance) =>
    <String, dynamic>{
      'snap-id': instance.snapId,
      'type': instance.type,
      'authority-id': instance.authorityId,
      'revision': instance.revision,
      'series': instance.series,
      'publisher-id': instance.publisherId,
      'snap-name': instance.snapName,
      'timestamp': instance.timestamp,
      'sign-key': instance.signKey,
    };

_$SnapdSystemInfoResponseImpl _$$SnapdSystemInfoResponseImplFromJson(
        Map json) =>
    _$SnapdSystemInfoResponseImpl(
      refresh: SnapdSystemRefreshInfo.fromJson(
          Map<String, dynamic>.from(json['refresh'] as Map)),
      architecture: json['architecture'] as String?,
      buildId: json['build-id'] as String?,
      confinement: $enumDecodeNullable(
              _$SnapConfinementEnumMap, json['confinement'],
              unknownValue: SnapConfinement.unknown) ??
          SnapConfinement.unknown,
      features: (json['features'] as Map?)?.map(
        (k, e) => MapEntry(k as String, e),
      ),
      kernelVersion: json['kernel-version'] as String?,
      managed: json['managed'] as bool? ?? false,
      onClassic: json['on-classic'] as bool? ?? false,
      series: json['series'] as String?,
      systemMode: json['system-mode'] as String?,
      version: json['version'] as String?,
    );

Map<String, dynamic> _$$SnapdSystemInfoResponseImplToJson(
        _$SnapdSystemInfoResponseImpl instance) =>
    <String, dynamic>{
      'refresh': instance.refresh.toJson(),
      'architecture': instance.architecture,
      'build-id': instance.buildId,
      'confinement': _$SnapConfinementEnumMap[instance.confinement]!,
      'features': instance.features,
      'kernel-version': instance.kernelVersion,
      'managed': instance.managed,
      'on-classic': instance.onClassic,
      'series': instance.series,
      'system-mode': instance.systemMode,
      'version': instance.version,
    };

_$SnapdSystemRefreshInfoImpl _$$SnapdSystemRefreshInfoImplFromJson(Map json) =>
    _$SnapdSystemRefreshInfoImpl(
      next: const _SnapdDateTimeConverter().fromJson(json['next'] as String?),
      last:
          json['last'] == null ? null : DateTime.parse(json['last'] as String),
    );

Map<String, dynamic> _$$SnapdSystemRefreshInfoImplToJson(
        _$SnapdSystemRefreshInfoImpl instance) =>
    <String, dynamic>{
      'next': const _SnapdDateTimeConverter().toJson(instance.next),
      'last': instance.last?.toIso8601String(),
    };

_$SnapdLoginResponseImpl _$$SnapdLoginResponseImplFromJson(Map json) =>
    _$SnapdLoginResponseImpl(
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

Map<String, dynamic> _$$SnapdLoginResponseImplToJson(
        _$SnapdLoginResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'macaroon': instance.macaroon,
      'discharges': instance.discharges,
      'ssh-keys': instance.sshKeys,
    };

_$SnapPlugImpl _$$SnapPlugImplFromJson(Map json) => _$SnapPlugImpl(
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

Map<String, dynamic> _$$SnapPlugImplToJson(_$SnapPlugImpl instance) =>
    <String, dynamic>{
      'snap': instance.snap,
      'plug': instance.plug,
      'attrs': instance.attributes,
      'interface': instance.interface,
      'connections': instance.connections.map((e) => e.toJson()).toList(),
    };

_$SnapSlotImpl _$$SnapSlotImplFromJson(Map json) => _$SnapSlotImpl(
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

Map<String, dynamic> _$$SnapSlotImplToJson(_$SnapSlotImpl instance) =>
    <String, dynamic>{
      'snap': instance.snap,
      'slot': instance.slot,
      'attrs': instance.attributes,
      'interface': instance.interface,
      'connections': instance.connections.map((e) => e.toJson()).toList(),
    };

_$SnapConnectionImpl _$$SnapConnectionImplFromJson(Map json) =>
    _$SnapConnectionImpl(
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

Map<String, dynamic> _$$SnapConnectionImplToJson(
        _$SnapConnectionImpl instance) =>
    <String, dynamic>{
      'slot': instance.slot.toJson(),
      'plug': instance.plug.toJson(),
      'interface': instance.interface,
      'slot-attrs': instance.slotAttributes,
      'plug-attrs': instance.plugAttributes,
      'manual': instance.manual,
    };

_$SnapdConnectionsResponseImpl _$$SnapdConnectionsResponseImplFromJson(
        Map json) =>
    _$SnapdConnectionsResponseImpl(
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

Map<String, dynamic> _$$SnapdConnectionsResponseImplToJson(
        _$SnapdConnectionsResponseImpl instance) =>
    <String, dynamic>{
      'established': instance.established.map((e) => e.toJson()).toList(),
      'plugs': instance.plugs.map((e) => e.toJson()).toList(),
      'slots': instance.slots.map((e) => e.toJson()).toList(),
      'undesired': instance.undesired.map((e) => e.toJson()).toList(),
    };

_$SnapdChangeImpl _$$SnapdChangeImplFromJson(Map json) => _$SnapdChangeImpl(
      id: json['id'] as String,
      spawnTime: json['spawn-time'] == null
          ? null
          : DateTime.parse(json['spawn-time'] as String),
      kind: json['kind'] as String?,
      summary: json['summary'] as String?,
      status: json['status'] as String?,
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

Map<String, dynamic> _$$SnapdChangeImplToJson(_$SnapdChangeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'spawn-time': instance.spawnTime?.toIso8601String(),
      'kind': instance.kind,
      'summary': instance.summary,
      'status': instance.status,
      'ready': instance.ready,
      'ready-time': instance.readyTime?.toIso8601String(),
      'err': instance.err,
      'tasks': instance.tasks.map((e) => e.toJson()).toList(),
      'data': SnapdChange._snapNamesToJson(instance.snapNames),
    };

_$SnapdTaskImpl _$$SnapdTaskImplFromJson(Map json) => _$SnapdTaskImpl(
      id: json['id'] as String,
      spawnTime: json['spawn-time'] == null
          ? null
          : DateTime.parse(json['spawn-time'] as String),
      kind: json['kind'] as String?,
      summary: json['summary'] as String? ?? '',
      status: json['status'] as String?,
      progress: json['progress'] == null
          ? const SnapdTaskProgress()
          : SnapdTaskProgress.fromJson(
              Map<String, dynamic>.from(json['progress'] as Map)),
      readyTime: json['ready-time'] == null
          ? null
          : DateTime.parse(json['ready-time'] as String),
    );

Map<String, dynamic> _$$SnapdTaskImplToJson(_$SnapdTaskImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'spawn-time': instance.spawnTime?.toIso8601String(),
      'kind': instance.kind,
      'summary': instance.summary,
      'status': instance.status,
      'progress': instance.progress.toJson(),
      'ready-time': instance.readyTime?.toIso8601String(),
    };

_$SnapdTaskProgressImpl _$$SnapdTaskProgressImplFromJson(Map json) =>
    _$SnapdTaskProgressImpl(
      label: json['label'] as String? ?? '',
      done: (json['done'] as num?)?.toInt() ?? 0,
      total: (json['total'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$SnapdTaskProgressImplToJson(
        _$SnapdTaskProgressImpl instance) =>
    <String, dynamic>{
      'label': instance.label,
      'done': instance.done,
      'total': instance.total,
    };

_$SnapdConstraintImpl _$$SnapdConstraintImplFromJson(Map json) =>
    _$SnapdConstraintImpl(
      pathPattern: json['path-pattern'] as String?,
      permissions: (json['permissions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$SnapdConstraintImplToJson(
        _$SnapdConstraintImpl instance) =>
    <String, dynamic>{
      'path-pattern': instance.pathPattern,
      'permissions': instance.permissions,
    };

_$SnapdRuleImpl _$$SnapdRuleImplFromJson(Map json) => _$SnapdRuleImpl(
      id: json['id'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      snap: json['snap'] as String,
      interface: json['interface'] as String,
      constraints: SnapdConstraints.fromJson(
          Map<String, dynamic>.from(json['constraints'] as Map)),
      outcome: $enumDecode(_$SnapdRequestOutcomeEnumMap, json['outcome']),
      lifespan: $enumDecode(_$SnapdRequestLifespanEnumMap, json['lifespan']),
      expiration: json['expiration'] == null
          ? null
          : DateTime.parse(json['expiration'] as String),
    );

Map<String, dynamic> _$$SnapdRuleImplToJson(_$SnapdRuleImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'timestamp': instance.timestamp.toIso8601String(),
      'snap': instance.snap,
      'interface': instance.interface,
      'constraints': instance.constraints.toJson(),
      'outcome': _$SnapdRequestOutcomeEnumMap[instance.outcome]!,
      'lifespan': _$SnapdRequestLifespanEnumMap[instance.lifespan]!,
      'expiration': instance.expiration?.toIso8601String(),
    };

const _$SnapdRequestOutcomeEnumMap = {
  SnapdRequestOutcome.allow: 'allow',
  SnapdRequestOutcome.deny: 'deny',
};

const _$SnapdRequestLifespanEnumMap = {
  SnapdRequestLifespan.single: 'single',
  SnapdRequestLifespan.session: 'session',
  SnapdRequestLifespan.forever: 'forever',
  SnapdRequestLifespan.timespan: 'timespan',
};

_$SnapdRuleMaskImpl _$$SnapdRuleMaskImplFromJson(Map json) =>
    _$SnapdRuleMaskImpl(
      snap: json['snap'] as String,
      interface: json['interface'] as String,
      constraints: SnapdConstraints.fromJson(
          Map<String, dynamic>.from(json['constraints'] as Map)),
      outcome: $enumDecode(_$SnapdRequestOutcomeEnumMap, json['outcome']),
      lifespan: $enumDecode(_$SnapdRequestLifespanEnumMap, json['lifespan']),
    );

Map<String, dynamic> _$$SnapdRuleMaskImplToJson(_$SnapdRuleMaskImpl instance) =>
    <String, dynamic>{
      'snap': instance.snap,
      'interface': instance.interface,
      'constraints': instance.constraints.toJson(),
      'outcome': _$SnapdRequestOutcomeEnumMap[instance.outcome]!,
      'lifespan': _$SnapdRequestLifespanEnumMap[instance.lifespan]!,
    };

_$RefreshInhibitImpl _$$RefreshInhibitImplFromJson(Map json) =>
    _$RefreshInhibitImpl(
      proceedTime: const _SnapdDateTimeConverter()
          .fromJson(json['proceed-time'] as String?),
    );

Map<String, dynamic> _$$RefreshInhibitImplToJson(
        _$RefreshInhibitImpl instance) =>
    <String, dynamic>{
      'proceed-time':
          const _SnapdDateTimeConverter().toJson(instance.proceedTime),
    };
