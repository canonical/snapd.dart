// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'snapd_client.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SnapApp _$SnapAppFromJson(Map<String, dynamic> json) {
  return _SnapApp.fromJson(json);
}

/// @nodoc
mixin _$SnapApp {
  String get name => throw _privateConstructorUsedError;
  String? get snap => throw _privateConstructorUsedError;
  String? get desktopFile => throw _privateConstructorUsedError;
  String? get daemon => throw _privateConstructorUsedError;
  bool get enabled => throw _privateConstructorUsedError;
  bool get active => throw _privateConstructorUsedError;
  String? get commonId => throw _privateConstructorUsedError;

  /// Serializes this SnapApp to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SnapApp
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SnapAppCopyWith<SnapApp> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnapAppCopyWith<$Res> {
  factory $SnapAppCopyWith(SnapApp value, $Res Function(SnapApp) then) =
      _$SnapAppCopyWithImpl<$Res, SnapApp>;
  @useResult
  $Res call(
      {String name,
      String? snap,
      String? desktopFile,
      String? daemon,
      bool enabled,
      bool active,
      String? commonId});
}

/// @nodoc
class _$SnapAppCopyWithImpl<$Res, $Val extends SnapApp>
    implements $SnapAppCopyWith<$Res> {
  _$SnapAppCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SnapApp
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? snap = freezed,
    Object? desktopFile = freezed,
    Object? daemon = freezed,
    Object? enabled = null,
    Object? active = null,
    Object? commonId = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      snap: freezed == snap
          ? _value.snap
          : snap // ignore: cast_nullable_to_non_nullable
              as String?,
      desktopFile: freezed == desktopFile
          ? _value.desktopFile
          : desktopFile // ignore: cast_nullable_to_non_nullable
              as String?,
      daemon: freezed == daemon
          ? _value.daemon
          : daemon // ignore: cast_nullable_to_non_nullable
              as String?,
      enabled: null == enabled
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      commonId: freezed == commonId
          ? _value.commonId
          : commonId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SnapAppImplCopyWith<$Res> implements $SnapAppCopyWith<$Res> {
  factory _$$SnapAppImplCopyWith(
          _$SnapAppImpl value, $Res Function(_$SnapAppImpl) then) =
      __$$SnapAppImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String? snap,
      String? desktopFile,
      String? daemon,
      bool enabled,
      bool active,
      String? commonId});
}

/// @nodoc
class __$$SnapAppImplCopyWithImpl<$Res>
    extends _$SnapAppCopyWithImpl<$Res, _$SnapAppImpl>
    implements _$$SnapAppImplCopyWith<$Res> {
  __$$SnapAppImplCopyWithImpl(
      _$SnapAppImpl _value, $Res Function(_$SnapAppImpl) _then)
      : super(_value, _then);

  /// Create a copy of SnapApp
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? snap = freezed,
    Object? desktopFile = freezed,
    Object? daemon = freezed,
    Object? enabled = null,
    Object? active = null,
    Object? commonId = freezed,
  }) {
    return _then(_$SnapAppImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      snap: freezed == snap
          ? _value.snap
          : snap // ignore: cast_nullable_to_non_nullable
              as String?,
      desktopFile: freezed == desktopFile
          ? _value.desktopFile
          : desktopFile // ignore: cast_nullable_to_non_nullable
              as String?,
      daemon: freezed == daemon
          ? _value.daemon
          : daemon // ignore: cast_nullable_to_non_nullable
              as String?,
      enabled: null == enabled
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      commonId: freezed == commonId
          ? _value.commonId
          : commonId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SnapAppImpl implements _SnapApp {
  const _$SnapAppImpl(
      {required this.name,
      this.snap,
      this.desktopFile,
      this.daemon,
      this.enabled = true,
      this.active = true,
      this.commonId});

  factory _$SnapAppImpl.fromJson(Map<String, dynamic> json) =>
      _$$SnapAppImplFromJson(json);

  @override
  final String name;
  @override
  final String? snap;
  @override
  final String? desktopFile;
  @override
  final String? daemon;
  @override
  @JsonKey()
  final bool enabled;
  @override
  @JsonKey()
  final bool active;
  @override
  final String? commonId;

  @override
  String toString() {
    return 'SnapApp(name: $name, snap: $snap, desktopFile: $desktopFile, daemon: $daemon, enabled: $enabled, active: $active, commonId: $commonId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnapAppImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.snap, snap) || other.snap == snap) &&
            (identical(other.desktopFile, desktopFile) ||
                other.desktopFile == desktopFile) &&
            (identical(other.daemon, daemon) || other.daemon == daemon) &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.commonId, commonId) ||
                other.commonId == commonId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, snap, desktopFile, daemon, enabled, active, commonId);

  /// Create a copy of SnapApp
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SnapAppImplCopyWith<_$SnapAppImpl> get copyWith =>
      __$$SnapAppImplCopyWithImpl<_$SnapAppImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SnapAppImplToJson(
      this,
    );
  }
}

abstract class _SnapApp implements SnapApp {
  const factory _SnapApp(
      {required final String name,
      final String? snap,
      final String? desktopFile,
      final String? daemon,
      final bool enabled,
      final bool active,
      final String? commonId}) = _$SnapAppImpl;

  factory _SnapApp.fromJson(Map<String, dynamic> json) = _$SnapAppImpl.fromJson;

  @override
  String get name;
  @override
  String? get snap;
  @override
  String? get desktopFile;
  @override
  String? get daemon;
  @override
  bool get enabled;
  @override
  bool get active;
  @override
  String? get commonId;

  /// Create a copy of SnapApp
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SnapAppImplCopyWith<_$SnapAppImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SnapCategory _$SnapCategoryFromJson(Map<String, dynamic> json) {
  return _SnapCategory.fromJson(json);
}

/// @nodoc
mixin _$SnapCategory {
  String get name => throw _privateConstructorUsedError;
  bool get featured => throw _privateConstructorUsedError;

  /// Serializes this SnapCategory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SnapCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SnapCategoryCopyWith<SnapCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnapCategoryCopyWith<$Res> {
  factory $SnapCategoryCopyWith(
          SnapCategory value, $Res Function(SnapCategory) then) =
      _$SnapCategoryCopyWithImpl<$Res, SnapCategory>;
  @useResult
  $Res call({String name, bool featured});
}

/// @nodoc
class _$SnapCategoryCopyWithImpl<$Res, $Val extends SnapCategory>
    implements $SnapCategoryCopyWith<$Res> {
  _$SnapCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SnapCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? featured = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      featured: null == featured
          ? _value.featured
          : featured // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SnapCategoryImplCopyWith<$Res>
    implements $SnapCategoryCopyWith<$Res> {
  factory _$$SnapCategoryImplCopyWith(
          _$SnapCategoryImpl value, $Res Function(_$SnapCategoryImpl) then) =
      __$$SnapCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, bool featured});
}

/// @nodoc
class __$$SnapCategoryImplCopyWithImpl<$Res>
    extends _$SnapCategoryCopyWithImpl<$Res, _$SnapCategoryImpl>
    implements _$$SnapCategoryImplCopyWith<$Res> {
  __$$SnapCategoryImplCopyWithImpl(
      _$SnapCategoryImpl _value, $Res Function(_$SnapCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of SnapCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? featured = null,
  }) {
    return _then(_$SnapCategoryImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      featured: null == featured
          ? _value.featured
          : featured // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SnapCategoryImpl implements _SnapCategory {
  const _$SnapCategoryImpl({required this.name, this.featured = false});

  factory _$SnapCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$SnapCategoryImplFromJson(json);

  @override
  final String name;
  @override
  @JsonKey()
  final bool featured;

  @override
  String toString() {
    return 'SnapCategory(name: $name, featured: $featured)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnapCategoryImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.featured, featured) ||
                other.featured == featured));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, featured);

  /// Create a copy of SnapCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SnapCategoryImplCopyWith<_$SnapCategoryImpl> get copyWith =>
      __$$SnapCategoryImplCopyWithImpl<_$SnapCategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SnapCategoryImplToJson(
      this,
    );
  }
}

abstract class _SnapCategory implements SnapCategory {
  const factory _SnapCategory(
      {required final String name, final bool featured}) = _$SnapCategoryImpl;

  factory _SnapCategory.fromJson(Map<String, dynamic> json) =
      _$SnapCategoryImpl.fromJson;

  @override
  String get name;
  @override
  bool get featured;

  /// Create a copy of SnapCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SnapCategoryImplCopyWith<_$SnapCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SnapCategoryDetails _$SnapCategoryDetailsFromJson(Map<String, dynamic> json) {
  return _SnapCategoryDetails.fromJson(json);
}

/// @nodoc
mixin _$SnapCategoryDetails {
  String get name => throw _privateConstructorUsedError;

  /// Serializes this SnapCategoryDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SnapCategoryDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SnapCategoryDetailsCopyWith<SnapCategoryDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnapCategoryDetailsCopyWith<$Res> {
  factory $SnapCategoryDetailsCopyWith(
          SnapCategoryDetails value, $Res Function(SnapCategoryDetails) then) =
      _$SnapCategoryDetailsCopyWithImpl<$Res, SnapCategoryDetails>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$SnapCategoryDetailsCopyWithImpl<$Res, $Val extends SnapCategoryDetails>
    implements $SnapCategoryDetailsCopyWith<$Res> {
  _$SnapCategoryDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SnapCategoryDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SnapCategoryDetailsImplCopyWith<$Res>
    implements $SnapCategoryDetailsCopyWith<$Res> {
  factory _$$SnapCategoryDetailsImplCopyWith(_$SnapCategoryDetailsImpl value,
          $Res Function(_$SnapCategoryDetailsImpl) then) =
      __$$SnapCategoryDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$SnapCategoryDetailsImplCopyWithImpl<$Res>
    extends _$SnapCategoryDetailsCopyWithImpl<$Res, _$SnapCategoryDetailsImpl>
    implements _$$SnapCategoryDetailsImplCopyWith<$Res> {
  __$$SnapCategoryDetailsImplCopyWithImpl(_$SnapCategoryDetailsImpl _value,
      $Res Function(_$SnapCategoryDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of SnapCategoryDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$SnapCategoryDetailsImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SnapCategoryDetailsImpl implements _SnapCategoryDetails {
  const _$SnapCategoryDetailsImpl({required this.name});

  factory _$SnapCategoryDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SnapCategoryDetailsImplFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'SnapCategoryDetails(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnapCategoryDetailsImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of SnapCategoryDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SnapCategoryDetailsImplCopyWith<_$SnapCategoryDetailsImpl> get copyWith =>
      __$$SnapCategoryDetailsImplCopyWithImpl<_$SnapCategoryDetailsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SnapCategoryDetailsImplToJson(
      this,
    );
  }
}

abstract class _SnapCategoryDetails implements SnapCategoryDetails {
  const factory _SnapCategoryDetails({required final String name}) =
      _$SnapCategoryDetailsImpl;

  factory _SnapCategoryDetails.fromJson(Map<String, dynamic> json) =
      _$SnapCategoryDetailsImpl.fromJson;

  @override
  String get name;

  /// Create a copy of SnapCategoryDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SnapCategoryDetailsImplCopyWith<_$SnapCategoryDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SnapChannel _$SnapChannelFromJson(Map<String, dynamic> json) {
  return _SnapChannel.fromJson(json);
}

/// @nodoc
mixin _$SnapChannel {
  DateTime get releasedAt => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: SnapConfinement.unknown)
  SnapConfinement get confinement => throw _privateConstructorUsedError;
  String? get revision => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  String? get version => throw _privateConstructorUsedError;

  /// Serializes this SnapChannel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SnapChannel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SnapChannelCopyWith<SnapChannel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnapChannelCopyWith<$Res> {
  factory $SnapChannelCopyWith(
          SnapChannel value, $Res Function(SnapChannel) then) =
      _$SnapChannelCopyWithImpl<$Res, SnapChannel>;
  @useResult
  $Res call(
      {DateTime releasedAt,
      @JsonKey(unknownEnumValue: SnapConfinement.unknown)
      SnapConfinement confinement,
      String? revision,
      int size,
      String? version});
}

/// @nodoc
class _$SnapChannelCopyWithImpl<$Res, $Val extends SnapChannel>
    implements $SnapChannelCopyWith<$Res> {
  _$SnapChannelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SnapChannel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? releasedAt = null,
    Object? confinement = null,
    Object? revision = freezed,
    Object? size = null,
    Object? version = freezed,
  }) {
    return _then(_value.copyWith(
      releasedAt: null == releasedAt
          ? _value.releasedAt
          : releasedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      confinement: null == confinement
          ? _value.confinement
          : confinement // ignore: cast_nullable_to_non_nullable
              as SnapConfinement,
      revision: freezed == revision
          ? _value.revision
          : revision // ignore: cast_nullable_to_non_nullable
              as String?,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SnapChannelImplCopyWith<$Res>
    implements $SnapChannelCopyWith<$Res> {
  factory _$$SnapChannelImplCopyWith(
          _$SnapChannelImpl value, $Res Function(_$SnapChannelImpl) then) =
      __$$SnapChannelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime releasedAt,
      @JsonKey(unknownEnumValue: SnapConfinement.unknown)
      SnapConfinement confinement,
      String? revision,
      int size,
      String? version});
}

/// @nodoc
class __$$SnapChannelImplCopyWithImpl<$Res>
    extends _$SnapChannelCopyWithImpl<$Res, _$SnapChannelImpl>
    implements _$$SnapChannelImplCopyWith<$Res> {
  __$$SnapChannelImplCopyWithImpl(
      _$SnapChannelImpl _value, $Res Function(_$SnapChannelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SnapChannel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? releasedAt = null,
    Object? confinement = null,
    Object? revision = freezed,
    Object? size = null,
    Object? version = freezed,
  }) {
    return _then(_$SnapChannelImpl(
      releasedAt: null == releasedAt
          ? _value.releasedAt
          : releasedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      confinement: null == confinement
          ? _value.confinement
          : confinement // ignore: cast_nullable_to_non_nullable
              as SnapConfinement,
      revision: freezed == revision
          ? _value.revision
          : revision // ignore: cast_nullable_to_non_nullable
              as String?,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SnapChannelImpl implements _SnapChannel {
  const _$SnapChannelImpl(
      {required this.releasedAt,
      @JsonKey(unknownEnumValue: SnapConfinement.unknown)
      this.confinement = SnapConfinement.unknown,
      this.revision,
      this.size = 0,
      this.version});

  factory _$SnapChannelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SnapChannelImplFromJson(json);

  @override
  final DateTime releasedAt;
  @override
  @JsonKey(unknownEnumValue: SnapConfinement.unknown)
  final SnapConfinement confinement;
  @override
  final String? revision;
  @override
  @JsonKey()
  final int size;
  @override
  final String? version;

  @override
  String toString() {
    return 'SnapChannel(releasedAt: $releasedAt, confinement: $confinement, revision: $revision, size: $size, version: $version)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnapChannelImpl &&
            (identical(other.releasedAt, releasedAt) ||
                other.releasedAt == releasedAt) &&
            (identical(other.confinement, confinement) ||
                other.confinement == confinement) &&
            (identical(other.revision, revision) ||
                other.revision == revision) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, releasedAt, confinement, revision, size, version);

  /// Create a copy of SnapChannel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SnapChannelImplCopyWith<_$SnapChannelImpl> get copyWith =>
      __$$SnapChannelImplCopyWithImpl<_$SnapChannelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SnapChannelImplToJson(
      this,
    );
  }
}

abstract class _SnapChannel implements SnapChannel {
  const factory _SnapChannel(
      {required final DateTime releasedAt,
      @JsonKey(unknownEnumValue: SnapConfinement.unknown)
      final SnapConfinement confinement,
      final String? revision,
      final int size,
      final String? version}) = _$SnapChannelImpl;

  factory _SnapChannel.fromJson(Map<String, dynamic> json) =
      _$SnapChannelImpl.fromJson;

  @override
  DateTime get releasedAt;
  @override
  @JsonKey(unknownEnumValue: SnapConfinement.unknown)
  SnapConfinement get confinement;
  @override
  String? get revision;
  @override
  int get size;
  @override
  String? get version;

  /// Create a copy of SnapChannel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SnapChannelImplCopyWith<_$SnapChannelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SnapPublisher _$SnapPublisherFromJson(Map<String, dynamic> json) {
  return _SnapPublisher.fromJson(json);
}

/// @nodoc
mixin _$SnapPublisher {
  String get id => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get validation => throw _privateConstructorUsedError;

  /// Serializes this SnapPublisher to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SnapPublisher
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SnapPublisherCopyWith<SnapPublisher> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnapPublisherCopyWith<$Res> {
  factory $SnapPublisherCopyWith(
          SnapPublisher value, $Res Function(SnapPublisher) then) =
      _$SnapPublisherCopyWithImpl<$Res, SnapPublisher>;
  @useResult
  $Res call(
      {String id, String displayName, String? username, String? validation});
}

/// @nodoc
class _$SnapPublisherCopyWithImpl<$Res, $Val extends SnapPublisher>
    implements $SnapPublisherCopyWith<$Res> {
  _$SnapPublisherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SnapPublisher
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? displayName = null,
    Object? username = freezed,
    Object? validation = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      validation: freezed == validation
          ? _value.validation
          : validation // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SnapPublisherImplCopyWith<$Res>
    implements $SnapPublisherCopyWith<$Res> {
  factory _$$SnapPublisherImplCopyWith(
          _$SnapPublisherImpl value, $Res Function(_$SnapPublisherImpl) then) =
      __$$SnapPublisherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String displayName, String? username, String? validation});
}

/// @nodoc
class __$$SnapPublisherImplCopyWithImpl<$Res>
    extends _$SnapPublisherCopyWithImpl<$Res, _$SnapPublisherImpl>
    implements _$$SnapPublisherImplCopyWith<$Res> {
  __$$SnapPublisherImplCopyWithImpl(
      _$SnapPublisherImpl _value, $Res Function(_$SnapPublisherImpl) _then)
      : super(_value, _then);

  /// Create a copy of SnapPublisher
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? displayName = null,
    Object? username = freezed,
    Object? validation = freezed,
  }) {
    return _then(_$SnapPublisherImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      validation: freezed == validation
          ? _value.validation
          : validation // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SnapPublisherImpl implements _SnapPublisher {
  const _$SnapPublisherImpl(
      {required this.id,
      required this.displayName,
      this.username,
      this.validation});

  factory _$SnapPublisherImpl.fromJson(Map<String, dynamic> json) =>
      _$$SnapPublisherImplFromJson(json);

  @override
  final String id;
  @override
  final String displayName;
  @override
  final String? username;
  @override
  final String? validation;

  @override
  String toString() {
    return 'SnapPublisher(id: $id, displayName: $displayName, username: $username, validation: $validation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnapPublisherImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.validation, validation) ||
                other.validation == validation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, displayName, username, validation);

  /// Create a copy of SnapPublisher
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SnapPublisherImplCopyWith<_$SnapPublisherImpl> get copyWith =>
      __$$SnapPublisherImplCopyWithImpl<_$SnapPublisherImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SnapPublisherImplToJson(
      this,
    );
  }
}

abstract class _SnapPublisher implements SnapPublisher {
  const factory _SnapPublisher(
      {required final String id,
      required final String displayName,
      final String? username,
      final String? validation}) = _$SnapPublisherImpl;

  factory _SnapPublisher.fromJson(Map<String, dynamic> json) =
      _$SnapPublisherImpl.fromJson;

  @override
  String get id;
  @override
  String get displayName;
  @override
  String? get username;
  @override
  String? get validation;

  /// Create a copy of SnapPublisher
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SnapPublisherImplCopyWith<_$SnapPublisherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SnapMedia _$SnapMediaFromJson(Map<String, dynamic> json) {
  return _SnapMedia.fromJson(json);
}

/// @nodoc
mixin _$SnapMedia {
  String get type => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  int? get width => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;

  /// Serializes this SnapMedia to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SnapMedia
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SnapMediaCopyWith<SnapMedia> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnapMediaCopyWith<$Res> {
  factory $SnapMediaCopyWith(SnapMedia value, $Res Function(SnapMedia) then) =
      _$SnapMediaCopyWithImpl<$Res, SnapMedia>;
  @useResult
  $Res call({String type, String url, int? width, int? height});
}

/// @nodoc
class _$SnapMediaCopyWithImpl<$Res, $Val extends SnapMedia>
    implements $SnapMediaCopyWith<$Res> {
  _$SnapMediaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SnapMedia
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? url = null,
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SnapMediaImplCopyWith<$Res>
    implements $SnapMediaCopyWith<$Res> {
  factory _$$SnapMediaImplCopyWith(
          _$SnapMediaImpl value, $Res Function(_$SnapMediaImpl) then) =
      __$$SnapMediaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String url, int? width, int? height});
}

/// @nodoc
class __$$SnapMediaImplCopyWithImpl<$Res>
    extends _$SnapMediaCopyWithImpl<$Res, _$SnapMediaImpl>
    implements _$$SnapMediaImplCopyWith<$Res> {
  __$$SnapMediaImplCopyWithImpl(
      _$SnapMediaImpl _value, $Res Function(_$SnapMediaImpl) _then)
      : super(_value, _then);

  /// Create a copy of SnapMedia
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? url = null,
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_$SnapMediaImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SnapMediaImpl implements _SnapMedia {
  const _$SnapMediaImpl(
      {required this.type, required this.url, this.width, this.height});

  factory _$SnapMediaImpl.fromJson(Map<String, dynamic> json) =>
      _$$SnapMediaImplFromJson(json);

  @override
  final String type;
  @override
  final String url;
  @override
  final int? width;
  @override
  final int? height;

  @override
  String toString() {
    return 'SnapMedia(type: $type, url: $url, width: $width, height: $height)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnapMediaImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, url, width, height);

  /// Create a copy of SnapMedia
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SnapMediaImplCopyWith<_$SnapMediaImpl> get copyWith =>
      __$$SnapMediaImplCopyWithImpl<_$SnapMediaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SnapMediaImplToJson(
      this,
    );
  }
}

abstract class _SnapMedia implements SnapMedia {
  const factory _SnapMedia(
      {required final String type,
      required final String url,
      final int? width,
      final int? height}) = _$SnapMediaImpl;

  factory _SnapMedia.fromJson(Map<String, dynamic> json) =
      _$SnapMediaImpl.fromJson;

  @override
  String get type;
  @override
  String get url;
  @override
  int? get width;
  @override
  int? get height;

  /// Create a copy of SnapMedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SnapMediaImplCopyWith<_$SnapMediaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Snap _$SnapFromJson(Map<String, dynamic> json) {
  return _Snap.fromJson(json);
}

/// @nodoc
mixin _$Snap {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;
  String get channel => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  @JsonKey(fromJson: Snap._parseRevision)
  int get revision => throw _privateConstructorUsedError;
  String get contact => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get summary => throw _privateConstructorUsedError;
  Map<String, SnapChannel> get channels => throw _privateConstructorUsedError;
  List<SnapApp> get apps => throw _privateConstructorUsedError;
  List<SnapCategory> get categories => throw _privateConstructorUsedError;
  List<String> get tracks => throw _privateConstructorUsedError;
  List<String> get commonIds => throw _privateConstructorUsedError;
  Map<String, List<String>> get links => throw _privateConstructorUsedError;
  List<SnapMedia> get media => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: SnapConfinement.unknown)
  SnapConfinement get confinement => throw _privateConstructorUsedError;
  SnapStatus get status => throw _privateConstructorUsedError;
  bool get devmode => throw _privateConstructorUsedError;
  bool get jailmode => throw _privateConstructorUsedError;
  bool get private => throw _privateConstructorUsedError;
  String? get base => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get trackingChannel => throw _privateConstructorUsedError;
  String? get website => throw _privateConstructorUsedError;
  String? get license => throw _privateConstructorUsedError;
  String? get mountedFrom => throw _privateConstructorUsedError;
  String? get storeUrl => throw _privateConstructorUsedError;
  DateTime? get hold => throw _privateConstructorUsedError;
  DateTime? get installDate => throw _privateConstructorUsedError;
  int? get downloadSize => throw _privateConstructorUsedError;
  int? get installedSize => throw _privateConstructorUsedError;
  SnapPublisher? get publisher => throw _privateConstructorUsedError;
  RefreshInhibit? get refreshInhibit => throw _privateConstructorUsedError;

  /// Serializes this Snap to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Snap
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SnapCopyWith<Snap> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnapCopyWith<$Res> {
  factory $SnapCopyWith(Snap value, $Res Function(Snap) then) =
      _$SnapCopyWithImpl<$Res, Snap>;
  @useResult
  $Res call(
      {String id,
      String name,
      String version,
      String channel,
      String type,
      @JsonKey(fromJson: Snap._parseRevision) int revision,
      String contact,
      String description,
      String summary,
      Map<String, SnapChannel> channels,
      List<SnapApp> apps,
      List<SnapCategory> categories,
      List<String> tracks,
      List<String> commonIds,
      Map<String, List<String>> links,
      List<SnapMedia> media,
      @JsonKey(unknownEnumValue: SnapConfinement.unknown)
      SnapConfinement confinement,
      SnapStatus status,
      bool devmode,
      bool jailmode,
      bool private,
      String? base,
      String? title,
      String? trackingChannel,
      String? website,
      String? license,
      String? mountedFrom,
      String? storeUrl,
      DateTime? hold,
      DateTime? installDate,
      int? downloadSize,
      int? installedSize,
      SnapPublisher? publisher,
      RefreshInhibit? refreshInhibit});

  $SnapPublisherCopyWith<$Res>? get publisher;
  $RefreshInhibitCopyWith<$Res>? get refreshInhibit;
}

/// @nodoc
class _$SnapCopyWithImpl<$Res, $Val extends Snap>
    implements $SnapCopyWith<$Res> {
  _$SnapCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Snap
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? version = null,
    Object? channel = null,
    Object? type = null,
    Object? revision = null,
    Object? contact = null,
    Object? description = null,
    Object? summary = null,
    Object? channels = null,
    Object? apps = null,
    Object? categories = null,
    Object? tracks = null,
    Object? commonIds = null,
    Object? links = null,
    Object? media = null,
    Object? confinement = null,
    Object? status = null,
    Object? devmode = null,
    Object? jailmode = null,
    Object? private = null,
    Object? base = freezed,
    Object? title = freezed,
    Object? trackingChannel = freezed,
    Object? website = freezed,
    Object? license = freezed,
    Object? mountedFrom = freezed,
    Object? storeUrl = freezed,
    Object? hold = freezed,
    Object? installDate = freezed,
    Object? downloadSize = freezed,
    Object? installedSize = freezed,
    Object? publisher = freezed,
    Object? refreshInhibit = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      channel: null == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      revision: null == revision
          ? _value.revision
          : revision // ignore: cast_nullable_to_non_nullable
              as int,
      contact: null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      channels: null == channels
          ? _value.channels
          : channels // ignore: cast_nullable_to_non_nullable
              as Map<String, SnapChannel>,
      apps: null == apps
          ? _value.apps
          : apps // ignore: cast_nullable_to_non_nullable
              as List<SnapApp>,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<SnapCategory>,
      tracks: null == tracks
          ? _value.tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as List<String>,
      commonIds: null == commonIds
          ? _value.commonIds
          : commonIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>,
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as List<SnapMedia>,
      confinement: null == confinement
          ? _value.confinement
          : confinement // ignore: cast_nullable_to_non_nullable
              as SnapConfinement,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SnapStatus,
      devmode: null == devmode
          ? _value.devmode
          : devmode // ignore: cast_nullable_to_non_nullable
              as bool,
      jailmode: null == jailmode
          ? _value.jailmode
          : jailmode // ignore: cast_nullable_to_non_nullable
              as bool,
      private: null == private
          ? _value.private
          : private // ignore: cast_nullable_to_non_nullable
              as bool,
      base: freezed == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      trackingChannel: freezed == trackingChannel
          ? _value.trackingChannel
          : trackingChannel // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      license: freezed == license
          ? _value.license
          : license // ignore: cast_nullable_to_non_nullable
              as String?,
      mountedFrom: freezed == mountedFrom
          ? _value.mountedFrom
          : mountedFrom // ignore: cast_nullable_to_non_nullable
              as String?,
      storeUrl: freezed == storeUrl
          ? _value.storeUrl
          : storeUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      hold: freezed == hold
          ? _value.hold
          : hold // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      installDate: freezed == installDate
          ? _value.installDate
          : installDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      downloadSize: freezed == downloadSize
          ? _value.downloadSize
          : downloadSize // ignore: cast_nullable_to_non_nullable
              as int?,
      installedSize: freezed == installedSize
          ? _value.installedSize
          : installedSize // ignore: cast_nullable_to_non_nullable
              as int?,
      publisher: freezed == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as SnapPublisher?,
      refreshInhibit: freezed == refreshInhibit
          ? _value.refreshInhibit
          : refreshInhibit // ignore: cast_nullable_to_non_nullable
              as RefreshInhibit?,
    ) as $Val);
  }

  /// Create a copy of Snap
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SnapPublisherCopyWith<$Res>? get publisher {
    if (_value.publisher == null) {
      return null;
    }

    return $SnapPublisherCopyWith<$Res>(_value.publisher!, (value) {
      return _then(_value.copyWith(publisher: value) as $Val);
    });
  }

  /// Create a copy of Snap
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RefreshInhibitCopyWith<$Res>? get refreshInhibit {
    if (_value.refreshInhibit == null) {
      return null;
    }

    return $RefreshInhibitCopyWith<$Res>(_value.refreshInhibit!, (value) {
      return _then(_value.copyWith(refreshInhibit: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SnapImplCopyWith<$Res> implements $SnapCopyWith<$Res> {
  factory _$$SnapImplCopyWith(
          _$SnapImpl value, $Res Function(_$SnapImpl) then) =
      __$$SnapImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String version,
      String channel,
      String type,
      @JsonKey(fromJson: Snap._parseRevision) int revision,
      String contact,
      String description,
      String summary,
      Map<String, SnapChannel> channels,
      List<SnapApp> apps,
      List<SnapCategory> categories,
      List<String> tracks,
      List<String> commonIds,
      Map<String, List<String>> links,
      List<SnapMedia> media,
      @JsonKey(unknownEnumValue: SnapConfinement.unknown)
      SnapConfinement confinement,
      SnapStatus status,
      bool devmode,
      bool jailmode,
      bool private,
      String? base,
      String? title,
      String? trackingChannel,
      String? website,
      String? license,
      String? mountedFrom,
      String? storeUrl,
      DateTime? hold,
      DateTime? installDate,
      int? downloadSize,
      int? installedSize,
      SnapPublisher? publisher,
      RefreshInhibit? refreshInhibit});

  @override
  $SnapPublisherCopyWith<$Res>? get publisher;
  @override
  $RefreshInhibitCopyWith<$Res>? get refreshInhibit;
}

/// @nodoc
class __$$SnapImplCopyWithImpl<$Res>
    extends _$SnapCopyWithImpl<$Res, _$SnapImpl>
    implements _$$SnapImplCopyWith<$Res> {
  __$$SnapImplCopyWithImpl(_$SnapImpl _value, $Res Function(_$SnapImpl) _then)
      : super(_value, _then);

  /// Create a copy of Snap
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? version = null,
    Object? channel = null,
    Object? type = null,
    Object? revision = null,
    Object? contact = null,
    Object? description = null,
    Object? summary = null,
    Object? channels = null,
    Object? apps = null,
    Object? categories = null,
    Object? tracks = null,
    Object? commonIds = null,
    Object? links = null,
    Object? media = null,
    Object? confinement = null,
    Object? status = null,
    Object? devmode = null,
    Object? jailmode = null,
    Object? private = null,
    Object? base = freezed,
    Object? title = freezed,
    Object? trackingChannel = freezed,
    Object? website = freezed,
    Object? license = freezed,
    Object? mountedFrom = freezed,
    Object? storeUrl = freezed,
    Object? hold = freezed,
    Object? installDate = freezed,
    Object? downloadSize = freezed,
    Object? installedSize = freezed,
    Object? publisher = freezed,
    Object? refreshInhibit = freezed,
  }) {
    return _then(_$SnapImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      channel: null == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      revision: null == revision
          ? _value.revision
          : revision // ignore: cast_nullable_to_non_nullable
              as int,
      contact: null == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      channels: null == channels
          ? _value._channels
          : channels // ignore: cast_nullable_to_non_nullable
              as Map<String, SnapChannel>,
      apps: null == apps
          ? _value._apps
          : apps // ignore: cast_nullable_to_non_nullable
              as List<SnapApp>,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<SnapCategory>,
      tracks: null == tracks
          ? _value._tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as List<String>,
      commonIds: null == commonIds
          ? _value._commonIds
          : commonIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      links: null == links
          ? _value._links
          : links // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>,
      media: null == media
          ? _value._media
          : media // ignore: cast_nullable_to_non_nullable
              as List<SnapMedia>,
      confinement: null == confinement
          ? _value.confinement
          : confinement // ignore: cast_nullable_to_non_nullable
              as SnapConfinement,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SnapStatus,
      devmode: null == devmode
          ? _value.devmode
          : devmode // ignore: cast_nullable_to_non_nullable
              as bool,
      jailmode: null == jailmode
          ? _value.jailmode
          : jailmode // ignore: cast_nullable_to_non_nullable
              as bool,
      private: null == private
          ? _value.private
          : private // ignore: cast_nullable_to_non_nullable
              as bool,
      base: freezed == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      trackingChannel: freezed == trackingChannel
          ? _value.trackingChannel
          : trackingChannel // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      license: freezed == license
          ? _value.license
          : license // ignore: cast_nullable_to_non_nullable
              as String?,
      mountedFrom: freezed == mountedFrom
          ? _value.mountedFrom
          : mountedFrom // ignore: cast_nullable_to_non_nullable
              as String?,
      storeUrl: freezed == storeUrl
          ? _value.storeUrl
          : storeUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      hold: freezed == hold
          ? _value.hold
          : hold // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      installDate: freezed == installDate
          ? _value.installDate
          : installDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      downloadSize: freezed == downloadSize
          ? _value.downloadSize
          : downloadSize // ignore: cast_nullable_to_non_nullable
              as int?,
      installedSize: freezed == installedSize
          ? _value.installedSize
          : installedSize // ignore: cast_nullable_to_non_nullable
              as int?,
      publisher: freezed == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as SnapPublisher?,
      refreshInhibit: freezed == refreshInhibit
          ? _value.refreshInhibit
          : refreshInhibit // ignore: cast_nullable_to_non_nullable
              as RefreshInhibit?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SnapImpl implements _Snap {
  const _$SnapImpl(
      {required this.id,
      required this.name,
      required this.version,
      required this.channel,
      required this.type,
      @JsonKey(fromJson: Snap._parseRevision) required this.revision,
      this.contact = '',
      this.description = '',
      this.summary = '',
      final Map<String, SnapChannel> channels = const {},
      final List<SnapApp> apps = const [],
      final List<SnapCategory> categories = const [],
      final List<String> tracks = const [],
      final List<String> commonIds = const [],
      final Map<String, List<String>> links = const {},
      final List<SnapMedia> media = const [],
      @JsonKey(unknownEnumValue: SnapConfinement.unknown)
      this.confinement = SnapConfinement.unknown,
      this.status = SnapStatus.unknown,
      this.devmode = false,
      this.jailmode = false,
      this.private = false,
      this.base,
      this.title,
      this.trackingChannel,
      this.website,
      this.license,
      this.mountedFrom,
      this.storeUrl,
      this.hold,
      this.installDate,
      this.downloadSize,
      this.installedSize,
      this.publisher,
      this.refreshInhibit})
      : _channels = channels,
        _apps = apps,
        _categories = categories,
        _tracks = tracks,
        _commonIds = commonIds,
        _links = links,
        _media = media;

  factory _$SnapImpl.fromJson(Map<String, dynamic> json) =>
      _$$SnapImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String version;
  @override
  final String channel;
  @override
  final String type;
  @override
  @JsonKey(fromJson: Snap._parseRevision)
  final int revision;
  @override
  @JsonKey()
  final String contact;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String summary;
  final Map<String, SnapChannel> _channels;
  @override
  @JsonKey()
  Map<String, SnapChannel> get channels {
    if (_channels is EqualUnmodifiableMapView) return _channels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_channels);
  }

  final List<SnapApp> _apps;
  @override
  @JsonKey()
  List<SnapApp> get apps {
    if (_apps is EqualUnmodifiableListView) return _apps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_apps);
  }

  final List<SnapCategory> _categories;
  @override
  @JsonKey()
  List<SnapCategory> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<String> _tracks;
  @override
  @JsonKey()
  List<String> get tracks {
    if (_tracks is EqualUnmodifiableListView) return _tracks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tracks);
  }

  final List<String> _commonIds;
  @override
  @JsonKey()
  List<String> get commonIds {
    if (_commonIds is EqualUnmodifiableListView) return _commonIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_commonIds);
  }

  final Map<String, List<String>> _links;
  @override
  @JsonKey()
  Map<String, List<String>> get links {
    if (_links is EqualUnmodifiableMapView) return _links;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_links);
  }

  final List<SnapMedia> _media;
  @override
  @JsonKey()
  List<SnapMedia> get media {
    if (_media is EqualUnmodifiableListView) return _media;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_media);
  }

  @override
  @JsonKey(unknownEnumValue: SnapConfinement.unknown)
  final SnapConfinement confinement;
  @override
  @JsonKey()
  final SnapStatus status;
  @override
  @JsonKey()
  final bool devmode;
  @override
  @JsonKey()
  final bool jailmode;
  @override
  @JsonKey()
  final bool private;
  @override
  final String? base;
  @override
  final String? title;
  @override
  final String? trackingChannel;
  @override
  final String? website;
  @override
  final String? license;
  @override
  final String? mountedFrom;
  @override
  final String? storeUrl;
  @override
  final DateTime? hold;
  @override
  final DateTime? installDate;
  @override
  final int? downloadSize;
  @override
  final int? installedSize;
  @override
  final SnapPublisher? publisher;
  @override
  final RefreshInhibit? refreshInhibit;

  @override
  String toString() {
    return 'Snap(id: $id, name: $name, version: $version, channel: $channel, type: $type, revision: $revision, contact: $contact, description: $description, summary: $summary, channels: $channels, apps: $apps, categories: $categories, tracks: $tracks, commonIds: $commonIds, links: $links, media: $media, confinement: $confinement, status: $status, devmode: $devmode, jailmode: $jailmode, private: $private, base: $base, title: $title, trackingChannel: $trackingChannel, website: $website, license: $license, mountedFrom: $mountedFrom, storeUrl: $storeUrl, hold: $hold, installDate: $installDate, downloadSize: $downloadSize, installedSize: $installedSize, publisher: $publisher, refreshInhibit: $refreshInhibit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnapImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.channel, channel) || other.channel == channel) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.revision, revision) ||
                other.revision == revision) &&
            (identical(other.contact, contact) || other.contact == contact) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            const DeepCollectionEquality().equals(other._channels, _channels) &&
            const DeepCollectionEquality().equals(other._apps, _apps) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality().equals(other._tracks, _tracks) &&
            const DeepCollectionEquality()
                .equals(other._commonIds, _commonIds) &&
            const DeepCollectionEquality().equals(other._links, _links) &&
            const DeepCollectionEquality().equals(other._media, _media) &&
            (identical(other.confinement, confinement) ||
                other.confinement == confinement) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.devmode, devmode) || other.devmode == devmode) &&
            (identical(other.jailmode, jailmode) ||
                other.jailmode == jailmode) &&
            (identical(other.private, private) || other.private == private) &&
            (identical(other.base, base) || other.base == base) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.trackingChannel, trackingChannel) ||
                other.trackingChannel == trackingChannel) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.license, license) || other.license == license) &&
            (identical(other.mountedFrom, mountedFrom) ||
                other.mountedFrom == mountedFrom) &&
            (identical(other.storeUrl, storeUrl) ||
                other.storeUrl == storeUrl) &&
            (identical(other.hold, hold) || other.hold == hold) &&
            (identical(other.installDate, installDate) ||
                other.installDate == installDate) &&
            (identical(other.downloadSize, downloadSize) ||
                other.downloadSize == downloadSize) &&
            (identical(other.installedSize, installedSize) ||
                other.installedSize == installedSize) &&
            (identical(other.publisher, publisher) ||
                other.publisher == publisher) &&
            (identical(other.refreshInhibit, refreshInhibit) ||
                other.refreshInhibit == refreshInhibit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        version,
        channel,
        type,
        revision,
        contact,
        description,
        summary,
        const DeepCollectionEquality().hash(_channels),
        const DeepCollectionEquality().hash(_apps),
        const DeepCollectionEquality().hash(_categories),
        const DeepCollectionEquality().hash(_tracks),
        const DeepCollectionEquality().hash(_commonIds),
        const DeepCollectionEquality().hash(_links),
        const DeepCollectionEquality().hash(_media),
        confinement,
        status,
        devmode,
        jailmode,
        private,
        base,
        title,
        trackingChannel,
        website,
        license,
        mountedFrom,
        storeUrl,
        hold,
        installDate,
        downloadSize,
        installedSize,
        publisher,
        refreshInhibit
      ]);

  /// Create a copy of Snap
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SnapImplCopyWith<_$SnapImpl> get copyWith =>
      __$$SnapImplCopyWithImpl<_$SnapImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SnapImplToJson(
      this,
    );
  }
}

abstract class _Snap implements Snap {
  const factory _Snap(
      {required final String id,
      required final String name,
      required final String version,
      required final String channel,
      required final String type,
      @JsonKey(fromJson: Snap._parseRevision) required final int revision,
      final String contact,
      final String description,
      final String summary,
      final Map<String, SnapChannel> channels,
      final List<SnapApp> apps,
      final List<SnapCategory> categories,
      final List<String> tracks,
      final List<String> commonIds,
      final Map<String, List<String>> links,
      final List<SnapMedia> media,
      @JsonKey(unknownEnumValue: SnapConfinement.unknown)
      final SnapConfinement confinement,
      final SnapStatus status,
      final bool devmode,
      final bool jailmode,
      final bool private,
      final String? base,
      final String? title,
      final String? trackingChannel,
      final String? website,
      final String? license,
      final String? mountedFrom,
      final String? storeUrl,
      final DateTime? hold,
      final DateTime? installDate,
      final int? downloadSize,
      final int? installedSize,
      final SnapPublisher? publisher,
      final RefreshInhibit? refreshInhibit}) = _$SnapImpl;

  factory _Snap.fromJson(Map<String, dynamic> json) = _$SnapImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get version;
  @override
  String get channel;
  @override
  String get type;
  @override
  @JsonKey(fromJson: Snap._parseRevision)
  int get revision;
  @override
  String get contact;
  @override
  String get description;
  @override
  String get summary;
  @override
  Map<String, SnapChannel> get channels;
  @override
  List<SnapApp> get apps;
  @override
  List<SnapCategory> get categories;
  @override
  List<String> get tracks;
  @override
  List<String> get commonIds;
  @override
  Map<String, List<String>> get links;
  @override
  List<SnapMedia> get media;
  @override
  @JsonKey(unknownEnumValue: SnapConfinement.unknown)
  SnapConfinement get confinement;
  @override
  SnapStatus get status;
  @override
  bool get devmode;
  @override
  bool get jailmode;
  @override
  bool get private;
  @override
  String? get base;
  @override
  String? get title;
  @override
  String? get trackingChannel;
  @override
  String? get website;
  @override
  String? get license;
  @override
  String? get mountedFrom;
  @override
  String? get storeUrl;
  @override
  DateTime? get hold;
  @override
  DateTime? get installDate;
  @override
  int? get downloadSize;
  @override
  int? get installedSize;
  @override
  SnapPublisher? get publisher;
  @override
  RefreshInhibit? get refreshInhibit;

  /// Create a copy of Snap
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SnapImplCopyWith<_$SnapImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SnapDeclaration _$SnapDeclarationFromJson(Map<String, dynamic> json) {
  return _SnapDeclaration.fromJson(json);
}

/// @nodoc
mixin _$SnapDeclaration {
  String get snapId => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get authorityId => throw _privateConstructorUsedError;
  int get revision => throw _privateConstructorUsedError;
  int get series => throw _privateConstructorUsedError;
  String? get publisherId => throw _privateConstructorUsedError;
  String? get snapName => throw _privateConstructorUsedError;
  String? get timestamp => throw _privateConstructorUsedError;
  String? get signKey => throw _privateConstructorUsedError;

  /// Serializes this SnapDeclaration to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SnapDeclaration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SnapDeclarationCopyWith<SnapDeclaration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnapDeclarationCopyWith<$Res> {
  factory $SnapDeclarationCopyWith(
          SnapDeclaration value, $Res Function(SnapDeclaration) then) =
      _$SnapDeclarationCopyWithImpl<$Res, SnapDeclaration>;
  @useResult
  $Res call(
      {String snapId,
      String? type,
      String? authorityId,
      int revision,
      int series,
      String? publisherId,
      String? snapName,
      String? timestamp,
      String? signKey});
}

/// @nodoc
class _$SnapDeclarationCopyWithImpl<$Res, $Val extends SnapDeclaration>
    implements $SnapDeclarationCopyWith<$Res> {
  _$SnapDeclarationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SnapDeclaration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? snapId = null,
    Object? type = freezed,
    Object? authorityId = freezed,
    Object? revision = null,
    Object? series = null,
    Object? publisherId = freezed,
    Object? snapName = freezed,
    Object? timestamp = freezed,
    Object? signKey = freezed,
  }) {
    return _then(_value.copyWith(
      snapId: null == snapId
          ? _value.snapId
          : snapId // ignore: cast_nullable_to_non_nullable
              as String,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      authorityId: freezed == authorityId
          ? _value.authorityId
          : authorityId // ignore: cast_nullable_to_non_nullable
              as String?,
      revision: null == revision
          ? _value.revision
          : revision // ignore: cast_nullable_to_non_nullable
              as int,
      series: null == series
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as int,
      publisherId: freezed == publisherId
          ? _value.publisherId
          : publisherId // ignore: cast_nullable_to_non_nullable
              as String?,
      snapName: freezed == snapName
          ? _value.snapName
          : snapName // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      signKey: freezed == signKey
          ? _value.signKey
          : signKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SnapDeclarationImplCopyWith<$Res>
    implements $SnapDeclarationCopyWith<$Res> {
  factory _$$SnapDeclarationImplCopyWith(_$SnapDeclarationImpl value,
          $Res Function(_$SnapDeclarationImpl) then) =
      __$$SnapDeclarationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String snapId,
      String? type,
      String? authorityId,
      int revision,
      int series,
      String? publisherId,
      String? snapName,
      String? timestamp,
      String? signKey});
}

/// @nodoc
class __$$SnapDeclarationImplCopyWithImpl<$Res>
    extends _$SnapDeclarationCopyWithImpl<$Res, _$SnapDeclarationImpl>
    implements _$$SnapDeclarationImplCopyWith<$Res> {
  __$$SnapDeclarationImplCopyWithImpl(
      _$SnapDeclarationImpl _value, $Res Function(_$SnapDeclarationImpl) _then)
      : super(_value, _then);

  /// Create a copy of SnapDeclaration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? snapId = null,
    Object? type = freezed,
    Object? authorityId = freezed,
    Object? revision = null,
    Object? series = null,
    Object? publisherId = freezed,
    Object? snapName = freezed,
    Object? timestamp = freezed,
    Object? signKey = freezed,
  }) {
    return _then(_$SnapDeclarationImpl(
      snapId: null == snapId
          ? _value.snapId
          : snapId // ignore: cast_nullable_to_non_nullable
              as String,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      authorityId: freezed == authorityId
          ? _value.authorityId
          : authorityId // ignore: cast_nullable_to_non_nullable
              as String?,
      revision: null == revision
          ? _value.revision
          : revision // ignore: cast_nullable_to_non_nullable
              as int,
      series: null == series
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as int,
      publisherId: freezed == publisherId
          ? _value.publisherId
          : publisherId // ignore: cast_nullable_to_non_nullable
              as String?,
      snapName: freezed == snapName
          ? _value.snapName
          : snapName // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      signKey: freezed == signKey
          ? _value.signKey
          : signKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SnapDeclarationImpl implements _SnapDeclaration {
  const _$SnapDeclarationImpl(
      {required this.snapId,
      this.type,
      this.authorityId,
      this.revision = 0,
      this.series = 0,
      this.publisherId,
      this.snapName,
      this.timestamp,
      this.signKey});

  factory _$SnapDeclarationImpl.fromJson(Map<String, dynamic> json) =>
      _$$SnapDeclarationImplFromJson(json);

  @override
  final String snapId;
  @override
  final String? type;
  @override
  final String? authorityId;
  @override
  @JsonKey()
  final int revision;
  @override
  @JsonKey()
  final int series;
  @override
  final String? publisherId;
  @override
  final String? snapName;
  @override
  final String? timestamp;
  @override
  final String? signKey;

  @override
  String toString() {
    return 'SnapDeclaration(snapId: $snapId, type: $type, authorityId: $authorityId, revision: $revision, series: $series, publisherId: $publisherId, snapName: $snapName, timestamp: $timestamp, signKey: $signKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnapDeclarationImpl &&
            (identical(other.snapId, snapId) || other.snapId == snapId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.authorityId, authorityId) ||
                other.authorityId == authorityId) &&
            (identical(other.revision, revision) ||
                other.revision == revision) &&
            (identical(other.series, series) || other.series == series) &&
            (identical(other.publisherId, publisherId) ||
                other.publisherId == publisherId) &&
            (identical(other.snapName, snapName) ||
                other.snapName == snapName) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.signKey, signKey) || other.signKey == signKey));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, snapId, type, authorityId,
      revision, series, publisherId, snapName, timestamp, signKey);

  /// Create a copy of SnapDeclaration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SnapDeclarationImplCopyWith<_$SnapDeclarationImpl> get copyWith =>
      __$$SnapDeclarationImplCopyWithImpl<_$SnapDeclarationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SnapDeclarationImplToJson(
      this,
    );
  }
}

abstract class _SnapDeclaration implements SnapDeclaration {
  const factory _SnapDeclaration(
      {required final String snapId,
      final String? type,
      final String? authorityId,
      final int revision,
      final int series,
      final String? publisherId,
      final String? snapName,
      final String? timestamp,
      final String? signKey}) = _$SnapDeclarationImpl;

  factory _SnapDeclaration.fromJson(Map<String, dynamic> json) =
      _$SnapDeclarationImpl.fromJson;

  @override
  String get snapId;
  @override
  String? get type;
  @override
  String? get authorityId;
  @override
  int get revision;
  @override
  int get series;
  @override
  String? get publisherId;
  @override
  String? get snapName;
  @override
  String? get timestamp;
  @override
  String? get signKey;

  /// Create a copy of SnapDeclaration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SnapDeclarationImplCopyWith<_$SnapDeclarationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SnapdSystemInfoResponse _$SnapdSystemInfoResponseFromJson(
    Map<String, dynamic> json) {
  return _SnapdSystemInfoResponse.fromJson(json);
}

/// @nodoc
mixin _$SnapdSystemInfoResponse {
  SnapdSystemRefreshInfo get refresh => throw _privateConstructorUsedError;
  String? get architecture => throw _privateConstructorUsedError;
  String? get buildId => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: SnapConfinement.unknown)
  SnapConfinement get confinement => throw _privateConstructorUsedError;
  Map<String, dynamic>? get features => throw _privateConstructorUsedError;
  String? get kernelVersion => throw _privateConstructorUsedError;
  bool get managed => throw _privateConstructorUsedError;
  bool get onClassic => throw _privateConstructorUsedError;
  String? get series => throw _privateConstructorUsedError;
  String? get systemMode => throw _privateConstructorUsedError;
  String? get version => throw _privateConstructorUsedError;

  /// Serializes this SnapdSystemInfoResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SnapdSystemInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SnapdSystemInfoResponseCopyWith<SnapdSystemInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnapdSystemInfoResponseCopyWith<$Res> {
  factory $SnapdSystemInfoResponseCopyWith(SnapdSystemInfoResponse value,
          $Res Function(SnapdSystemInfoResponse) then) =
      _$SnapdSystemInfoResponseCopyWithImpl<$Res, SnapdSystemInfoResponse>;
  @useResult
  $Res call(
      {SnapdSystemRefreshInfo refresh,
      String? architecture,
      String? buildId,
      @JsonKey(unknownEnumValue: SnapConfinement.unknown)
      SnapConfinement confinement,
      Map<String, dynamic>? features,
      String? kernelVersion,
      bool managed,
      bool onClassic,
      String? series,
      String? systemMode,
      String? version});

  $SnapdSystemRefreshInfoCopyWith<$Res> get refresh;
}

/// @nodoc
class _$SnapdSystemInfoResponseCopyWithImpl<$Res,
        $Val extends SnapdSystemInfoResponse>
    implements $SnapdSystemInfoResponseCopyWith<$Res> {
  _$SnapdSystemInfoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SnapdSystemInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refresh = null,
    Object? architecture = freezed,
    Object? buildId = freezed,
    Object? confinement = null,
    Object? features = freezed,
    Object? kernelVersion = freezed,
    Object? managed = null,
    Object? onClassic = null,
    Object? series = freezed,
    Object? systemMode = freezed,
    Object? version = freezed,
  }) {
    return _then(_value.copyWith(
      refresh: null == refresh
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as SnapdSystemRefreshInfo,
      architecture: freezed == architecture
          ? _value.architecture
          : architecture // ignore: cast_nullable_to_non_nullable
              as String?,
      buildId: freezed == buildId
          ? _value.buildId
          : buildId // ignore: cast_nullable_to_non_nullable
              as String?,
      confinement: null == confinement
          ? _value.confinement
          : confinement // ignore: cast_nullable_to_non_nullable
              as SnapConfinement,
      features: freezed == features
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      kernelVersion: freezed == kernelVersion
          ? _value.kernelVersion
          : kernelVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      managed: null == managed
          ? _value.managed
          : managed // ignore: cast_nullable_to_non_nullable
              as bool,
      onClassic: null == onClassic
          ? _value.onClassic
          : onClassic // ignore: cast_nullable_to_non_nullable
              as bool,
      series: freezed == series
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as String?,
      systemMode: freezed == systemMode
          ? _value.systemMode
          : systemMode // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of SnapdSystemInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SnapdSystemRefreshInfoCopyWith<$Res> get refresh {
    return $SnapdSystemRefreshInfoCopyWith<$Res>(_value.refresh, (value) {
      return _then(_value.copyWith(refresh: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SnapdSystemInfoResponseImplCopyWith<$Res>
    implements $SnapdSystemInfoResponseCopyWith<$Res> {
  factory _$$SnapdSystemInfoResponseImplCopyWith(
          _$SnapdSystemInfoResponseImpl value,
          $Res Function(_$SnapdSystemInfoResponseImpl) then) =
      __$$SnapdSystemInfoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SnapdSystemRefreshInfo refresh,
      String? architecture,
      String? buildId,
      @JsonKey(unknownEnumValue: SnapConfinement.unknown)
      SnapConfinement confinement,
      Map<String, dynamic>? features,
      String? kernelVersion,
      bool managed,
      bool onClassic,
      String? series,
      String? systemMode,
      String? version});

  @override
  $SnapdSystemRefreshInfoCopyWith<$Res> get refresh;
}

/// @nodoc
class __$$SnapdSystemInfoResponseImplCopyWithImpl<$Res>
    extends _$SnapdSystemInfoResponseCopyWithImpl<$Res,
        _$SnapdSystemInfoResponseImpl>
    implements _$$SnapdSystemInfoResponseImplCopyWith<$Res> {
  __$$SnapdSystemInfoResponseImplCopyWithImpl(
      _$SnapdSystemInfoResponseImpl _value,
      $Res Function(_$SnapdSystemInfoResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SnapdSystemInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refresh = null,
    Object? architecture = freezed,
    Object? buildId = freezed,
    Object? confinement = null,
    Object? features = freezed,
    Object? kernelVersion = freezed,
    Object? managed = null,
    Object? onClassic = null,
    Object? series = freezed,
    Object? systemMode = freezed,
    Object? version = freezed,
  }) {
    return _then(_$SnapdSystemInfoResponseImpl(
      refresh: null == refresh
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as SnapdSystemRefreshInfo,
      architecture: freezed == architecture
          ? _value.architecture
          : architecture // ignore: cast_nullable_to_non_nullable
              as String?,
      buildId: freezed == buildId
          ? _value.buildId
          : buildId // ignore: cast_nullable_to_non_nullable
              as String?,
      confinement: null == confinement
          ? _value.confinement
          : confinement // ignore: cast_nullable_to_non_nullable
              as SnapConfinement,
      features: freezed == features
          ? _value._features
          : features // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      kernelVersion: freezed == kernelVersion
          ? _value.kernelVersion
          : kernelVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      managed: null == managed
          ? _value.managed
          : managed // ignore: cast_nullable_to_non_nullable
              as bool,
      onClassic: null == onClassic
          ? _value.onClassic
          : onClassic // ignore: cast_nullable_to_non_nullable
              as bool,
      series: freezed == series
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as String?,
      systemMode: freezed == systemMode
          ? _value.systemMode
          : systemMode // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SnapdSystemInfoResponseImpl implements _SnapdSystemInfoResponse {
  const _$SnapdSystemInfoResponseImpl(
      {required this.refresh,
      this.architecture,
      this.buildId,
      @JsonKey(unknownEnumValue: SnapConfinement.unknown)
      this.confinement = SnapConfinement.unknown,
      final Map<String, dynamic>? features,
      this.kernelVersion,
      this.managed = false,
      this.onClassic = false,
      this.series,
      this.systemMode,
      this.version})
      : _features = features;

  factory _$SnapdSystemInfoResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SnapdSystemInfoResponseImplFromJson(json);

  @override
  final SnapdSystemRefreshInfo refresh;
  @override
  final String? architecture;
  @override
  final String? buildId;
  @override
  @JsonKey(unknownEnumValue: SnapConfinement.unknown)
  final SnapConfinement confinement;
  final Map<String, dynamic>? _features;
  @override
  Map<String, dynamic>? get features {
    final value = _features;
    if (value == null) return null;
    if (_features is EqualUnmodifiableMapView) return _features;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? kernelVersion;
  @override
  @JsonKey()
  final bool managed;
  @override
  @JsonKey()
  final bool onClassic;
  @override
  final String? series;
  @override
  final String? systemMode;
  @override
  final String? version;

  @override
  String toString() {
    return 'SnapdSystemInfoResponse(refresh: $refresh, architecture: $architecture, buildId: $buildId, confinement: $confinement, features: $features, kernelVersion: $kernelVersion, managed: $managed, onClassic: $onClassic, series: $series, systemMode: $systemMode, version: $version)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnapdSystemInfoResponseImpl &&
            (identical(other.refresh, refresh) || other.refresh == refresh) &&
            (identical(other.architecture, architecture) ||
                other.architecture == architecture) &&
            (identical(other.buildId, buildId) || other.buildId == buildId) &&
            (identical(other.confinement, confinement) ||
                other.confinement == confinement) &&
            const DeepCollectionEquality().equals(other._features, _features) &&
            (identical(other.kernelVersion, kernelVersion) ||
                other.kernelVersion == kernelVersion) &&
            (identical(other.managed, managed) || other.managed == managed) &&
            (identical(other.onClassic, onClassic) ||
                other.onClassic == onClassic) &&
            (identical(other.series, series) || other.series == series) &&
            (identical(other.systemMode, systemMode) ||
                other.systemMode == systemMode) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      refresh,
      architecture,
      buildId,
      confinement,
      const DeepCollectionEquality().hash(_features),
      kernelVersion,
      managed,
      onClassic,
      series,
      systemMode,
      version);

  /// Create a copy of SnapdSystemInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SnapdSystemInfoResponseImplCopyWith<_$SnapdSystemInfoResponseImpl>
      get copyWith => __$$SnapdSystemInfoResponseImplCopyWithImpl<
          _$SnapdSystemInfoResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SnapdSystemInfoResponseImplToJson(
      this,
    );
  }
}

abstract class _SnapdSystemInfoResponse implements SnapdSystemInfoResponse {
  const factory _SnapdSystemInfoResponse(
      {required final SnapdSystemRefreshInfo refresh,
      final String? architecture,
      final String? buildId,
      @JsonKey(unknownEnumValue: SnapConfinement.unknown)
      final SnapConfinement confinement,
      final Map<String, dynamic>? features,
      final String? kernelVersion,
      final bool managed,
      final bool onClassic,
      final String? series,
      final String? systemMode,
      final String? version}) = _$SnapdSystemInfoResponseImpl;

  factory _SnapdSystemInfoResponse.fromJson(Map<String, dynamic> json) =
      _$SnapdSystemInfoResponseImpl.fromJson;

  @override
  SnapdSystemRefreshInfo get refresh;
  @override
  String? get architecture;
  @override
  String? get buildId;
  @override
  @JsonKey(unknownEnumValue: SnapConfinement.unknown)
  SnapConfinement get confinement;
  @override
  Map<String, dynamic>? get features;
  @override
  String? get kernelVersion;
  @override
  bool get managed;
  @override
  bool get onClassic;
  @override
  String? get series;
  @override
  String? get systemMode;
  @override
  String? get version;

  /// Create a copy of SnapdSystemInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SnapdSystemInfoResponseImplCopyWith<_$SnapdSystemInfoResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SnapdSystemRefreshInfo _$SnapdSystemRefreshInfoFromJson(
    Map<String, dynamic> json) {
  return _SnapdSystemRefreshInfo.fromJson(json);
}

/// @nodoc
mixin _$SnapdSystemRefreshInfo {
  @_SnapdDateTimeConverter()
  DateTime get next => throw _privateConstructorUsedError;
  DateTime? get last => throw _privateConstructorUsedError;

  /// Serializes this SnapdSystemRefreshInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SnapdSystemRefreshInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SnapdSystemRefreshInfoCopyWith<SnapdSystemRefreshInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnapdSystemRefreshInfoCopyWith<$Res> {
  factory $SnapdSystemRefreshInfoCopyWith(SnapdSystemRefreshInfo value,
          $Res Function(SnapdSystemRefreshInfo) then) =
      _$SnapdSystemRefreshInfoCopyWithImpl<$Res, SnapdSystemRefreshInfo>;
  @useResult
  $Res call({@_SnapdDateTimeConverter() DateTime next, DateTime? last});
}

/// @nodoc
class _$SnapdSystemRefreshInfoCopyWithImpl<$Res,
        $Val extends SnapdSystemRefreshInfo>
    implements $SnapdSystemRefreshInfoCopyWith<$Res> {
  _$SnapdSystemRefreshInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SnapdSystemRefreshInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? next = null,
    Object? last = freezed,
  }) {
    return _then(_value.copyWith(
      next: null == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as DateTime,
      last: freezed == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SnapdSystemRefreshInfoImplCopyWith<$Res>
    implements $SnapdSystemRefreshInfoCopyWith<$Res> {
  factory _$$SnapdSystemRefreshInfoImplCopyWith(
          _$SnapdSystemRefreshInfoImpl value,
          $Res Function(_$SnapdSystemRefreshInfoImpl) then) =
      __$$SnapdSystemRefreshInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@_SnapdDateTimeConverter() DateTime next, DateTime? last});
}

/// @nodoc
class __$$SnapdSystemRefreshInfoImplCopyWithImpl<$Res>
    extends _$SnapdSystemRefreshInfoCopyWithImpl<$Res,
        _$SnapdSystemRefreshInfoImpl>
    implements _$$SnapdSystemRefreshInfoImplCopyWith<$Res> {
  __$$SnapdSystemRefreshInfoImplCopyWithImpl(
      _$SnapdSystemRefreshInfoImpl _value,
      $Res Function(_$SnapdSystemRefreshInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of SnapdSystemRefreshInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? next = null,
    Object? last = freezed,
  }) {
    return _then(_$SnapdSystemRefreshInfoImpl(
      next: null == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as DateTime,
      last: freezed == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SnapdSystemRefreshInfoImpl implements _SnapdSystemRefreshInfo {
  const _$SnapdSystemRefreshInfoImpl(
      {@_SnapdDateTimeConverter() required this.next, this.last});

  factory _$SnapdSystemRefreshInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SnapdSystemRefreshInfoImplFromJson(json);

  @override
  @_SnapdDateTimeConverter()
  final DateTime next;
  @override
  final DateTime? last;

  @override
  String toString() {
    return 'SnapdSystemRefreshInfo(next: $next, last: $last)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnapdSystemRefreshInfoImpl &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.last, last) || other.last == last));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, next, last);

  /// Create a copy of SnapdSystemRefreshInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SnapdSystemRefreshInfoImplCopyWith<_$SnapdSystemRefreshInfoImpl>
      get copyWith => __$$SnapdSystemRefreshInfoImplCopyWithImpl<
          _$SnapdSystemRefreshInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SnapdSystemRefreshInfoImplToJson(
      this,
    );
  }
}

abstract class _SnapdSystemRefreshInfo implements SnapdSystemRefreshInfo {
  const factory _SnapdSystemRefreshInfo(
      {@_SnapdDateTimeConverter() required final DateTime next,
      final DateTime? last}) = _$SnapdSystemRefreshInfoImpl;

  factory _SnapdSystemRefreshInfo.fromJson(Map<String, dynamic> json) =
      _$SnapdSystemRefreshInfoImpl.fromJson;

  @override
  @_SnapdDateTimeConverter()
  DateTime get next;
  @override
  DateTime? get last;

  /// Create a copy of SnapdSystemRefreshInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SnapdSystemRefreshInfoImplCopyWith<_$SnapdSystemRefreshInfoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SnapdLoginResponse _$SnapdLoginResponseFromJson(Map<String, dynamic> json) {
  return _SnapdLoginResponse.fromJson(json);
}

/// @nodoc
mixin _$SnapdLoginResponse {
  int get id => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get macaroon => throw _privateConstructorUsedError;
  List<String> get discharges => throw _privateConstructorUsedError;
  List<String> get sshKeys => throw _privateConstructorUsedError;

  /// Serializes this SnapdLoginResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SnapdLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SnapdLoginResponseCopyWith<SnapdLoginResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnapdLoginResponseCopyWith<$Res> {
  factory $SnapdLoginResponseCopyWith(
          SnapdLoginResponse value, $Res Function(SnapdLoginResponse) then) =
      _$SnapdLoginResponseCopyWithImpl<$Res, SnapdLoginResponse>;
  @useResult
  $Res call(
      {int id,
      String? username,
      String? email,
      String? macaroon,
      List<String> discharges,
      List<String> sshKeys});
}

/// @nodoc
class _$SnapdLoginResponseCopyWithImpl<$Res, $Val extends SnapdLoginResponse>
    implements $SnapdLoginResponseCopyWith<$Res> {
  _$SnapdLoginResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SnapdLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = freezed,
    Object? email = freezed,
    Object? macaroon = freezed,
    Object? discharges = null,
    Object? sshKeys = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      macaroon: freezed == macaroon
          ? _value.macaroon
          : macaroon // ignore: cast_nullable_to_non_nullable
              as String?,
      discharges: null == discharges
          ? _value.discharges
          : discharges // ignore: cast_nullable_to_non_nullable
              as List<String>,
      sshKeys: null == sshKeys
          ? _value.sshKeys
          : sshKeys // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SnapdLoginResponseImplCopyWith<$Res>
    implements $SnapdLoginResponseCopyWith<$Res> {
  factory _$$SnapdLoginResponseImplCopyWith(_$SnapdLoginResponseImpl value,
          $Res Function(_$SnapdLoginResponseImpl) then) =
      __$$SnapdLoginResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? username,
      String? email,
      String? macaroon,
      List<String> discharges,
      List<String> sshKeys});
}

/// @nodoc
class __$$SnapdLoginResponseImplCopyWithImpl<$Res>
    extends _$SnapdLoginResponseCopyWithImpl<$Res, _$SnapdLoginResponseImpl>
    implements _$$SnapdLoginResponseImplCopyWith<$Res> {
  __$$SnapdLoginResponseImplCopyWithImpl(_$SnapdLoginResponseImpl _value,
      $Res Function(_$SnapdLoginResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SnapdLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = freezed,
    Object? email = freezed,
    Object? macaroon = freezed,
    Object? discharges = null,
    Object? sshKeys = null,
  }) {
    return _then(_$SnapdLoginResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      macaroon: freezed == macaroon
          ? _value.macaroon
          : macaroon // ignore: cast_nullable_to_non_nullable
              as String?,
      discharges: null == discharges
          ? _value._discharges
          : discharges // ignore: cast_nullable_to_non_nullable
              as List<String>,
      sshKeys: null == sshKeys
          ? _value._sshKeys
          : sshKeys // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SnapdLoginResponseImpl implements _SnapdLoginResponse {
  const _$SnapdLoginResponseImpl(
      {required this.id,
      this.username,
      this.email,
      this.macaroon,
      final List<String> discharges = const [],
      final List<String> sshKeys = const []})
      : _discharges = discharges,
        _sshKeys = sshKeys;

  factory _$SnapdLoginResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SnapdLoginResponseImplFromJson(json);

  @override
  final int id;
  @override
  final String? username;
  @override
  final String? email;
  @override
  final String? macaroon;
  final List<String> _discharges;
  @override
  @JsonKey()
  List<String> get discharges {
    if (_discharges is EqualUnmodifiableListView) return _discharges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_discharges);
  }

  final List<String> _sshKeys;
  @override
  @JsonKey()
  List<String> get sshKeys {
    if (_sshKeys is EqualUnmodifiableListView) return _sshKeys;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sshKeys);
  }

  @override
  String toString() {
    return 'SnapdLoginResponse(id: $id, username: $username, email: $email, macaroon: $macaroon, discharges: $discharges, sshKeys: $sshKeys)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnapdLoginResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.macaroon, macaroon) ||
                other.macaroon == macaroon) &&
            const DeepCollectionEquality()
                .equals(other._discharges, _discharges) &&
            const DeepCollectionEquality().equals(other._sshKeys, _sshKeys));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      username,
      email,
      macaroon,
      const DeepCollectionEquality().hash(_discharges),
      const DeepCollectionEquality().hash(_sshKeys));

  /// Create a copy of SnapdLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SnapdLoginResponseImplCopyWith<_$SnapdLoginResponseImpl> get copyWith =>
      __$$SnapdLoginResponseImplCopyWithImpl<_$SnapdLoginResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SnapdLoginResponseImplToJson(
      this,
    );
  }
}

abstract class _SnapdLoginResponse implements SnapdLoginResponse {
  const factory _SnapdLoginResponse(
      {required final int id,
      final String? username,
      final String? email,
      final String? macaroon,
      final List<String> discharges,
      final List<String> sshKeys}) = _$SnapdLoginResponseImpl;

  factory _SnapdLoginResponse.fromJson(Map<String, dynamic> json) =
      _$SnapdLoginResponseImpl.fromJson;

  @override
  int get id;
  @override
  String? get username;
  @override
  String? get email;
  @override
  String? get macaroon;
  @override
  List<String> get discharges;
  @override
  List<String> get sshKeys;

  /// Create a copy of SnapdLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SnapdLoginResponseImplCopyWith<_$SnapdLoginResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SnapPlug _$SnapPlugFromJson(Map<String, dynamic> json) {
  return _SnapPlug.fromJson(json);
}

/// @nodoc
mixin _$SnapPlug {
  String get snap => throw _privateConstructorUsedError;
  String get plug => throw _privateConstructorUsedError;
  @JsonKey(name: 'attrs')
  Map<String, dynamic> get attributes => throw _privateConstructorUsedError;
  String? get interface => throw _privateConstructorUsedError;
  List<SnapSlot> get connections => throw _privateConstructorUsedError;

  /// Serializes this SnapPlug to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SnapPlug
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SnapPlugCopyWith<SnapPlug> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnapPlugCopyWith<$Res> {
  factory $SnapPlugCopyWith(SnapPlug value, $Res Function(SnapPlug) then) =
      _$SnapPlugCopyWithImpl<$Res, SnapPlug>;
  @useResult
  $Res call(
      {String snap,
      String plug,
      @JsonKey(name: 'attrs') Map<String, dynamic> attributes,
      String? interface,
      List<SnapSlot> connections});
}

/// @nodoc
class _$SnapPlugCopyWithImpl<$Res, $Val extends SnapPlug>
    implements $SnapPlugCopyWith<$Res> {
  _$SnapPlugCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SnapPlug
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? snap = null,
    Object? plug = null,
    Object? attributes = null,
    Object? interface = freezed,
    Object? connections = null,
  }) {
    return _then(_value.copyWith(
      snap: null == snap
          ? _value.snap
          : snap // ignore: cast_nullable_to_non_nullable
              as String,
      plug: null == plug
          ? _value.plug
          : plug // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      interface: freezed == interface
          ? _value.interface
          : interface // ignore: cast_nullable_to_non_nullable
              as String?,
      connections: null == connections
          ? _value.connections
          : connections // ignore: cast_nullable_to_non_nullable
              as List<SnapSlot>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SnapPlugImplCopyWith<$Res>
    implements $SnapPlugCopyWith<$Res> {
  factory _$$SnapPlugImplCopyWith(
          _$SnapPlugImpl value, $Res Function(_$SnapPlugImpl) then) =
      __$$SnapPlugImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String snap,
      String plug,
      @JsonKey(name: 'attrs') Map<String, dynamic> attributes,
      String? interface,
      List<SnapSlot> connections});
}

/// @nodoc
class __$$SnapPlugImplCopyWithImpl<$Res>
    extends _$SnapPlugCopyWithImpl<$Res, _$SnapPlugImpl>
    implements _$$SnapPlugImplCopyWith<$Res> {
  __$$SnapPlugImplCopyWithImpl(
      _$SnapPlugImpl _value, $Res Function(_$SnapPlugImpl) _then)
      : super(_value, _then);

  /// Create a copy of SnapPlug
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? snap = null,
    Object? plug = null,
    Object? attributes = null,
    Object? interface = freezed,
    Object? connections = null,
  }) {
    return _then(_$SnapPlugImpl(
      snap: null == snap
          ? _value.snap
          : snap // ignore: cast_nullable_to_non_nullable
              as String,
      plug: null == plug
          ? _value.plug
          : plug // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: null == attributes
          ? _value._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      interface: freezed == interface
          ? _value.interface
          : interface // ignore: cast_nullable_to_non_nullable
              as String?,
      connections: null == connections
          ? _value._connections
          : connections // ignore: cast_nullable_to_non_nullable
              as List<SnapSlot>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SnapPlugImpl implements _SnapPlug {
  const _$SnapPlugImpl(
      {required this.snap,
      required this.plug,
      @JsonKey(name: 'attrs') final Map<String, dynamic> attributes = const {},
      this.interface,
      final List<SnapSlot> connections = const []})
      : _attributes = attributes,
        _connections = connections;

  factory _$SnapPlugImpl.fromJson(Map<String, dynamic> json) =>
      _$$SnapPlugImplFromJson(json);

  @override
  final String snap;
  @override
  final String plug;
  final Map<String, dynamic> _attributes;
  @override
  @JsonKey(name: 'attrs')
  Map<String, dynamic> get attributes {
    if (_attributes is EqualUnmodifiableMapView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_attributes);
  }

  @override
  final String? interface;
  final List<SnapSlot> _connections;
  @override
  @JsonKey()
  List<SnapSlot> get connections {
    if (_connections is EqualUnmodifiableListView) return _connections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_connections);
  }

  @override
  String toString() {
    return 'SnapPlug(snap: $snap, plug: $plug, attributes: $attributes, interface: $interface, connections: $connections)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnapPlugImpl &&
            (identical(other.snap, snap) || other.snap == snap) &&
            (identical(other.plug, plug) || other.plug == plug) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes) &&
            (identical(other.interface, interface) ||
                other.interface == interface) &&
            const DeepCollectionEquality()
                .equals(other._connections, _connections));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      snap,
      plug,
      const DeepCollectionEquality().hash(_attributes),
      interface,
      const DeepCollectionEquality().hash(_connections));

  /// Create a copy of SnapPlug
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SnapPlugImplCopyWith<_$SnapPlugImpl> get copyWith =>
      __$$SnapPlugImplCopyWithImpl<_$SnapPlugImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SnapPlugImplToJson(
      this,
    );
  }
}

abstract class _SnapPlug implements SnapPlug {
  const factory _SnapPlug(
      {required final String snap,
      required final String plug,
      @JsonKey(name: 'attrs') final Map<String, dynamic> attributes,
      final String? interface,
      final List<SnapSlot> connections}) = _$SnapPlugImpl;

  factory _SnapPlug.fromJson(Map<String, dynamic> json) =
      _$SnapPlugImpl.fromJson;

  @override
  String get snap;
  @override
  String get plug;
  @override
  @JsonKey(name: 'attrs')
  Map<String, dynamic> get attributes;
  @override
  String? get interface;
  @override
  List<SnapSlot> get connections;

  /// Create a copy of SnapPlug
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SnapPlugImplCopyWith<_$SnapPlugImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SnapSlot _$SnapSlotFromJson(Map<String, dynamic> json) {
  return _SnapSlot.fromJson(json);
}

/// @nodoc
mixin _$SnapSlot {
  String get snap => throw _privateConstructorUsedError;
  String get slot => throw _privateConstructorUsedError;
  @JsonKey(name: 'attrs')
  Map<String, dynamic> get attributes => throw _privateConstructorUsedError;
  String? get interface => throw _privateConstructorUsedError;
  List<SnapPlug> get connections => throw _privateConstructorUsedError;

  /// Serializes this SnapSlot to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SnapSlot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SnapSlotCopyWith<SnapSlot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnapSlotCopyWith<$Res> {
  factory $SnapSlotCopyWith(SnapSlot value, $Res Function(SnapSlot) then) =
      _$SnapSlotCopyWithImpl<$Res, SnapSlot>;
  @useResult
  $Res call(
      {String snap,
      String slot,
      @JsonKey(name: 'attrs') Map<String, dynamic> attributes,
      String? interface,
      List<SnapPlug> connections});
}

/// @nodoc
class _$SnapSlotCopyWithImpl<$Res, $Val extends SnapSlot>
    implements $SnapSlotCopyWith<$Res> {
  _$SnapSlotCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SnapSlot
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? snap = null,
    Object? slot = null,
    Object? attributes = null,
    Object? interface = freezed,
    Object? connections = null,
  }) {
    return _then(_value.copyWith(
      snap: null == snap
          ? _value.snap
          : snap // ignore: cast_nullable_to_non_nullable
              as String,
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      interface: freezed == interface
          ? _value.interface
          : interface // ignore: cast_nullable_to_non_nullable
              as String?,
      connections: null == connections
          ? _value.connections
          : connections // ignore: cast_nullable_to_non_nullable
              as List<SnapPlug>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SnapSlotImplCopyWith<$Res>
    implements $SnapSlotCopyWith<$Res> {
  factory _$$SnapSlotImplCopyWith(
          _$SnapSlotImpl value, $Res Function(_$SnapSlotImpl) then) =
      __$$SnapSlotImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String snap,
      String slot,
      @JsonKey(name: 'attrs') Map<String, dynamic> attributes,
      String? interface,
      List<SnapPlug> connections});
}

/// @nodoc
class __$$SnapSlotImplCopyWithImpl<$Res>
    extends _$SnapSlotCopyWithImpl<$Res, _$SnapSlotImpl>
    implements _$$SnapSlotImplCopyWith<$Res> {
  __$$SnapSlotImplCopyWithImpl(
      _$SnapSlotImpl _value, $Res Function(_$SnapSlotImpl) _then)
      : super(_value, _then);

  /// Create a copy of SnapSlot
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? snap = null,
    Object? slot = null,
    Object? attributes = null,
    Object? interface = freezed,
    Object? connections = null,
  }) {
    return _then(_$SnapSlotImpl(
      snap: null == snap
          ? _value.snap
          : snap // ignore: cast_nullable_to_non_nullable
              as String,
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: null == attributes
          ? _value._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      interface: freezed == interface
          ? _value.interface
          : interface // ignore: cast_nullable_to_non_nullable
              as String?,
      connections: null == connections
          ? _value._connections
          : connections // ignore: cast_nullable_to_non_nullable
              as List<SnapPlug>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SnapSlotImpl implements _SnapSlot {
  const _$SnapSlotImpl(
      {required this.snap,
      required this.slot,
      @JsonKey(name: 'attrs') final Map<String, dynamic> attributes = const {},
      this.interface,
      final List<SnapPlug> connections = const []})
      : _attributes = attributes,
        _connections = connections;

  factory _$SnapSlotImpl.fromJson(Map<String, dynamic> json) =>
      _$$SnapSlotImplFromJson(json);

  @override
  final String snap;
  @override
  final String slot;
  final Map<String, dynamic> _attributes;
  @override
  @JsonKey(name: 'attrs')
  Map<String, dynamic> get attributes {
    if (_attributes is EqualUnmodifiableMapView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_attributes);
  }

  @override
  final String? interface;
  final List<SnapPlug> _connections;
  @override
  @JsonKey()
  List<SnapPlug> get connections {
    if (_connections is EqualUnmodifiableListView) return _connections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_connections);
  }

  @override
  String toString() {
    return 'SnapSlot(snap: $snap, slot: $slot, attributes: $attributes, interface: $interface, connections: $connections)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnapSlotImpl &&
            (identical(other.snap, snap) || other.snap == snap) &&
            (identical(other.slot, slot) || other.slot == slot) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes) &&
            (identical(other.interface, interface) ||
                other.interface == interface) &&
            const DeepCollectionEquality()
                .equals(other._connections, _connections));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      snap,
      slot,
      const DeepCollectionEquality().hash(_attributes),
      interface,
      const DeepCollectionEquality().hash(_connections));

  /// Create a copy of SnapSlot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SnapSlotImplCopyWith<_$SnapSlotImpl> get copyWith =>
      __$$SnapSlotImplCopyWithImpl<_$SnapSlotImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SnapSlotImplToJson(
      this,
    );
  }
}

abstract class _SnapSlot implements SnapSlot {
  const factory _SnapSlot(
      {required final String snap,
      required final String slot,
      @JsonKey(name: 'attrs') final Map<String, dynamic> attributes,
      final String? interface,
      final List<SnapPlug> connections}) = _$SnapSlotImpl;

  factory _SnapSlot.fromJson(Map<String, dynamic> json) =
      _$SnapSlotImpl.fromJson;

  @override
  String get snap;
  @override
  String get slot;
  @override
  @JsonKey(name: 'attrs')
  Map<String, dynamic> get attributes;
  @override
  String? get interface;
  @override
  List<SnapPlug> get connections;

  /// Create a copy of SnapSlot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SnapSlotImplCopyWith<_$SnapSlotImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SnapConnection _$SnapConnectionFromJson(Map<String, dynamic> json) {
  return _SnapConnection.fromJson(json);
}

/// @nodoc
mixin _$SnapConnection {
  SnapSlot get slot => throw _privateConstructorUsedError;
  SnapPlug get plug => throw _privateConstructorUsedError;
  String get interface => throw _privateConstructorUsedError;
  @JsonKey(name: 'slot-attrs')
  Map<String, dynamic> get slotAttributes => throw _privateConstructorUsedError;
  @JsonKey(name: 'plug-attrs')
  Map<String, dynamic> get plugAttributes => throw _privateConstructorUsedError;
  bool get manual => throw _privateConstructorUsedError;

  /// Serializes this SnapConnection to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SnapConnection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SnapConnectionCopyWith<SnapConnection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnapConnectionCopyWith<$Res> {
  factory $SnapConnectionCopyWith(
          SnapConnection value, $Res Function(SnapConnection) then) =
      _$SnapConnectionCopyWithImpl<$Res, SnapConnection>;
  @useResult
  $Res call(
      {SnapSlot slot,
      SnapPlug plug,
      String interface,
      @JsonKey(name: 'slot-attrs') Map<String, dynamic> slotAttributes,
      @JsonKey(name: 'plug-attrs') Map<String, dynamic> plugAttributes,
      bool manual});

  $SnapSlotCopyWith<$Res> get slot;
  $SnapPlugCopyWith<$Res> get plug;
}

/// @nodoc
class _$SnapConnectionCopyWithImpl<$Res, $Val extends SnapConnection>
    implements $SnapConnectionCopyWith<$Res> {
  _$SnapConnectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SnapConnection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = null,
    Object? plug = null,
    Object? interface = null,
    Object? slotAttributes = null,
    Object? plugAttributes = null,
    Object? manual = null,
  }) {
    return _then(_value.copyWith(
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as SnapSlot,
      plug: null == plug
          ? _value.plug
          : plug // ignore: cast_nullable_to_non_nullable
              as SnapPlug,
      interface: null == interface
          ? _value.interface
          : interface // ignore: cast_nullable_to_non_nullable
              as String,
      slotAttributes: null == slotAttributes
          ? _value.slotAttributes
          : slotAttributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      plugAttributes: null == plugAttributes
          ? _value.plugAttributes
          : plugAttributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      manual: null == manual
          ? _value.manual
          : manual // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of SnapConnection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SnapSlotCopyWith<$Res> get slot {
    return $SnapSlotCopyWith<$Res>(_value.slot, (value) {
      return _then(_value.copyWith(slot: value) as $Val);
    });
  }

  /// Create a copy of SnapConnection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SnapPlugCopyWith<$Res> get plug {
    return $SnapPlugCopyWith<$Res>(_value.plug, (value) {
      return _then(_value.copyWith(plug: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SnapConnectionImplCopyWith<$Res>
    implements $SnapConnectionCopyWith<$Res> {
  factory _$$SnapConnectionImplCopyWith(_$SnapConnectionImpl value,
          $Res Function(_$SnapConnectionImpl) then) =
      __$$SnapConnectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SnapSlot slot,
      SnapPlug plug,
      String interface,
      @JsonKey(name: 'slot-attrs') Map<String, dynamic> slotAttributes,
      @JsonKey(name: 'plug-attrs') Map<String, dynamic> plugAttributes,
      bool manual});

  @override
  $SnapSlotCopyWith<$Res> get slot;
  @override
  $SnapPlugCopyWith<$Res> get plug;
}

/// @nodoc
class __$$SnapConnectionImplCopyWithImpl<$Res>
    extends _$SnapConnectionCopyWithImpl<$Res, _$SnapConnectionImpl>
    implements _$$SnapConnectionImplCopyWith<$Res> {
  __$$SnapConnectionImplCopyWithImpl(
      _$SnapConnectionImpl _value, $Res Function(_$SnapConnectionImpl) _then)
      : super(_value, _then);

  /// Create a copy of SnapConnection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = null,
    Object? plug = null,
    Object? interface = null,
    Object? slotAttributes = null,
    Object? plugAttributes = null,
    Object? manual = null,
  }) {
    return _then(_$SnapConnectionImpl(
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as SnapSlot,
      plug: null == plug
          ? _value.plug
          : plug // ignore: cast_nullable_to_non_nullable
              as SnapPlug,
      interface: null == interface
          ? _value.interface
          : interface // ignore: cast_nullable_to_non_nullable
              as String,
      slotAttributes: null == slotAttributes
          ? _value._slotAttributes
          : slotAttributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      plugAttributes: null == plugAttributes
          ? _value._plugAttributes
          : plugAttributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      manual: null == manual
          ? _value.manual
          : manual // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SnapConnectionImpl implements _SnapConnection {
  const _$SnapConnectionImpl(
      {required this.slot,
      required this.plug,
      required this.interface,
      @JsonKey(name: 'slot-attrs')
      final Map<String, dynamic> slotAttributes = const {},
      @JsonKey(name: 'plug-attrs')
      final Map<String, dynamic> plugAttributes = const {},
      this.manual = false})
      : _slotAttributes = slotAttributes,
        _plugAttributes = plugAttributes;

  factory _$SnapConnectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SnapConnectionImplFromJson(json);

  @override
  final SnapSlot slot;
  @override
  final SnapPlug plug;
  @override
  final String interface;
  final Map<String, dynamic> _slotAttributes;
  @override
  @JsonKey(name: 'slot-attrs')
  Map<String, dynamic> get slotAttributes {
    if (_slotAttributes is EqualUnmodifiableMapView) return _slotAttributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_slotAttributes);
  }

  final Map<String, dynamic> _plugAttributes;
  @override
  @JsonKey(name: 'plug-attrs')
  Map<String, dynamic> get plugAttributes {
    if (_plugAttributes is EqualUnmodifiableMapView) return _plugAttributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_plugAttributes);
  }

  @override
  @JsonKey()
  final bool manual;

  @override
  String toString() {
    return 'SnapConnection(slot: $slot, plug: $plug, interface: $interface, slotAttributes: $slotAttributes, plugAttributes: $plugAttributes, manual: $manual)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnapConnectionImpl &&
            (identical(other.slot, slot) || other.slot == slot) &&
            (identical(other.plug, plug) || other.plug == plug) &&
            (identical(other.interface, interface) ||
                other.interface == interface) &&
            const DeepCollectionEquality()
                .equals(other._slotAttributes, _slotAttributes) &&
            const DeepCollectionEquality()
                .equals(other._plugAttributes, _plugAttributes) &&
            (identical(other.manual, manual) || other.manual == manual));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      slot,
      plug,
      interface,
      const DeepCollectionEquality().hash(_slotAttributes),
      const DeepCollectionEquality().hash(_plugAttributes),
      manual);

  /// Create a copy of SnapConnection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SnapConnectionImplCopyWith<_$SnapConnectionImpl> get copyWith =>
      __$$SnapConnectionImplCopyWithImpl<_$SnapConnectionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SnapConnectionImplToJson(
      this,
    );
  }
}

abstract class _SnapConnection implements SnapConnection {
  const factory _SnapConnection(
      {required final SnapSlot slot,
      required final SnapPlug plug,
      required final String interface,
      @JsonKey(name: 'slot-attrs') final Map<String, dynamic> slotAttributes,
      @JsonKey(name: 'plug-attrs') final Map<String, dynamic> plugAttributes,
      final bool manual}) = _$SnapConnectionImpl;

  factory _SnapConnection.fromJson(Map<String, dynamic> json) =
      _$SnapConnectionImpl.fromJson;

  @override
  SnapSlot get slot;
  @override
  SnapPlug get plug;
  @override
  String get interface;
  @override
  @JsonKey(name: 'slot-attrs')
  Map<String, dynamic> get slotAttributes;
  @override
  @JsonKey(name: 'plug-attrs')
  Map<String, dynamic> get plugAttributes;
  @override
  bool get manual;

  /// Create a copy of SnapConnection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SnapConnectionImplCopyWith<_$SnapConnectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SnapdConnectionsResponse _$SnapdConnectionsResponseFromJson(
    Map<String, dynamic> json) {
  return _SnapdConnectionsResponse.fromJson(json);
}

/// @nodoc
mixin _$SnapdConnectionsResponse {
  List<SnapConnection> get established => throw _privateConstructorUsedError;
  List<SnapPlug> get plugs => throw _privateConstructorUsedError;
  List<SnapSlot> get slots => throw _privateConstructorUsedError;
  List<SnapConnection> get undesired => throw _privateConstructorUsedError;

  /// Serializes this SnapdConnectionsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SnapdConnectionsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SnapdConnectionsResponseCopyWith<SnapdConnectionsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnapdConnectionsResponseCopyWith<$Res> {
  factory $SnapdConnectionsResponseCopyWith(SnapdConnectionsResponse value,
          $Res Function(SnapdConnectionsResponse) then) =
      _$SnapdConnectionsResponseCopyWithImpl<$Res, SnapdConnectionsResponse>;
  @useResult
  $Res call(
      {List<SnapConnection> established,
      List<SnapPlug> plugs,
      List<SnapSlot> slots,
      List<SnapConnection> undesired});
}

/// @nodoc
class _$SnapdConnectionsResponseCopyWithImpl<$Res,
        $Val extends SnapdConnectionsResponse>
    implements $SnapdConnectionsResponseCopyWith<$Res> {
  _$SnapdConnectionsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SnapdConnectionsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? established = null,
    Object? plugs = null,
    Object? slots = null,
    Object? undesired = null,
  }) {
    return _then(_value.copyWith(
      established: null == established
          ? _value.established
          : established // ignore: cast_nullable_to_non_nullable
              as List<SnapConnection>,
      plugs: null == plugs
          ? _value.plugs
          : plugs // ignore: cast_nullable_to_non_nullable
              as List<SnapPlug>,
      slots: null == slots
          ? _value.slots
          : slots // ignore: cast_nullable_to_non_nullable
              as List<SnapSlot>,
      undesired: null == undesired
          ? _value.undesired
          : undesired // ignore: cast_nullable_to_non_nullable
              as List<SnapConnection>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SnapdConnectionsResponseImplCopyWith<$Res>
    implements $SnapdConnectionsResponseCopyWith<$Res> {
  factory _$$SnapdConnectionsResponseImplCopyWith(
          _$SnapdConnectionsResponseImpl value,
          $Res Function(_$SnapdConnectionsResponseImpl) then) =
      __$$SnapdConnectionsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<SnapConnection> established,
      List<SnapPlug> plugs,
      List<SnapSlot> slots,
      List<SnapConnection> undesired});
}

/// @nodoc
class __$$SnapdConnectionsResponseImplCopyWithImpl<$Res>
    extends _$SnapdConnectionsResponseCopyWithImpl<$Res,
        _$SnapdConnectionsResponseImpl>
    implements _$$SnapdConnectionsResponseImplCopyWith<$Res> {
  __$$SnapdConnectionsResponseImplCopyWithImpl(
      _$SnapdConnectionsResponseImpl _value,
      $Res Function(_$SnapdConnectionsResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SnapdConnectionsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? established = null,
    Object? plugs = null,
    Object? slots = null,
    Object? undesired = null,
  }) {
    return _then(_$SnapdConnectionsResponseImpl(
      established: null == established
          ? _value._established
          : established // ignore: cast_nullable_to_non_nullable
              as List<SnapConnection>,
      plugs: null == plugs
          ? _value._plugs
          : plugs // ignore: cast_nullable_to_non_nullable
              as List<SnapPlug>,
      slots: null == slots
          ? _value._slots
          : slots // ignore: cast_nullable_to_non_nullable
              as List<SnapSlot>,
      undesired: null == undesired
          ? _value._undesired
          : undesired // ignore: cast_nullable_to_non_nullable
              as List<SnapConnection>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SnapdConnectionsResponseImpl implements _SnapdConnectionsResponse {
  const _$SnapdConnectionsResponseImpl(
      {final List<SnapConnection> established = const [],
      final List<SnapPlug> plugs = const [],
      final List<SnapSlot> slots = const [],
      final List<SnapConnection> undesired = const []})
      : _established = established,
        _plugs = plugs,
        _slots = slots,
        _undesired = undesired;

  factory _$SnapdConnectionsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SnapdConnectionsResponseImplFromJson(json);

  final List<SnapConnection> _established;
  @override
  @JsonKey()
  List<SnapConnection> get established {
    if (_established is EqualUnmodifiableListView) return _established;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_established);
  }

  final List<SnapPlug> _plugs;
  @override
  @JsonKey()
  List<SnapPlug> get plugs {
    if (_plugs is EqualUnmodifiableListView) return _plugs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_plugs);
  }

  final List<SnapSlot> _slots;
  @override
  @JsonKey()
  List<SnapSlot> get slots {
    if (_slots is EqualUnmodifiableListView) return _slots;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_slots);
  }

  final List<SnapConnection> _undesired;
  @override
  @JsonKey()
  List<SnapConnection> get undesired {
    if (_undesired is EqualUnmodifiableListView) return _undesired;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_undesired);
  }

  @override
  String toString() {
    return 'SnapdConnectionsResponse(established: $established, plugs: $plugs, slots: $slots, undesired: $undesired)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnapdConnectionsResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._established, _established) &&
            const DeepCollectionEquality().equals(other._plugs, _plugs) &&
            const DeepCollectionEquality().equals(other._slots, _slots) &&
            const DeepCollectionEquality()
                .equals(other._undesired, _undesired));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_established),
      const DeepCollectionEquality().hash(_plugs),
      const DeepCollectionEquality().hash(_slots),
      const DeepCollectionEquality().hash(_undesired));

  /// Create a copy of SnapdConnectionsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SnapdConnectionsResponseImplCopyWith<_$SnapdConnectionsResponseImpl>
      get copyWith => __$$SnapdConnectionsResponseImplCopyWithImpl<
          _$SnapdConnectionsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SnapdConnectionsResponseImplToJson(
      this,
    );
  }
}

abstract class _SnapdConnectionsResponse implements SnapdConnectionsResponse {
  const factory _SnapdConnectionsResponse(
      {final List<SnapConnection> established,
      final List<SnapPlug> plugs,
      final List<SnapSlot> slots,
      final List<SnapConnection> undesired}) = _$SnapdConnectionsResponseImpl;

  factory _SnapdConnectionsResponse.fromJson(Map<String, dynamic> json) =
      _$SnapdConnectionsResponseImpl.fromJson;

  @override
  List<SnapConnection> get established;
  @override
  List<SnapPlug> get plugs;
  @override
  List<SnapSlot> get slots;
  @override
  List<SnapConnection> get undesired;

  /// Create a copy of SnapdConnectionsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SnapdConnectionsResponseImplCopyWith<_$SnapdConnectionsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SnapdChange _$SnapdChangeFromJson(Map<String, dynamic> json) {
  return _SnapdChange.fromJson(json);
}

/// @nodoc
mixin _$SnapdChange {
  String get id => throw _privateConstructorUsedError;
  DateTime? get spawnTime => throw _privateConstructorUsedError;
  String? get kind => throw _privateConstructorUsedError;
  String? get summary => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  bool get ready => throw _privateConstructorUsedError;
  DateTime? get readyTime => throw _privateConstructorUsedError;
  String? get err => throw _privateConstructorUsedError;
  List<SnapdTask> get tasks => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'data',
      toJson: SnapdChange._snapNamesToJson,
      fromJson: SnapdChange._snapNamesFromJson)
  List<String> get snapNames => throw _privateConstructorUsedError;

  /// Serializes this SnapdChange to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SnapdChange
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SnapdChangeCopyWith<SnapdChange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnapdChangeCopyWith<$Res> {
  factory $SnapdChangeCopyWith(
          SnapdChange value, $Res Function(SnapdChange) then) =
      _$SnapdChangeCopyWithImpl<$Res, SnapdChange>;
  @useResult
  $Res call(
      {String id,
      DateTime? spawnTime,
      String? kind,
      String? summary,
      String? status,
      bool ready,
      DateTime? readyTime,
      String? err,
      List<SnapdTask> tasks,
      @JsonKey(
          name: 'data',
          toJson: SnapdChange._snapNamesToJson,
          fromJson: SnapdChange._snapNamesFromJson)
      List<String> snapNames});
}

/// @nodoc
class _$SnapdChangeCopyWithImpl<$Res, $Val extends SnapdChange>
    implements $SnapdChangeCopyWith<$Res> {
  _$SnapdChangeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SnapdChange
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? spawnTime = freezed,
    Object? kind = freezed,
    Object? summary = freezed,
    Object? status = freezed,
    Object? ready = null,
    Object? readyTime = freezed,
    Object? err = freezed,
    Object? tasks = null,
    Object? snapNames = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      spawnTime: freezed == spawnTime
          ? _value.spawnTime
          : spawnTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      kind: freezed == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      ready: null == ready
          ? _value.ready
          : ready // ignore: cast_nullable_to_non_nullable
              as bool,
      readyTime: freezed == readyTime
          ? _value.readyTime
          : readyTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      err: freezed == err
          ? _value.err
          : err // ignore: cast_nullable_to_non_nullable
              as String?,
      tasks: null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<SnapdTask>,
      snapNames: null == snapNames
          ? _value.snapNames
          : snapNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SnapdChangeImplCopyWith<$Res>
    implements $SnapdChangeCopyWith<$Res> {
  factory _$$SnapdChangeImplCopyWith(
          _$SnapdChangeImpl value, $Res Function(_$SnapdChangeImpl) then) =
      __$$SnapdChangeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime? spawnTime,
      String? kind,
      String? summary,
      String? status,
      bool ready,
      DateTime? readyTime,
      String? err,
      List<SnapdTask> tasks,
      @JsonKey(
          name: 'data',
          toJson: SnapdChange._snapNamesToJson,
          fromJson: SnapdChange._snapNamesFromJson)
      List<String> snapNames});
}

/// @nodoc
class __$$SnapdChangeImplCopyWithImpl<$Res>
    extends _$SnapdChangeCopyWithImpl<$Res, _$SnapdChangeImpl>
    implements _$$SnapdChangeImplCopyWith<$Res> {
  __$$SnapdChangeImplCopyWithImpl(
      _$SnapdChangeImpl _value, $Res Function(_$SnapdChangeImpl) _then)
      : super(_value, _then);

  /// Create a copy of SnapdChange
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? spawnTime = freezed,
    Object? kind = freezed,
    Object? summary = freezed,
    Object? status = freezed,
    Object? ready = null,
    Object? readyTime = freezed,
    Object? err = freezed,
    Object? tasks = null,
    Object? snapNames = null,
  }) {
    return _then(_$SnapdChangeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      spawnTime: freezed == spawnTime
          ? _value.spawnTime
          : spawnTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      kind: freezed == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      ready: null == ready
          ? _value.ready
          : ready // ignore: cast_nullable_to_non_nullable
              as bool,
      readyTime: freezed == readyTime
          ? _value.readyTime
          : readyTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      err: freezed == err
          ? _value.err
          : err // ignore: cast_nullable_to_non_nullable
              as String?,
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<SnapdTask>,
      snapNames: null == snapNames
          ? _value._snapNames
          : snapNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SnapdChangeImpl implements _SnapdChange {
  const _$SnapdChangeImpl(
      {required this.id,
      this.spawnTime,
      this.kind,
      this.summary,
      this.status,
      this.ready = false,
      this.readyTime,
      this.err,
      final List<SnapdTask> tasks = const [],
      @JsonKey(
          name: 'data',
          toJson: SnapdChange._snapNamesToJson,
          fromJson: SnapdChange._snapNamesFromJson)
      final List<String> snapNames = const []})
      : _tasks = tasks,
        _snapNames = snapNames;

  factory _$SnapdChangeImpl.fromJson(Map<String, dynamic> json) =>
      _$$SnapdChangeImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime? spawnTime;
  @override
  final String? kind;
  @override
  final String? summary;
  @override
  final String? status;
  @override
  @JsonKey()
  final bool ready;
  @override
  final DateTime? readyTime;
  @override
  final String? err;
  final List<SnapdTask> _tasks;
  @override
  @JsonKey()
  List<SnapdTask> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  final List<String> _snapNames;
  @override
  @JsonKey(
      name: 'data',
      toJson: SnapdChange._snapNamesToJson,
      fromJson: SnapdChange._snapNamesFromJson)
  List<String> get snapNames {
    if (_snapNames is EqualUnmodifiableListView) return _snapNames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_snapNames);
  }

  @override
  String toString() {
    return 'SnapdChange(id: $id, spawnTime: $spawnTime, kind: $kind, summary: $summary, status: $status, ready: $ready, readyTime: $readyTime, err: $err, tasks: $tasks, snapNames: $snapNames)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnapdChangeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.spawnTime, spawnTime) ||
                other.spawnTime == spawnTime) &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.ready, ready) || other.ready == ready) &&
            (identical(other.readyTime, readyTime) ||
                other.readyTime == readyTime) &&
            (identical(other.err, err) || other.err == err) &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            const DeepCollectionEquality()
                .equals(other._snapNames, _snapNames));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      spawnTime,
      kind,
      summary,
      status,
      ready,
      readyTime,
      err,
      const DeepCollectionEquality().hash(_tasks),
      const DeepCollectionEquality().hash(_snapNames));

  /// Create a copy of SnapdChange
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SnapdChangeImplCopyWith<_$SnapdChangeImpl> get copyWith =>
      __$$SnapdChangeImplCopyWithImpl<_$SnapdChangeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SnapdChangeImplToJson(
      this,
    );
  }
}

abstract class _SnapdChange implements SnapdChange {
  const factory _SnapdChange(
      {required final String id,
      final DateTime? spawnTime,
      final String? kind,
      final String? summary,
      final String? status,
      final bool ready,
      final DateTime? readyTime,
      final String? err,
      final List<SnapdTask> tasks,
      @JsonKey(
          name: 'data',
          toJson: SnapdChange._snapNamesToJson,
          fromJson: SnapdChange._snapNamesFromJson)
      final List<String> snapNames}) = _$SnapdChangeImpl;

  factory _SnapdChange.fromJson(Map<String, dynamic> json) =
      _$SnapdChangeImpl.fromJson;

  @override
  String get id;
  @override
  DateTime? get spawnTime;
  @override
  String? get kind;
  @override
  String? get summary;
  @override
  String? get status;
  @override
  bool get ready;
  @override
  DateTime? get readyTime;
  @override
  String? get err;
  @override
  List<SnapdTask> get tasks;
  @override
  @JsonKey(
      name: 'data',
      toJson: SnapdChange._snapNamesToJson,
      fromJson: SnapdChange._snapNamesFromJson)
  List<String> get snapNames;

  /// Create a copy of SnapdChange
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SnapdChangeImplCopyWith<_$SnapdChangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SnapdTask _$SnapdTaskFromJson(Map<String, dynamic> json) {
  return _SnapdTask.fromJson(json);
}

/// @nodoc
mixin _$SnapdTask {
  String get id => throw _privateConstructorUsedError;
  DateTime? get spawnTime => throw _privateConstructorUsedError;
  String? get kind => throw _privateConstructorUsedError;
  String get summary => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  SnapdTaskProgress get progress => throw _privateConstructorUsedError;
  DateTime? get readyTime => throw _privateConstructorUsedError;

  /// Serializes this SnapdTask to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SnapdTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SnapdTaskCopyWith<SnapdTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnapdTaskCopyWith<$Res> {
  factory $SnapdTaskCopyWith(SnapdTask value, $Res Function(SnapdTask) then) =
      _$SnapdTaskCopyWithImpl<$Res, SnapdTask>;
  @useResult
  $Res call(
      {String id,
      DateTime? spawnTime,
      String? kind,
      String summary,
      String? status,
      SnapdTaskProgress progress,
      DateTime? readyTime});

  $SnapdTaskProgressCopyWith<$Res> get progress;
}

/// @nodoc
class _$SnapdTaskCopyWithImpl<$Res, $Val extends SnapdTask>
    implements $SnapdTaskCopyWith<$Res> {
  _$SnapdTaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SnapdTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? spawnTime = freezed,
    Object? kind = freezed,
    Object? summary = null,
    Object? status = freezed,
    Object? progress = null,
    Object? readyTime = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      spawnTime: freezed == spawnTime
          ? _value.spawnTime
          : spawnTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      kind: freezed == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as SnapdTaskProgress,
      readyTime: freezed == readyTime
          ? _value.readyTime
          : readyTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  /// Create a copy of SnapdTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SnapdTaskProgressCopyWith<$Res> get progress {
    return $SnapdTaskProgressCopyWith<$Res>(_value.progress, (value) {
      return _then(_value.copyWith(progress: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SnapdTaskImplCopyWith<$Res>
    implements $SnapdTaskCopyWith<$Res> {
  factory _$$SnapdTaskImplCopyWith(
          _$SnapdTaskImpl value, $Res Function(_$SnapdTaskImpl) then) =
      __$$SnapdTaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime? spawnTime,
      String? kind,
      String summary,
      String? status,
      SnapdTaskProgress progress,
      DateTime? readyTime});

  @override
  $SnapdTaskProgressCopyWith<$Res> get progress;
}

/// @nodoc
class __$$SnapdTaskImplCopyWithImpl<$Res>
    extends _$SnapdTaskCopyWithImpl<$Res, _$SnapdTaskImpl>
    implements _$$SnapdTaskImplCopyWith<$Res> {
  __$$SnapdTaskImplCopyWithImpl(
      _$SnapdTaskImpl _value, $Res Function(_$SnapdTaskImpl) _then)
      : super(_value, _then);

  /// Create a copy of SnapdTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? spawnTime = freezed,
    Object? kind = freezed,
    Object? summary = null,
    Object? status = freezed,
    Object? progress = null,
    Object? readyTime = freezed,
  }) {
    return _then(_$SnapdTaskImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      spawnTime: freezed == spawnTime
          ? _value.spawnTime
          : spawnTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      kind: freezed == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as SnapdTaskProgress,
      readyTime: freezed == readyTime
          ? _value.readyTime
          : readyTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SnapdTaskImpl implements _SnapdTask {
  const _$SnapdTaskImpl(
      {required this.id,
      this.spawnTime,
      this.kind,
      this.summary = '',
      this.status,
      this.progress = const SnapdTaskProgress(),
      this.readyTime});

  factory _$SnapdTaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$SnapdTaskImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime? spawnTime;
  @override
  final String? kind;
  @override
  @JsonKey()
  final String summary;
  @override
  final String? status;
  @override
  @JsonKey()
  final SnapdTaskProgress progress;
  @override
  final DateTime? readyTime;

  @override
  String toString() {
    return 'SnapdTask(id: $id, spawnTime: $spawnTime, kind: $kind, summary: $summary, status: $status, progress: $progress, readyTime: $readyTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnapdTaskImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.spawnTime, spawnTime) ||
                other.spawnTime == spawnTime) &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            (identical(other.readyTime, readyTime) ||
                other.readyTime == readyTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, spawnTime, kind, summary, status, progress, readyTime);

  /// Create a copy of SnapdTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SnapdTaskImplCopyWith<_$SnapdTaskImpl> get copyWith =>
      __$$SnapdTaskImplCopyWithImpl<_$SnapdTaskImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SnapdTaskImplToJson(
      this,
    );
  }
}

abstract class _SnapdTask implements SnapdTask {
  const factory _SnapdTask(
      {required final String id,
      final DateTime? spawnTime,
      final String? kind,
      final String summary,
      final String? status,
      final SnapdTaskProgress progress,
      final DateTime? readyTime}) = _$SnapdTaskImpl;

  factory _SnapdTask.fromJson(Map<String, dynamic> json) =
      _$SnapdTaskImpl.fromJson;

  @override
  String get id;
  @override
  DateTime? get spawnTime;
  @override
  String? get kind;
  @override
  String get summary;
  @override
  String? get status;
  @override
  SnapdTaskProgress get progress;
  @override
  DateTime? get readyTime;

  /// Create a copy of SnapdTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SnapdTaskImplCopyWith<_$SnapdTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SnapdTaskProgress _$SnapdTaskProgressFromJson(Map<String, dynamic> json) {
  return _SnapdTaskProgress.fromJson(json);
}

/// @nodoc
mixin _$SnapdTaskProgress {
  String get label => throw _privateConstructorUsedError;
  int get done => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  /// Serializes this SnapdTaskProgress to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SnapdTaskProgress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SnapdTaskProgressCopyWith<SnapdTaskProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnapdTaskProgressCopyWith<$Res> {
  factory $SnapdTaskProgressCopyWith(
          SnapdTaskProgress value, $Res Function(SnapdTaskProgress) then) =
      _$SnapdTaskProgressCopyWithImpl<$Res, SnapdTaskProgress>;
  @useResult
  $Res call({String label, int done, int total});
}

/// @nodoc
class _$SnapdTaskProgressCopyWithImpl<$Res, $Val extends SnapdTaskProgress>
    implements $SnapdTaskProgressCopyWith<$Res> {
  _$SnapdTaskProgressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SnapdTaskProgress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? done = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      done: null == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SnapdTaskProgressImplCopyWith<$Res>
    implements $SnapdTaskProgressCopyWith<$Res> {
  factory _$$SnapdTaskProgressImplCopyWith(_$SnapdTaskProgressImpl value,
          $Res Function(_$SnapdTaskProgressImpl) then) =
      __$$SnapdTaskProgressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, int done, int total});
}

/// @nodoc
class __$$SnapdTaskProgressImplCopyWithImpl<$Res>
    extends _$SnapdTaskProgressCopyWithImpl<$Res, _$SnapdTaskProgressImpl>
    implements _$$SnapdTaskProgressImplCopyWith<$Res> {
  __$$SnapdTaskProgressImplCopyWithImpl(_$SnapdTaskProgressImpl _value,
      $Res Function(_$SnapdTaskProgressImpl) _then)
      : super(_value, _then);

  /// Create a copy of SnapdTaskProgress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? done = null,
    Object? total = null,
  }) {
    return _then(_$SnapdTaskProgressImpl(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      done: null == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SnapdTaskProgressImpl implements _SnapdTaskProgress {
  const _$SnapdTaskProgressImpl(
      {this.label = '', this.done = 0, this.total = 0});

  factory _$SnapdTaskProgressImpl.fromJson(Map<String, dynamic> json) =>
      _$$SnapdTaskProgressImplFromJson(json);

  @override
  @JsonKey()
  final String label;
  @override
  @JsonKey()
  final int done;
  @override
  @JsonKey()
  final int total;

  @override
  String toString() {
    return 'SnapdTaskProgress(label: $label, done: $done, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnapdTaskProgressImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.done, done) || other.done == done) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, label, done, total);

  /// Create a copy of SnapdTaskProgress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SnapdTaskProgressImplCopyWith<_$SnapdTaskProgressImpl> get copyWith =>
      __$$SnapdTaskProgressImplCopyWithImpl<_$SnapdTaskProgressImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SnapdTaskProgressImplToJson(
      this,
    );
  }
}

abstract class _SnapdTaskProgress implements SnapdTaskProgress {
  const factory _SnapdTaskProgress(
      {final String label,
      final int done,
      final int total}) = _$SnapdTaskProgressImpl;

  factory _SnapdTaskProgress.fromJson(Map<String, dynamic> json) =
      _$SnapdTaskProgressImpl.fromJson;

  @override
  String get label;
  @override
  int get done;
  @override
  int get total;

  /// Create a copy of SnapdTaskProgress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SnapdTaskProgressImplCopyWith<_$SnapdTaskProgressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SnapdRule _$SnapdRuleFromJson(Map<String, dynamic> json) {
  return _SnapdRule.fromJson(json);
}

/// @nodoc
mixin _$SnapdRule {
  String get id => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  String get snap => throw _privateConstructorUsedError;
  String get interface => throw _privateConstructorUsedError;
  Map<String, dynamic> get constraints =>
      throw _privateConstructorUsedError; // Snapd 1.67 and earlier returned the outcome, lifespan and expiration fields
// at the top level rather than as part of `constraints`
  SnapdRequestOutcome? get outcome => throw _privateConstructorUsedError;
  SnapdRequestLifespan? get lifespan => throw _privateConstructorUsedError;
  DateTime? get expiration => throw _privateConstructorUsedError;

  /// Serializes this SnapdRule to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SnapdRule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SnapdRuleCopyWith<SnapdRule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnapdRuleCopyWith<$Res> {
  factory $SnapdRuleCopyWith(SnapdRule value, $Res Function(SnapdRule) then) =
      _$SnapdRuleCopyWithImpl<$Res, SnapdRule>;
  @useResult
  $Res call(
      {String id,
      DateTime timestamp,
      String snap,
      String interface,
      Map<String, dynamic> constraints,
      SnapdRequestOutcome? outcome,
      SnapdRequestLifespan? lifespan,
      DateTime? expiration});
}

/// @nodoc
class _$SnapdRuleCopyWithImpl<$Res, $Val extends SnapdRule>
    implements $SnapdRuleCopyWith<$Res> {
  _$SnapdRuleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SnapdRule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? timestamp = null,
    Object? snap = null,
    Object? interface = null,
    Object? constraints = null,
    Object? outcome = freezed,
    Object? lifespan = freezed,
    Object? expiration = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      snap: null == snap
          ? _value.snap
          : snap // ignore: cast_nullable_to_non_nullable
              as String,
      interface: null == interface
          ? _value.interface
          : interface // ignore: cast_nullable_to_non_nullable
              as String,
      constraints: null == constraints
          ? _value.constraints
          : constraints // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      outcome: freezed == outcome
          ? _value.outcome
          : outcome // ignore: cast_nullable_to_non_nullable
              as SnapdRequestOutcome?,
      lifespan: freezed == lifespan
          ? _value.lifespan
          : lifespan // ignore: cast_nullable_to_non_nullable
              as SnapdRequestLifespan?,
      expiration: freezed == expiration
          ? _value.expiration
          : expiration // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SnapdRuleImplCopyWith<$Res>
    implements $SnapdRuleCopyWith<$Res> {
  factory _$$SnapdRuleImplCopyWith(
          _$SnapdRuleImpl value, $Res Function(_$SnapdRuleImpl) then) =
      __$$SnapdRuleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime timestamp,
      String snap,
      String interface,
      Map<String, dynamic> constraints,
      SnapdRequestOutcome? outcome,
      SnapdRequestLifespan? lifespan,
      DateTime? expiration});
}

/// @nodoc
class __$$SnapdRuleImplCopyWithImpl<$Res>
    extends _$SnapdRuleCopyWithImpl<$Res, _$SnapdRuleImpl>
    implements _$$SnapdRuleImplCopyWith<$Res> {
  __$$SnapdRuleImplCopyWithImpl(
      _$SnapdRuleImpl _value, $Res Function(_$SnapdRuleImpl) _then)
      : super(_value, _then);

  /// Create a copy of SnapdRule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? timestamp = null,
    Object? snap = null,
    Object? interface = null,
    Object? constraints = null,
    Object? outcome = freezed,
    Object? lifespan = freezed,
    Object? expiration = freezed,
  }) {
    return _then(_$SnapdRuleImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      snap: null == snap
          ? _value.snap
          : snap // ignore: cast_nullable_to_non_nullable
              as String,
      interface: null == interface
          ? _value.interface
          : interface // ignore: cast_nullable_to_non_nullable
              as String,
      constraints: null == constraints
          ? _value._constraints
          : constraints // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      outcome: freezed == outcome
          ? _value.outcome
          : outcome // ignore: cast_nullable_to_non_nullable
              as SnapdRequestOutcome?,
      lifespan: freezed == lifespan
          ? _value.lifespan
          : lifespan // ignore: cast_nullable_to_non_nullable
              as SnapdRequestLifespan?,
      expiration: freezed == expiration
          ? _value.expiration
          : expiration // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SnapdRuleImpl implements _SnapdRule {
  const _$SnapdRuleImpl(
      {required this.id,
      required this.timestamp,
      required this.snap,
      required this.interface,
      required final Map<String, dynamic> constraints,
      this.outcome,
      this.lifespan,
      this.expiration})
      : _constraints = constraints;

  factory _$SnapdRuleImpl.fromJson(Map<String, dynamic> json) =>
      _$$SnapdRuleImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime timestamp;
  @override
  final String snap;
  @override
  final String interface;
  final Map<String, dynamic> _constraints;
  @override
  Map<String, dynamic> get constraints {
    if (_constraints is EqualUnmodifiableMapView) return _constraints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_constraints);
  }

// Snapd 1.67 and earlier returned the outcome, lifespan and expiration fields
// at the top level rather than as part of `constraints`
  @override
  final SnapdRequestOutcome? outcome;
  @override
  final SnapdRequestLifespan? lifespan;
  @override
  final DateTime? expiration;

  @override
  String toString() {
    return 'SnapdRule(id: $id, timestamp: $timestamp, snap: $snap, interface: $interface, constraints: $constraints, outcome: $outcome, lifespan: $lifespan, expiration: $expiration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnapdRuleImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.snap, snap) || other.snap == snap) &&
            (identical(other.interface, interface) ||
                other.interface == interface) &&
            const DeepCollectionEquality()
                .equals(other._constraints, _constraints) &&
            (identical(other.outcome, outcome) || other.outcome == outcome) &&
            (identical(other.lifespan, lifespan) ||
                other.lifespan == lifespan) &&
            (identical(other.expiration, expiration) ||
                other.expiration == expiration));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      timestamp,
      snap,
      interface,
      const DeepCollectionEquality().hash(_constraints),
      outcome,
      lifespan,
      expiration);

  /// Create a copy of SnapdRule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SnapdRuleImplCopyWith<_$SnapdRuleImpl> get copyWith =>
      __$$SnapdRuleImplCopyWithImpl<_$SnapdRuleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SnapdRuleImplToJson(
      this,
    );
  }
}

abstract class _SnapdRule implements SnapdRule {
  const factory _SnapdRule(
      {required final String id,
      required final DateTime timestamp,
      required final String snap,
      required final String interface,
      required final Map<String, dynamic> constraints,
      final SnapdRequestOutcome? outcome,
      final SnapdRequestLifespan? lifespan,
      final DateTime? expiration}) = _$SnapdRuleImpl;

  factory _SnapdRule.fromJson(Map<String, dynamic> json) =
      _$SnapdRuleImpl.fromJson;

  @override
  String get id;
  @override
  DateTime get timestamp;
  @override
  String get snap;
  @override
  String get interface;
  @override
  Map<String, dynamic>
      get constraints; // Snapd 1.67 and earlier returned the outcome, lifespan and expiration fields
// at the top level rather than as part of `constraints`
  @override
  SnapdRequestOutcome? get outcome;
  @override
  SnapdRequestLifespan? get lifespan;
  @override
  DateTime? get expiration;

  /// Create a copy of SnapdRule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SnapdRuleImplCopyWith<_$SnapdRuleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SnapdRuleMask _$SnapdRuleMaskFromJson(Map<String, dynamic> json) {
  return _SnapdRuleMask.fromJson(json);
}

/// @nodoc
mixin _$SnapdRuleMask {
  String get snap => throw _privateConstructorUsedError;
  String get interface => throw _privateConstructorUsedError;
  Map<String, dynamic> get constraints => throw _privateConstructorUsedError;

  /// Serializes this SnapdRuleMask to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SnapdRuleMask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SnapdRuleMaskCopyWith<SnapdRuleMask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnapdRuleMaskCopyWith<$Res> {
  factory $SnapdRuleMaskCopyWith(
          SnapdRuleMask value, $Res Function(SnapdRuleMask) then) =
      _$SnapdRuleMaskCopyWithImpl<$Res, SnapdRuleMask>;
  @useResult
  $Res call({String snap, String interface, Map<String, dynamic> constraints});
}

/// @nodoc
class _$SnapdRuleMaskCopyWithImpl<$Res, $Val extends SnapdRuleMask>
    implements $SnapdRuleMaskCopyWith<$Res> {
  _$SnapdRuleMaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SnapdRuleMask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? snap = null,
    Object? interface = null,
    Object? constraints = null,
  }) {
    return _then(_value.copyWith(
      snap: null == snap
          ? _value.snap
          : snap // ignore: cast_nullable_to_non_nullable
              as String,
      interface: null == interface
          ? _value.interface
          : interface // ignore: cast_nullable_to_non_nullable
              as String,
      constraints: null == constraints
          ? _value.constraints
          : constraints // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SnapdRuleMaskImplCopyWith<$Res>
    implements $SnapdRuleMaskCopyWith<$Res> {
  factory _$$SnapdRuleMaskImplCopyWith(
          _$SnapdRuleMaskImpl value, $Res Function(_$SnapdRuleMaskImpl) then) =
      __$$SnapdRuleMaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String snap, String interface, Map<String, dynamic> constraints});
}

/// @nodoc
class __$$SnapdRuleMaskImplCopyWithImpl<$Res>
    extends _$SnapdRuleMaskCopyWithImpl<$Res, _$SnapdRuleMaskImpl>
    implements _$$SnapdRuleMaskImplCopyWith<$Res> {
  __$$SnapdRuleMaskImplCopyWithImpl(
      _$SnapdRuleMaskImpl _value, $Res Function(_$SnapdRuleMaskImpl) _then)
      : super(_value, _then);

  /// Create a copy of SnapdRuleMask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? snap = null,
    Object? interface = null,
    Object? constraints = null,
  }) {
    return _then(_$SnapdRuleMaskImpl(
      snap: null == snap
          ? _value.snap
          : snap // ignore: cast_nullable_to_non_nullable
              as String,
      interface: null == interface
          ? _value.interface
          : interface // ignore: cast_nullable_to_non_nullable
              as String,
      constraints: null == constraints
          ? _value._constraints
          : constraints // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SnapdRuleMaskImpl implements _SnapdRuleMask {
  const _$SnapdRuleMaskImpl(
      {required this.snap,
      required this.interface,
      required final Map<String, dynamic> constraints})
      : _constraints = constraints;

  factory _$SnapdRuleMaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$SnapdRuleMaskImplFromJson(json);

  @override
  final String snap;
  @override
  final String interface;
  final Map<String, dynamic> _constraints;
  @override
  Map<String, dynamic> get constraints {
    if (_constraints is EqualUnmodifiableMapView) return _constraints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_constraints);
  }

  @override
  String toString() {
    return 'SnapdRuleMask(snap: $snap, interface: $interface, constraints: $constraints)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnapdRuleMaskImpl &&
            (identical(other.snap, snap) || other.snap == snap) &&
            (identical(other.interface, interface) ||
                other.interface == interface) &&
            const DeepCollectionEquality()
                .equals(other._constraints, _constraints));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, snap, interface,
      const DeepCollectionEquality().hash(_constraints));

  /// Create a copy of SnapdRuleMask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SnapdRuleMaskImplCopyWith<_$SnapdRuleMaskImpl> get copyWith =>
      __$$SnapdRuleMaskImplCopyWithImpl<_$SnapdRuleMaskImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SnapdRuleMaskImplToJson(
      this,
    );
  }
}

abstract class _SnapdRuleMask implements SnapdRuleMask {
  const factory _SnapdRuleMask(
      {required final String snap,
      required final String interface,
      required final Map<String, dynamic> constraints}) = _$SnapdRuleMaskImpl;

  factory _SnapdRuleMask.fromJson(Map<String, dynamic> json) =
      _$SnapdRuleMaskImpl.fromJson;

  @override
  String get snap;
  @override
  String get interface;
  @override
  Map<String, dynamic> get constraints;

  /// Create a copy of SnapdRuleMask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SnapdRuleMaskImplCopyWith<_$SnapdRuleMaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SnapdNotice _$SnapdNoticeFromJson(Map<String, dynamic> json) {
  return _SnapdNotice.fromJson(json);
}

/// @nodoc
mixin _$SnapdNotice {
  String get id => throw _privateConstructorUsedError;
  SnapdNoticeType get type => throw _privateConstructorUsedError;
  String get key => throw _privateConstructorUsedError;
  @_SnapdDateTimeConverter()
  DateTime get firstOccured => throw _privateConstructorUsedError;
  @_SnapdDateTimeConverter()
  DateTime get lastOccured => throw _privateConstructorUsedError;
  @_SnapdDateTimeConverter()
  DateTime get lastRepeated => throw _privateConstructorUsedError;
  int get occurrences => throw _privateConstructorUsedError;
  String get expireAfter => throw _privateConstructorUsedError;
  int? get userId => throw _privateConstructorUsedError;
  Map<String, String>? get lastData => throw _privateConstructorUsedError;

  /// Serializes this SnapdNotice to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SnapdNotice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SnapdNoticeCopyWith<SnapdNotice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnapdNoticeCopyWith<$Res> {
  factory $SnapdNoticeCopyWith(
          SnapdNotice value, $Res Function(SnapdNotice) then) =
      _$SnapdNoticeCopyWithImpl<$Res, SnapdNotice>;
  @useResult
  $Res call(
      {String id,
      SnapdNoticeType type,
      String key,
      @_SnapdDateTimeConverter() DateTime firstOccured,
      @_SnapdDateTimeConverter() DateTime lastOccured,
      @_SnapdDateTimeConverter() DateTime lastRepeated,
      int occurrences,
      String expireAfter,
      int? userId,
      Map<String, String>? lastData});
}

/// @nodoc
class _$SnapdNoticeCopyWithImpl<$Res, $Val extends SnapdNotice>
    implements $SnapdNoticeCopyWith<$Res> {
  _$SnapdNoticeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SnapdNotice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? key = null,
    Object? firstOccured = null,
    Object? lastOccured = null,
    Object? lastRepeated = null,
    Object? occurrences = null,
    Object? expireAfter = null,
    Object? userId = freezed,
    Object? lastData = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SnapdNoticeType,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      firstOccured: null == firstOccured
          ? _value.firstOccured
          : firstOccured // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastOccured: null == lastOccured
          ? _value.lastOccured
          : lastOccured // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastRepeated: null == lastRepeated
          ? _value.lastRepeated
          : lastRepeated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      occurrences: null == occurrences
          ? _value.occurrences
          : occurrences // ignore: cast_nullable_to_non_nullable
              as int,
      expireAfter: null == expireAfter
          ? _value.expireAfter
          : expireAfter // ignore: cast_nullable_to_non_nullable
              as String,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      lastData: freezed == lastData
          ? _value.lastData
          : lastData // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SnapdNoticeImplCopyWith<$Res>
    implements $SnapdNoticeCopyWith<$Res> {
  factory _$$SnapdNoticeImplCopyWith(
          _$SnapdNoticeImpl value, $Res Function(_$SnapdNoticeImpl) then) =
      __$$SnapdNoticeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      SnapdNoticeType type,
      String key,
      @_SnapdDateTimeConverter() DateTime firstOccured,
      @_SnapdDateTimeConverter() DateTime lastOccured,
      @_SnapdDateTimeConverter() DateTime lastRepeated,
      int occurrences,
      String expireAfter,
      int? userId,
      Map<String, String>? lastData});
}

/// @nodoc
class __$$SnapdNoticeImplCopyWithImpl<$Res>
    extends _$SnapdNoticeCopyWithImpl<$Res, _$SnapdNoticeImpl>
    implements _$$SnapdNoticeImplCopyWith<$Res> {
  __$$SnapdNoticeImplCopyWithImpl(
      _$SnapdNoticeImpl _value, $Res Function(_$SnapdNoticeImpl) _then)
      : super(_value, _then);

  /// Create a copy of SnapdNotice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? key = null,
    Object? firstOccured = null,
    Object? lastOccured = null,
    Object? lastRepeated = null,
    Object? occurrences = null,
    Object? expireAfter = null,
    Object? userId = freezed,
    Object? lastData = freezed,
  }) {
    return _then(_$SnapdNoticeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SnapdNoticeType,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      firstOccured: null == firstOccured
          ? _value.firstOccured
          : firstOccured // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastOccured: null == lastOccured
          ? _value.lastOccured
          : lastOccured // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastRepeated: null == lastRepeated
          ? _value.lastRepeated
          : lastRepeated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      occurrences: null == occurrences
          ? _value.occurrences
          : occurrences // ignore: cast_nullable_to_non_nullable
              as int,
      expireAfter: null == expireAfter
          ? _value.expireAfter
          : expireAfter // ignore: cast_nullable_to_non_nullable
              as String,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      lastData: freezed == lastData
          ? _value._lastData
          : lastData // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SnapdNoticeImpl implements _SnapdNotice {
  const _$SnapdNoticeImpl(
      {required this.id,
      required this.type,
      required this.key,
      @_SnapdDateTimeConverter() required this.firstOccured,
      @_SnapdDateTimeConverter() required this.lastOccured,
      @_SnapdDateTimeConverter() required this.lastRepeated,
      required this.occurrences,
      required this.expireAfter,
      this.userId,
      final Map<String, String>? lastData})
      : _lastData = lastData;

  factory _$SnapdNoticeImpl.fromJson(Map<String, dynamic> json) =>
      _$$SnapdNoticeImplFromJson(json);

  @override
  final String id;
  @override
  final SnapdNoticeType type;
  @override
  final String key;
  @override
  @_SnapdDateTimeConverter()
  final DateTime firstOccured;
  @override
  @_SnapdDateTimeConverter()
  final DateTime lastOccured;
  @override
  @_SnapdDateTimeConverter()
  final DateTime lastRepeated;
  @override
  final int occurrences;
  @override
  final String expireAfter;
  @override
  final int? userId;
  final Map<String, String>? _lastData;
  @override
  Map<String, String>? get lastData {
    final value = _lastData;
    if (value == null) return null;
    if (_lastData is EqualUnmodifiableMapView) return _lastData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'SnapdNotice(id: $id, type: $type, key: $key, firstOccured: $firstOccured, lastOccured: $lastOccured, lastRepeated: $lastRepeated, occurrences: $occurrences, expireAfter: $expireAfter, userId: $userId, lastData: $lastData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnapdNoticeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.firstOccured, firstOccured) ||
                other.firstOccured == firstOccured) &&
            (identical(other.lastOccured, lastOccured) ||
                other.lastOccured == lastOccured) &&
            (identical(other.lastRepeated, lastRepeated) ||
                other.lastRepeated == lastRepeated) &&
            (identical(other.occurrences, occurrences) ||
                other.occurrences == occurrences) &&
            (identical(other.expireAfter, expireAfter) ||
                other.expireAfter == expireAfter) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality().equals(other._lastData, _lastData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      type,
      key,
      firstOccured,
      lastOccured,
      lastRepeated,
      occurrences,
      expireAfter,
      userId,
      const DeepCollectionEquality().hash(_lastData));

  /// Create a copy of SnapdNotice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SnapdNoticeImplCopyWith<_$SnapdNoticeImpl> get copyWith =>
      __$$SnapdNoticeImplCopyWithImpl<_$SnapdNoticeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SnapdNoticeImplToJson(
      this,
    );
  }
}

abstract class _SnapdNotice implements SnapdNotice {
  const factory _SnapdNotice(
      {required final String id,
      required final SnapdNoticeType type,
      required final String key,
      @_SnapdDateTimeConverter() required final DateTime firstOccured,
      @_SnapdDateTimeConverter() required final DateTime lastOccured,
      @_SnapdDateTimeConverter() required final DateTime lastRepeated,
      required final int occurrences,
      required final String expireAfter,
      final int? userId,
      final Map<String, String>? lastData}) = _$SnapdNoticeImpl;

  factory _SnapdNotice.fromJson(Map<String, dynamic> json) =
      _$SnapdNoticeImpl.fromJson;

  @override
  String get id;
  @override
  SnapdNoticeType get type;
  @override
  String get key;
  @override
  @_SnapdDateTimeConverter()
  DateTime get firstOccured;
  @override
  @_SnapdDateTimeConverter()
  DateTime get lastOccured;
  @override
  @_SnapdDateTimeConverter()
  DateTime get lastRepeated;
  @override
  int get occurrences;
  @override
  String get expireAfter;
  @override
  int? get userId;
  @override
  Map<String, String>? get lastData;

  /// Create a copy of SnapdNotice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SnapdNoticeImplCopyWith<_$SnapdNoticeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SnapdGenerateRecoveryKeyResponse _$SnapdGenerateRecoveryKeyResponseFromJson(
    Map<String, dynamic> json) {
  return _SnapdGenerateRecoveryKeyResponse.fromJson(json);
}

/// @nodoc
mixin _$SnapdGenerateRecoveryKeyResponse {
  String get recoveryKey => throw _privateConstructorUsedError;
  String get opaqueId => throw _privateConstructorUsedError;

  /// Serializes this SnapdGenerateRecoveryKeyResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SnapdGenerateRecoveryKeyResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SnapdGenerateRecoveryKeyResponseCopyWith<SnapdGenerateRecoveryKeyResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnapdGenerateRecoveryKeyResponseCopyWith<$Res> {
  factory $SnapdGenerateRecoveryKeyResponseCopyWith(
          SnapdGenerateRecoveryKeyResponse value,
          $Res Function(SnapdGenerateRecoveryKeyResponse) then) =
      _$SnapdGenerateRecoveryKeyResponseCopyWithImpl<$Res,
          SnapdGenerateRecoveryKeyResponse>;
  @useResult
  $Res call({String recoveryKey, String opaqueId});
}

/// @nodoc
class _$SnapdGenerateRecoveryKeyResponseCopyWithImpl<$Res,
        $Val extends SnapdGenerateRecoveryKeyResponse>
    implements $SnapdGenerateRecoveryKeyResponseCopyWith<$Res> {
  _$SnapdGenerateRecoveryKeyResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SnapdGenerateRecoveryKeyResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recoveryKey = null,
    Object? opaqueId = null,
  }) {
    return _then(_value.copyWith(
      recoveryKey: null == recoveryKey
          ? _value.recoveryKey
          : recoveryKey // ignore: cast_nullable_to_non_nullable
              as String,
      opaqueId: null == opaqueId
          ? _value.opaqueId
          : opaqueId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SnapdGenerateRecoveryKeyResponseImplCopyWith<$Res>
    implements $SnapdGenerateRecoveryKeyResponseCopyWith<$Res> {
  factory _$$SnapdGenerateRecoveryKeyResponseImplCopyWith(
          _$SnapdGenerateRecoveryKeyResponseImpl value,
          $Res Function(_$SnapdGenerateRecoveryKeyResponseImpl) then) =
      __$$SnapdGenerateRecoveryKeyResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String recoveryKey, String opaqueId});
}

/// @nodoc
class __$$SnapdGenerateRecoveryKeyResponseImplCopyWithImpl<$Res>
    extends _$SnapdGenerateRecoveryKeyResponseCopyWithImpl<$Res,
        _$SnapdGenerateRecoveryKeyResponseImpl>
    implements _$$SnapdGenerateRecoveryKeyResponseImplCopyWith<$Res> {
  __$$SnapdGenerateRecoveryKeyResponseImplCopyWithImpl(
      _$SnapdGenerateRecoveryKeyResponseImpl _value,
      $Res Function(_$SnapdGenerateRecoveryKeyResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SnapdGenerateRecoveryKeyResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recoveryKey = null,
    Object? opaqueId = null,
  }) {
    return _then(_$SnapdGenerateRecoveryKeyResponseImpl(
      recoveryKey: null == recoveryKey
          ? _value.recoveryKey
          : recoveryKey // ignore: cast_nullable_to_non_nullable
              as String,
      opaqueId: null == opaqueId
          ? _value.opaqueId
          : opaqueId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SnapdGenerateRecoveryKeyResponseImpl
    implements _SnapdGenerateRecoveryKeyResponse {
  const _$SnapdGenerateRecoveryKeyResponseImpl(
      {required this.recoveryKey, required this.opaqueId});

  factory _$SnapdGenerateRecoveryKeyResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SnapdGenerateRecoveryKeyResponseImplFromJson(json);

  @override
  final String recoveryKey;
  @override
  final String opaqueId;

  @override
  String toString() {
    return 'SnapdGenerateRecoveryKeyResponse(recoveryKey: $recoveryKey, opaqueId: $opaqueId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnapdGenerateRecoveryKeyResponseImpl &&
            (identical(other.recoveryKey, recoveryKey) ||
                other.recoveryKey == recoveryKey) &&
            (identical(other.opaqueId, opaqueId) ||
                other.opaqueId == opaqueId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, recoveryKey, opaqueId);

  /// Create a copy of SnapdGenerateRecoveryKeyResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SnapdGenerateRecoveryKeyResponseImplCopyWith<
          _$SnapdGenerateRecoveryKeyResponseImpl>
      get copyWith => __$$SnapdGenerateRecoveryKeyResponseImplCopyWithImpl<
          _$SnapdGenerateRecoveryKeyResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SnapdGenerateRecoveryKeyResponseImplToJson(
      this,
    );
  }
}

abstract class _SnapdGenerateRecoveryKeyResponse
    implements SnapdGenerateRecoveryKeyResponse {
  const factory _SnapdGenerateRecoveryKeyResponse(
      {required final String recoveryKey,
      required final String opaqueId}) = _$SnapdGenerateRecoveryKeyResponseImpl;

  factory _SnapdGenerateRecoveryKeyResponse.fromJson(
          Map<String, dynamic> json) =
      _$SnapdGenerateRecoveryKeyResponseImpl.fromJson;

  @override
  String get recoveryKey;
  @override
  String get opaqueId;

  /// Create a copy of SnapdGenerateRecoveryKeyResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SnapdGenerateRecoveryKeyResponseImplCopyWith<
          _$SnapdGenerateRecoveryKeyResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SnapdSystemVolume _$SnapdSystemVolumeFromJson(Map<String, dynamic> json) {
  return _SnapdSystemVolume.fromJson(json);
}

/// @nodoc
mixin _$SnapdSystemVolume {
  String get volumeName => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get encrypted => throw _privateConstructorUsedError;
  List<SnapdSystemVolumeKeySlot> get keyslots =>
      throw _privateConstructorUsedError;

  /// Serializes this SnapdSystemVolume to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SnapdSystemVolume
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SnapdSystemVolumeCopyWith<SnapdSystemVolume> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnapdSystemVolumeCopyWith<$Res> {
  factory $SnapdSystemVolumeCopyWith(
          SnapdSystemVolume value, $Res Function(SnapdSystemVolume) then) =
      _$SnapdSystemVolumeCopyWithImpl<$Res, SnapdSystemVolume>;
  @useResult
  $Res call(
      {String volumeName,
      String name,
      bool encrypted,
      List<SnapdSystemVolumeKeySlot> keyslots});
}

/// @nodoc
class _$SnapdSystemVolumeCopyWithImpl<$Res, $Val extends SnapdSystemVolume>
    implements $SnapdSystemVolumeCopyWith<$Res> {
  _$SnapdSystemVolumeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SnapdSystemVolume
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? volumeName = null,
    Object? name = null,
    Object? encrypted = null,
    Object? keyslots = null,
  }) {
    return _then(_value.copyWith(
      volumeName: null == volumeName
          ? _value.volumeName
          : volumeName // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      encrypted: null == encrypted
          ? _value.encrypted
          : encrypted // ignore: cast_nullable_to_non_nullable
              as bool,
      keyslots: null == keyslots
          ? _value.keyslots
          : keyslots // ignore: cast_nullable_to_non_nullable
              as List<SnapdSystemVolumeKeySlot>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SnapdSystemVolumeImplCopyWith<$Res>
    implements $SnapdSystemVolumeCopyWith<$Res> {
  factory _$$SnapdSystemVolumeImplCopyWith(_$SnapdSystemVolumeImpl value,
          $Res Function(_$SnapdSystemVolumeImpl) then) =
      __$$SnapdSystemVolumeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String volumeName,
      String name,
      bool encrypted,
      List<SnapdSystemVolumeKeySlot> keyslots});
}

/// @nodoc
class __$$SnapdSystemVolumeImplCopyWithImpl<$Res>
    extends _$SnapdSystemVolumeCopyWithImpl<$Res, _$SnapdSystemVolumeImpl>
    implements _$$SnapdSystemVolumeImplCopyWith<$Res> {
  __$$SnapdSystemVolumeImplCopyWithImpl(_$SnapdSystemVolumeImpl _value,
      $Res Function(_$SnapdSystemVolumeImpl) _then)
      : super(_value, _then);

  /// Create a copy of SnapdSystemVolume
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? volumeName = null,
    Object? name = null,
    Object? encrypted = null,
    Object? keyslots = null,
  }) {
    return _then(_$SnapdSystemVolumeImpl(
      volumeName: null == volumeName
          ? _value.volumeName
          : volumeName // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      encrypted: null == encrypted
          ? _value.encrypted
          : encrypted // ignore: cast_nullable_to_non_nullable
              as bool,
      keyslots: null == keyslots
          ? _value._keyslots
          : keyslots // ignore: cast_nullable_to_non_nullable
              as List<SnapdSystemVolumeKeySlot>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SnapdSystemVolumeImpl implements _SnapdSystemVolume {
  const _$SnapdSystemVolumeImpl(
      {required this.volumeName,
      required this.name,
      required this.encrypted,
      final List<SnapdSystemVolumeKeySlot> keyslots = const []})
      : _keyslots = keyslots;

  factory _$SnapdSystemVolumeImpl.fromJson(Map<String, dynamic> json) =>
      _$$SnapdSystemVolumeImplFromJson(json);

  @override
  final String volumeName;
  @override
  final String name;
  @override
  final bool encrypted;
  final List<SnapdSystemVolumeKeySlot> _keyslots;
  @override
  @JsonKey()
  List<SnapdSystemVolumeKeySlot> get keyslots {
    if (_keyslots is EqualUnmodifiableListView) return _keyslots;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_keyslots);
  }

  @override
  String toString() {
    return 'SnapdSystemVolume(volumeName: $volumeName, name: $name, encrypted: $encrypted, keyslots: $keyslots)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnapdSystemVolumeImpl &&
            (identical(other.volumeName, volumeName) ||
                other.volumeName == volumeName) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.encrypted, encrypted) ||
                other.encrypted == encrypted) &&
            const DeepCollectionEquality().equals(other._keyslots, _keyslots));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, volumeName, name, encrypted,
      const DeepCollectionEquality().hash(_keyslots));

  /// Create a copy of SnapdSystemVolume
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SnapdSystemVolumeImplCopyWith<_$SnapdSystemVolumeImpl> get copyWith =>
      __$$SnapdSystemVolumeImplCopyWithImpl<_$SnapdSystemVolumeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SnapdSystemVolumeImplToJson(
      this,
    );
  }
}

abstract class _SnapdSystemVolume implements SnapdSystemVolume {
  const factory _SnapdSystemVolume(
      {required final String volumeName,
      required final String name,
      required final bool encrypted,
      final List<SnapdSystemVolumeKeySlot> keyslots}) = _$SnapdSystemVolumeImpl;

  factory _SnapdSystemVolume.fromJson(Map<String, dynamic> json) =
      _$SnapdSystemVolumeImpl.fromJson;

  @override
  String get volumeName;
  @override
  String get name;
  @override
  bool get encrypted;
  @override
  List<SnapdSystemVolumeKeySlot> get keyslots;

  /// Create a copy of SnapdSystemVolume
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SnapdSystemVolumeImplCopyWith<_$SnapdSystemVolumeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SnapdSystemVolumeTargetKeySlot _$SnapdSystemVolumeTargetKeySlotFromJson(
    Map<String, dynamic> json) {
  return _SnapdSystemVolumeTargetKeySlot.fromJson(json);
}

/// @nodoc
mixin _$SnapdSystemVolumeTargetKeySlot {
  @JsonKey(name: 'container-role')
  String get containerRole => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this SnapdSystemVolumeTargetKeySlot to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SnapdSystemVolumeTargetKeySlot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SnapdSystemVolumeTargetKeySlotCopyWith<SnapdSystemVolumeTargetKeySlot>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnapdSystemVolumeTargetKeySlotCopyWith<$Res> {
  factory $SnapdSystemVolumeTargetKeySlotCopyWith(
          SnapdSystemVolumeTargetKeySlot value,
          $Res Function(SnapdSystemVolumeTargetKeySlot) then) =
      _$SnapdSystemVolumeTargetKeySlotCopyWithImpl<$Res,
          SnapdSystemVolumeTargetKeySlot>;
  @useResult
  $Res call(
      {@JsonKey(name: 'container-role') String containerRole, String name});
}

/// @nodoc
class _$SnapdSystemVolumeTargetKeySlotCopyWithImpl<$Res,
        $Val extends SnapdSystemVolumeTargetKeySlot>
    implements $SnapdSystemVolumeTargetKeySlotCopyWith<$Res> {
  _$SnapdSystemVolumeTargetKeySlotCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SnapdSystemVolumeTargetKeySlot
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? containerRole = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      containerRole: null == containerRole
          ? _value.containerRole
          : containerRole // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SnapdSystemVolumeTargetKeySlotImplCopyWith<$Res>
    implements $SnapdSystemVolumeTargetKeySlotCopyWith<$Res> {
  factory _$$SnapdSystemVolumeTargetKeySlotImplCopyWith(
          _$SnapdSystemVolumeTargetKeySlotImpl value,
          $Res Function(_$SnapdSystemVolumeTargetKeySlotImpl) then) =
      __$$SnapdSystemVolumeTargetKeySlotImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'container-role') String containerRole, String name});
}

/// @nodoc
class __$$SnapdSystemVolumeTargetKeySlotImplCopyWithImpl<$Res>
    extends _$SnapdSystemVolumeTargetKeySlotCopyWithImpl<$Res,
        _$SnapdSystemVolumeTargetKeySlotImpl>
    implements _$$SnapdSystemVolumeTargetKeySlotImplCopyWith<$Res> {
  __$$SnapdSystemVolumeTargetKeySlotImplCopyWithImpl(
      _$SnapdSystemVolumeTargetKeySlotImpl _value,
      $Res Function(_$SnapdSystemVolumeTargetKeySlotImpl) _then)
      : super(_value, _then);

  /// Create a copy of SnapdSystemVolumeTargetKeySlot
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? containerRole = null,
    Object? name = null,
  }) {
    return _then(_$SnapdSystemVolumeTargetKeySlotImpl(
      containerRole: null == containerRole
          ? _value.containerRole
          : containerRole // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SnapdSystemVolumeTargetKeySlotImpl
    implements _SnapdSystemVolumeTargetKeySlot {
  const _$SnapdSystemVolumeTargetKeySlotImpl(
      {@JsonKey(name: 'container-role') required this.containerRole,
      required this.name});

  factory _$SnapdSystemVolumeTargetKeySlotImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SnapdSystemVolumeTargetKeySlotImplFromJson(json);

  @override
  @JsonKey(name: 'container-role')
  final String containerRole;
  @override
  final String name;

  @override
  String toString() {
    return 'SnapdSystemVolumeTargetKeySlot(containerRole: $containerRole, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnapdSystemVolumeTargetKeySlotImpl &&
            (identical(other.containerRole, containerRole) ||
                other.containerRole == containerRole) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, containerRole, name);

  /// Create a copy of SnapdSystemVolumeTargetKeySlot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SnapdSystemVolumeTargetKeySlotImplCopyWith<
          _$SnapdSystemVolumeTargetKeySlotImpl>
      get copyWith => __$$SnapdSystemVolumeTargetKeySlotImplCopyWithImpl<
          _$SnapdSystemVolumeTargetKeySlotImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SnapdSystemVolumeTargetKeySlotImplToJson(
      this,
    );
  }
}

abstract class _SnapdSystemVolumeTargetKeySlot
    implements SnapdSystemVolumeTargetKeySlot {
  const factory _SnapdSystemVolumeTargetKeySlot(
      {@JsonKey(name: 'container-role') required final String containerRole,
      required final String name}) = _$SnapdSystemVolumeTargetKeySlotImpl;

  factory _SnapdSystemVolumeTargetKeySlot.fromJson(Map<String, dynamic> json) =
      _$SnapdSystemVolumeTargetKeySlotImpl.fromJson;

  @override
  @JsonKey(name: 'container-role')
  String get containerRole;
  @override
  String get name;

  /// Create a copy of SnapdSystemVolumeTargetKeySlot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SnapdSystemVolumeTargetKeySlotImplCopyWith<
          _$SnapdSystemVolumeTargetKeySlotImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SnapdSystemVolumeKeySlot _$SnapdSystemVolumeKeySlotFromJson(
    Map<String, dynamic> json) {
  return _SnapdSystemVolumeKeySlot.fromJson(json);
}

/// @nodoc
mixin _$SnapdSystemVolumeKeySlot {
  /// The key slot name, used to identify the key slot.
  String get name => throw _privateConstructorUsedError;
  SnapdSystemVolumeKeySlotType get type => throw _privateConstructorUsedError;
  List<String>? get roles =>
      throw _privateConstructorUsedError; // only for platform keys
  String? get platformName =>
      throw _privateConstructorUsedError; // only for platform keys
  SnapdSystemVolumeAuthMode? get authMode => throw _privateConstructorUsedError;

  /// Serializes this SnapdSystemVolumeKeySlot to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SnapdSystemVolumeKeySlot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SnapdSystemVolumeKeySlotCopyWith<SnapdSystemVolumeKeySlot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnapdSystemVolumeKeySlotCopyWith<$Res> {
  factory $SnapdSystemVolumeKeySlotCopyWith(SnapdSystemVolumeKeySlot value,
          $Res Function(SnapdSystemVolumeKeySlot) then) =
      _$SnapdSystemVolumeKeySlotCopyWithImpl<$Res, SnapdSystemVolumeKeySlot>;
  @useResult
  $Res call(
      {String name,
      SnapdSystemVolumeKeySlotType type,
      List<String>? roles,
      String? platformName,
      SnapdSystemVolumeAuthMode? authMode});
}

/// @nodoc
class _$SnapdSystemVolumeKeySlotCopyWithImpl<$Res,
        $Val extends SnapdSystemVolumeKeySlot>
    implements $SnapdSystemVolumeKeySlotCopyWith<$Res> {
  _$SnapdSystemVolumeKeySlotCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SnapdSystemVolumeKeySlot
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? roles = freezed,
    Object? platformName = freezed,
    Object? authMode = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SnapdSystemVolumeKeySlotType,
      roles: freezed == roles
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      platformName: freezed == platformName
          ? _value.platformName
          : platformName // ignore: cast_nullable_to_non_nullable
              as String?,
      authMode: freezed == authMode
          ? _value.authMode
          : authMode // ignore: cast_nullable_to_non_nullable
              as SnapdSystemVolumeAuthMode?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SnapdSystemVolumeKeySlotImplCopyWith<$Res>
    implements $SnapdSystemVolumeKeySlotCopyWith<$Res> {
  factory _$$SnapdSystemVolumeKeySlotImplCopyWith(
          _$SnapdSystemVolumeKeySlotImpl value,
          $Res Function(_$SnapdSystemVolumeKeySlotImpl) then) =
      __$$SnapdSystemVolumeKeySlotImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      SnapdSystemVolumeKeySlotType type,
      List<String>? roles,
      String? platformName,
      SnapdSystemVolumeAuthMode? authMode});
}

/// @nodoc
class __$$SnapdSystemVolumeKeySlotImplCopyWithImpl<$Res>
    extends _$SnapdSystemVolumeKeySlotCopyWithImpl<$Res,
        _$SnapdSystemVolumeKeySlotImpl>
    implements _$$SnapdSystemVolumeKeySlotImplCopyWith<$Res> {
  __$$SnapdSystemVolumeKeySlotImplCopyWithImpl(
      _$SnapdSystemVolumeKeySlotImpl _value,
      $Res Function(_$SnapdSystemVolumeKeySlotImpl) _then)
      : super(_value, _then);

  /// Create a copy of SnapdSystemVolumeKeySlot
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? roles = freezed,
    Object? platformName = freezed,
    Object? authMode = freezed,
  }) {
    return _then(_$SnapdSystemVolumeKeySlotImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SnapdSystemVolumeKeySlotType,
      roles: freezed == roles
          ? _value._roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      platformName: freezed == platformName
          ? _value.platformName
          : platformName // ignore: cast_nullable_to_non_nullable
              as String?,
      authMode: freezed == authMode
          ? _value.authMode
          : authMode // ignore: cast_nullable_to_non_nullable
              as SnapdSystemVolumeAuthMode?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SnapdSystemVolumeKeySlotImpl implements _SnapdSystemVolumeKeySlot {
  const _$SnapdSystemVolumeKeySlotImpl(
      {required this.name,
      required this.type,
      final List<String>? roles,
      this.platformName,
      this.authMode})
      : _roles = roles;

  factory _$SnapdSystemVolumeKeySlotImpl.fromJson(Map<String, dynamic> json) =>
      _$$SnapdSystemVolumeKeySlotImplFromJson(json);

  /// The key slot name, used to identify the key slot.
  @override
  final String name;
  @override
  final SnapdSystemVolumeKeySlotType type;
  final List<String>? _roles;
  @override
  List<String>? get roles {
    final value = _roles;
    if (value == null) return null;
    if (_roles is EqualUnmodifiableListView) return _roles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// only for platform keys
  @override
  final String? platformName;
// only for platform keys
  @override
  final SnapdSystemVolumeAuthMode? authMode;

  @override
  String toString() {
    return 'SnapdSystemVolumeKeySlot(name: $name, type: $type, roles: $roles, platformName: $platformName, authMode: $authMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnapdSystemVolumeKeySlotImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._roles, _roles) &&
            (identical(other.platformName, platformName) ||
                other.platformName == platformName) &&
            (identical(other.authMode, authMode) ||
                other.authMode == authMode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, type,
      const DeepCollectionEquality().hash(_roles), platformName, authMode);

  /// Create a copy of SnapdSystemVolumeKeySlot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SnapdSystemVolumeKeySlotImplCopyWith<_$SnapdSystemVolumeKeySlotImpl>
      get copyWith => __$$SnapdSystemVolumeKeySlotImplCopyWithImpl<
          _$SnapdSystemVolumeKeySlotImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SnapdSystemVolumeKeySlotImplToJson(
      this,
    );
  }
}

abstract class _SnapdSystemVolumeKeySlot implements SnapdSystemVolumeKeySlot {
  const factory _SnapdSystemVolumeKeySlot(
          {required final String name,
          required final SnapdSystemVolumeKeySlotType type,
          final List<String>? roles,
          final String? platformName,
          final SnapdSystemVolumeAuthMode? authMode}) =
      _$SnapdSystemVolumeKeySlotImpl;

  factory _SnapdSystemVolumeKeySlot.fromJson(Map<String, dynamic> json) =
      _$SnapdSystemVolumeKeySlotImpl.fromJson;

  /// The key slot name, used to identify the key slot.
  @override
  String get name;
  @override
  SnapdSystemVolumeKeySlotType get type;
  @override
  List<String>? get roles; // only for platform keys
  @override
  String? get platformName; // only for platform keys
  @override
  SnapdSystemVolumeAuthMode? get authMode;

  /// Create a copy of SnapdSystemVolumeKeySlot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SnapdSystemVolumeKeySlotImplCopyWith<_$SnapdSystemVolumeKeySlotImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SnapdSystemVolumesResponse _$SnapdSystemVolumesResponseFromJson(
    Map<String, dynamic> json) {
  return _SnapdSystemVolumesResponse.fromJson(json);
}

/// @nodoc
mixin _$SnapdSystemVolumesResponse {
  Map<String, SnapdSystemVolume> get byContainerRole =>
      throw _privateConstructorUsedError;

  /// Serializes this SnapdSystemVolumesResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SnapdSystemVolumesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SnapdSystemVolumesResponseCopyWith<SnapdSystemVolumesResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnapdSystemVolumesResponseCopyWith<$Res> {
  factory $SnapdSystemVolumesResponseCopyWith(SnapdSystemVolumesResponse value,
          $Res Function(SnapdSystemVolumesResponse) then) =
      _$SnapdSystemVolumesResponseCopyWithImpl<$Res,
          SnapdSystemVolumesResponse>;
  @useResult
  $Res call({Map<String, SnapdSystemVolume> byContainerRole});
}

/// @nodoc
class _$SnapdSystemVolumesResponseCopyWithImpl<$Res,
        $Val extends SnapdSystemVolumesResponse>
    implements $SnapdSystemVolumesResponseCopyWith<$Res> {
  _$SnapdSystemVolumesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SnapdSystemVolumesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? byContainerRole = null,
  }) {
    return _then(_value.copyWith(
      byContainerRole: null == byContainerRole
          ? _value.byContainerRole
          : byContainerRole // ignore: cast_nullable_to_non_nullable
              as Map<String, SnapdSystemVolume>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SnapdSystemVolumesResponseImplCopyWith<$Res>
    implements $SnapdSystemVolumesResponseCopyWith<$Res> {
  factory _$$SnapdSystemVolumesResponseImplCopyWith(
          _$SnapdSystemVolumesResponseImpl value,
          $Res Function(_$SnapdSystemVolumesResponseImpl) then) =
      __$$SnapdSystemVolumesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, SnapdSystemVolume> byContainerRole});
}

/// @nodoc
class __$$SnapdSystemVolumesResponseImplCopyWithImpl<$Res>
    extends _$SnapdSystemVolumesResponseCopyWithImpl<$Res,
        _$SnapdSystemVolumesResponseImpl>
    implements _$$SnapdSystemVolumesResponseImplCopyWith<$Res> {
  __$$SnapdSystemVolumesResponseImplCopyWithImpl(
      _$SnapdSystemVolumesResponseImpl _value,
      $Res Function(_$SnapdSystemVolumesResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SnapdSystemVolumesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? byContainerRole = null,
  }) {
    return _then(_$SnapdSystemVolumesResponseImpl(
      byContainerRole: null == byContainerRole
          ? _value._byContainerRole
          : byContainerRole // ignore: cast_nullable_to_non_nullable
              as Map<String, SnapdSystemVolume>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SnapdSystemVolumesResponseImpl implements _SnapdSystemVolumesResponse {
  const _$SnapdSystemVolumesResponseImpl(
      {final Map<String, SnapdSystemVolume> byContainerRole = const {}})
      : _byContainerRole = byContainerRole;

  factory _$SnapdSystemVolumesResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SnapdSystemVolumesResponseImplFromJson(json);

  final Map<String, SnapdSystemVolume> _byContainerRole;
  @override
  @JsonKey()
  Map<String, SnapdSystemVolume> get byContainerRole {
    if (_byContainerRole is EqualUnmodifiableMapView) return _byContainerRole;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_byContainerRole);
  }

  @override
  String toString() {
    return 'SnapdSystemVolumesResponse(byContainerRole: $byContainerRole)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnapdSystemVolumesResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._byContainerRole, _byContainerRole));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_byContainerRole));

  /// Create a copy of SnapdSystemVolumesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SnapdSystemVolumesResponseImplCopyWith<_$SnapdSystemVolumesResponseImpl>
      get copyWith => __$$SnapdSystemVolumesResponseImplCopyWithImpl<
          _$SnapdSystemVolumesResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SnapdSystemVolumesResponseImplToJson(
      this,
    );
  }
}

abstract class _SnapdSystemVolumesResponse
    implements SnapdSystemVolumesResponse {
  const factory _SnapdSystemVolumesResponse(
          {final Map<String, SnapdSystemVolume> byContainerRole}) =
      _$SnapdSystemVolumesResponseImpl;

  factory _SnapdSystemVolumesResponse.fromJson(Map<String, dynamic> json) =
      _$SnapdSystemVolumesResponseImpl.fromJson;

  @override
  Map<String, SnapdSystemVolume> get byContainerRole;

  /// Create a copy of SnapdSystemVolumesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SnapdSystemVolumesResponseImplCopyWith<_$SnapdSystemVolumesResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SnapdEntropyResponse _$SnapdEntropyResponseFromJson(Map<String, dynamic> json) {
  return _SnapdEntropyResponse.fromJson(json);
}

/// @nodoc
mixin _$SnapdEntropyResponse {
  int get entropyBits => throw _privateConstructorUsedError;
  int get minEntropyBits => throw _privateConstructorUsedError;
  int get optimalEntropyBits => throw _privateConstructorUsedError;

  /// Serializes this SnapdEntropyResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SnapdEntropyResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SnapdEntropyResponseCopyWith<SnapdEntropyResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnapdEntropyResponseCopyWith<$Res> {
  factory $SnapdEntropyResponseCopyWith(SnapdEntropyResponse value,
          $Res Function(SnapdEntropyResponse) then) =
      _$SnapdEntropyResponseCopyWithImpl<$Res, SnapdEntropyResponse>;
  @useResult
  $Res call({int entropyBits, int minEntropyBits, int optimalEntropyBits});
}

/// @nodoc
class _$SnapdEntropyResponseCopyWithImpl<$Res,
        $Val extends SnapdEntropyResponse>
    implements $SnapdEntropyResponseCopyWith<$Res> {
  _$SnapdEntropyResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SnapdEntropyResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entropyBits = null,
    Object? minEntropyBits = null,
    Object? optimalEntropyBits = null,
  }) {
    return _then(_value.copyWith(
      entropyBits: null == entropyBits
          ? _value.entropyBits
          : entropyBits // ignore: cast_nullable_to_non_nullable
              as int,
      minEntropyBits: null == minEntropyBits
          ? _value.minEntropyBits
          : minEntropyBits // ignore: cast_nullable_to_non_nullable
              as int,
      optimalEntropyBits: null == optimalEntropyBits
          ? _value.optimalEntropyBits
          : optimalEntropyBits // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SnapdEntropyResponseImplCopyWith<$Res>
    implements $SnapdEntropyResponseCopyWith<$Res> {
  factory _$$SnapdEntropyResponseImplCopyWith(_$SnapdEntropyResponseImpl value,
          $Res Function(_$SnapdEntropyResponseImpl) then) =
      __$$SnapdEntropyResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int entropyBits, int minEntropyBits, int optimalEntropyBits});
}

/// @nodoc
class __$$SnapdEntropyResponseImplCopyWithImpl<$Res>
    extends _$SnapdEntropyResponseCopyWithImpl<$Res, _$SnapdEntropyResponseImpl>
    implements _$$SnapdEntropyResponseImplCopyWith<$Res> {
  __$$SnapdEntropyResponseImplCopyWithImpl(_$SnapdEntropyResponseImpl _value,
      $Res Function(_$SnapdEntropyResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SnapdEntropyResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entropyBits = null,
    Object? minEntropyBits = null,
    Object? optimalEntropyBits = null,
  }) {
    return _then(_$SnapdEntropyResponseImpl(
      entropyBits: null == entropyBits
          ? _value.entropyBits
          : entropyBits // ignore: cast_nullable_to_non_nullable
              as int,
      minEntropyBits: null == minEntropyBits
          ? _value.minEntropyBits
          : minEntropyBits // ignore: cast_nullable_to_non_nullable
              as int,
      optimalEntropyBits: null == optimalEntropyBits
          ? _value.optimalEntropyBits
          : optimalEntropyBits // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SnapdEntropyResponseImpl implements _SnapdEntropyResponse {
  const _$SnapdEntropyResponseImpl(
      {required this.entropyBits,
      required this.minEntropyBits,
      required this.optimalEntropyBits});

  factory _$SnapdEntropyResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SnapdEntropyResponseImplFromJson(json);

  @override
  final int entropyBits;
  @override
  final int minEntropyBits;
  @override
  final int optimalEntropyBits;

  @override
  String toString() {
    return 'SnapdEntropyResponse(entropyBits: $entropyBits, minEntropyBits: $minEntropyBits, optimalEntropyBits: $optimalEntropyBits)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnapdEntropyResponseImpl &&
            (identical(other.entropyBits, entropyBits) ||
                other.entropyBits == entropyBits) &&
            (identical(other.minEntropyBits, minEntropyBits) ||
                other.minEntropyBits == minEntropyBits) &&
            (identical(other.optimalEntropyBits, optimalEntropyBits) ||
                other.optimalEntropyBits == optimalEntropyBits));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, entropyBits, minEntropyBits, optimalEntropyBits);

  /// Create a copy of SnapdEntropyResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SnapdEntropyResponseImplCopyWith<_$SnapdEntropyResponseImpl>
      get copyWith =>
          __$$SnapdEntropyResponseImplCopyWithImpl<_$SnapdEntropyResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SnapdEntropyResponseImplToJson(
      this,
    );
  }
}

abstract class _SnapdEntropyResponse implements SnapdEntropyResponse {
  const factory _SnapdEntropyResponse(
      {required final int entropyBits,
      required final int minEntropyBits,
      required final int optimalEntropyBits}) = _$SnapdEntropyResponseImpl;

  factory _SnapdEntropyResponse.fromJson(Map<String, dynamic> json) =
      _$SnapdEntropyResponseImpl.fromJson;

  @override
  int get entropyBits;
  @override
  int get minEntropyBits;
  @override
  int get optimalEntropyBits;

  /// Create a copy of SnapdEntropyResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SnapdEntropyResponseImplCopyWith<_$SnapdEntropyResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RefreshInhibit _$RefreshInhibitFromJson(Map<String, dynamic> json) {
  return _RefreshInhibit.fromJson(json);
}

/// @nodoc
mixin _$RefreshInhibit {
  @_SnapdDateTimeConverter()
  DateTime get proceedTime => throw _privateConstructorUsedError;

  /// Serializes this RefreshInhibit to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RefreshInhibit
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RefreshInhibitCopyWith<RefreshInhibit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefreshInhibitCopyWith<$Res> {
  factory $RefreshInhibitCopyWith(
          RefreshInhibit value, $Res Function(RefreshInhibit) then) =
      _$RefreshInhibitCopyWithImpl<$Res, RefreshInhibit>;
  @useResult
  $Res call({@_SnapdDateTimeConverter() DateTime proceedTime});
}

/// @nodoc
class _$RefreshInhibitCopyWithImpl<$Res, $Val extends RefreshInhibit>
    implements $RefreshInhibitCopyWith<$Res> {
  _$RefreshInhibitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RefreshInhibit
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? proceedTime = null,
  }) {
    return _then(_value.copyWith(
      proceedTime: null == proceedTime
          ? _value.proceedTime
          : proceedTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RefreshInhibitImplCopyWith<$Res>
    implements $RefreshInhibitCopyWith<$Res> {
  factory _$$RefreshInhibitImplCopyWith(_$RefreshInhibitImpl value,
          $Res Function(_$RefreshInhibitImpl) then) =
      __$$RefreshInhibitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@_SnapdDateTimeConverter() DateTime proceedTime});
}

/// @nodoc
class __$$RefreshInhibitImplCopyWithImpl<$Res>
    extends _$RefreshInhibitCopyWithImpl<$Res, _$RefreshInhibitImpl>
    implements _$$RefreshInhibitImplCopyWith<$Res> {
  __$$RefreshInhibitImplCopyWithImpl(
      _$RefreshInhibitImpl _value, $Res Function(_$RefreshInhibitImpl) _then)
      : super(_value, _then);

  /// Create a copy of RefreshInhibit
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? proceedTime = null,
  }) {
    return _then(_$RefreshInhibitImpl(
      proceedTime: null == proceedTime
          ? _value.proceedTime
          : proceedTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RefreshInhibitImpl implements _RefreshInhibit {
  const _$RefreshInhibitImpl(
      {@_SnapdDateTimeConverter() required this.proceedTime});

  factory _$RefreshInhibitImpl.fromJson(Map<String, dynamic> json) =>
      _$$RefreshInhibitImplFromJson(json);

  @override
  @_SnapdDateTimeConverter()
  final DateTime proceedTime;

  @override
  String toString() {
    return 'RefreshInhibit(proceedTime: $proceedTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshInhibitImpl &&
            (identical(other.proceedTime, proceedTime) ||
                other.proceedTime == proceedTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, proceedTime);

  /// Create a copy of RefreshInhibit
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefreshInhibitImplCopyWith<_$RefreshInhibitImpl> get copyWith =>
      __$$RefreshInhibitImplCopyWithImpl<_$RefreshInhibitImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RefreshInhibitImplToJson(
      this,
    );
  }
}

abstract class _RefreshInhibit implements RefreshInhibit {
  const factory _RefreshInhibit(
          {@_SnapdDateTimeConverter() required final DateTime proceedTime}) =
      _$RefreshInhibitImpl;

  factory _RefreshInhibit.fromJson(Map<String, dynamic> json) =
      _$RefreshInhibitImpl.fromJson;

  @override
  @_SnapdDateTimeConverter()
  DateTime get proceedTime;

  /// Create a copy of RefreshInhibit
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefreshInhibitImplCopyWith<_$RefreshInhibitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
