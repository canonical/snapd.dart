// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'snapd_client.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SnapApp {
  String get name;
  String? get snap;
  String? get desktopFile;
  String? get daemon;
  bool get enabled;
  bool get active;
  String? get commonId;

  /// Create a copy of SnapApp
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SnapAppCopyWith<SnapApp> get copyWith =>
      _$SnapAppCopyWithImpl<SnapApp>(this as SnapApp, _$identity);

  /// Serializes this SnapApp to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as SnapApp;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SnapApp &&
            (identical(other.name, _this.name) || other.name == _this.name) &&
            (identical(other.snap, _this.snap) || other.snap == _this.snap) &&
            (identical(other.desktopFile, _this.desktopFile) ||
                other.desktopFile == _this.desktopFile) &&
            (identical(other.daemon, _this.daemon) ||
                other.daemon == _this.daemon) &&
            (identical(other.enabled, _this.enabled) ||
                other.enabled == _this.enabled) &&
            (identical(other.active, _this.active) ||
                other.active == _this.active) &&
            (identical(other.commonId, _this.commonId) ||
                other.commonId == _this.commonId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as SnapApp;
    return Object.hash(runtimeType, _this.name, _this.snap, _this.desktopFile,
        _this.daemon, _this.enabled, _this.active, _this.commonId);
  }

  @override
  String toString() {
    final _this = this as SnapApp;
    return 'SnapApp(name: ${_this.name}, snap: ${_this.snap}, desktopFile: ${_this.desktopFile}, daemon: ${_this.daemon}, enabled: ${_this.enabled}, active: ${_this.active}, commonId: ${_this.commonId})';
  }
}

/// @nodoc
abstract mixin class $SnapAppCopyWith<$Res> {
  factory $SnapAppCopyWith(SnapApp value, $Res Function(SnapApp) _then) =
      _$SnapAppCopyWithImpl;
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
class _$SnapAppCopyWithImpl<$Res> implements $SnapAppCopyWith<$Res> {
  _$SnapAppCopyWithImpl(this._self, this._then);

  final SnapApp _self;
  final $Res Function(SnapApp) _then;

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
    return _then(SnapApp(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      snap: freezed == snap
          ? _self.snap
          : snap // ignore: cast_nullable_to_non_nullable
              as String?,
      desktopFile: freezed == desktopFile
          ? _self.desktopFile
          : desktopFile // ignore: cast_nullable_to_non_nullable
              as String?,
      daemon: freezed == daemon
          ? _self.daemon
          : daemon // ignore: cast_nullable_to_non_nullable
              as String?,
      enabled: null == enabled
          ? _self.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      active: null == active
          ? _self.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      commonId: freezed == commonId
          ? _self.commonId
          : commonId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [SnapApp].
extension SnapAppPatterns on SnapApp {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SnapApp value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapApp() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SnapApp value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapApp():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SnapApp value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapApp() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String name, String? snap, String? desktopFile,
            String? daemon, bool enabled, bool active, String? commonId)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapApp() when $default != null:
        return $default(_that.name, _that.snap, _that.desktopFile, _that.daemon,
            _that.enabled, _that.active, _that.commonId);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String name, String? snap, String? desktopFile,
            String? daemon, bool enabled, bool active, String? commonId)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapApp():
        return $default(_that.name, _that.snap, _that.desktopFile, _that.daemon,
            _that.enabled, _that.active, _that.commonId);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String name, String? snap, String? desktopFile,
            String? daemon, bool enabled, bool active, String? commonId)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapApp() when $default != null:
        return $default(_that.name, _that.snap, _that.desktopFile, _that.daemon,
            _that.enabled, _that.active, _that.commonId);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SnapApp implements SnapApp {
  const _SnapApp(
      {required this.name,
      this.snap,
      this.desktopFile,
      this.daemon,
      this.enabled = true,
      this.active = true,
      this.commonId});
  factory _SnapApp.fromJson(Map<String, dynamic> json) =>
      _$SnapAppFromJson(json);

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

  /// Create a copy of SnapApp
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SnapAppCopyWith<_SnapApp> get copyWith =>
      __$SnapAppCopyWithImpl<_SnapApp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SnapAppToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SnapApp &&
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
  int get hashCode {
    return Object.hash(runtimeType, name, snap, desktopFile, daemon, enabled,
        active, commonId);
  }

  @override
  String toString() {
    return 'SnapApp(name: $name, snap: $snap, desktopFile: $desktopFile, daemon: $daemon, enabled: $enabled, active: $active, commonId: $commonId)';
  }
}

/// @nodoc
abstract mixin class _$SnapAppCopyWith<$Res> implements $SnapAppCopyWith<$Res> {
  factory _$SnapAppCopyWith(_SnapApp value, $Res Function(_SnapApp) _then) =
      __$SnapAppCopyWithImpl;
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
class __$SnapAppCopyWithImpl<$Res> implements _$SnapAppCopyWith<$Res> {
  __$SnapAppCopyWithImpl(this._self, this._then);

  final _SnapApp _self;
  final $Res Function(_SnapApp) _then;

  /// Create a copy of SnapApp
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? snap = freezed,
    Object? desktopFile = freezed,
    Object? daemon = freezed,
    Object? enabled = null,
    Object? active = null,
    Object? commonId = freezed,
  }) {
    return _then(_SnapApp(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      snap: freezed == snap
          ? _self.snap
          : snap // ignore: cast_nullable_to_non_nullable
              as String?,
      desktopFile: freezed == desktopFile
          ? _self.desktopFile
          : desktopFile // ignore: cast_nullable_to_non_nullable
              as String?,
      daemon: freezed == daemon
          ? _self.daemon
          : daemon // ignore: cast_nullable_to_non_nullable
              as String?,
      enabled: null == enabled
          ? _self.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      active: null == active
          ? _self.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      commonId: freezed == commonId
          ? _self.commonId
          : commonId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$SnapCategory {
  String get name;
  bool get featured;

  /// Create a copy of SnapCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SnapCategoryCopyWith<SnapCategory> get copyWith =>
      _$SnapCategoryCopyWithImpl<SnapCategory>(
          this as SnapCategory, _$identity);

  /// Serializes this SnapCategory to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as SnapCategory;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SnapCategory &&
            (identical(other.name, _this.name) || other.name == _this.name) &&
            (identical(other.featured, _this.featured) ||
                other.featured == _this.featured));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as SnapCategory;
    return Object.hash(runtimeType, _this.name, _this.featured);
  }

  @override
  String toString() {
    final _this = this as SnapCategory;
    return 'SnapCategory(name: ${_this.name}, featured: ${_this.featured})';
  }
}

/// @nodoc
abstract mixin class $SnapCategoryCopyWith<$Res> {
  factory $SnapCategoryCopyWith(
          SnapCategory value, $Res Function(SnapCategory) _then) =
      _$SnapCategoryCopyWithImpl;
  @useResult
  $Res call({String name, bool featured});
}

/// @nodoc
class _$SnapCategoryCopyWithImpl<$Res> implements $SnapCategoryCopyWith<$Res> {
  _$SnapCategoryCopyWithImpl(this._self, this._then);

  final SnapCategory _self;
  final $Res Function(SnapCategory) _then;

  /// Create a copy of SnapCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? featured = null,
  }) {
    return _then(SnapCategory(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      featured: null == featured
          ? _self.featured
          : featured // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [SnapCategory].
extension SnapCategoryPatterns on SnapCategory {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SnapCategory value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapCategory() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SnapCategory value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapCategory():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SnapCategory value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapCategory() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String name, bool featured)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapCategory() when $default != null:
        return $default(_that.name, _that.featured);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String name, bool featured) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapCategory():
        return $default(_that.name, _that.featured);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String name, bool featured)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapCategory() when $default != null:
        return $default(_that.name, _that.featured);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SnapCategory implements SnapCategory {
  const _SnapCategory({required this.name, this.featured = false});
  factory _SnapCategory.fromJson(Map<String, dynamic> json) =>
      _$SnapCategoryFromJson(json);

  @override
  final String name;
  @override
  @JsonKey()
  final bool featured;

  /// Create a copy of SnapCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SnapCategoryCopyWith<_SnapCategory> get copyWith =>
      __$SnapCategoryCopyWithImpl<_SnapCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SnapCategoryToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SnapCategory &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.featured, featured) ||
                other.featured == featured));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, name, featured);
  }

  @override
  String toString() {
    return 'SnapCategory(name: $name, featured: $featured)';
  }
}

/// @nodoc
abstract mixin class _$SnapCategoryCopyWith<$Res>
    implements $SnapCategoryCopyWith<$Res> {
  factory _$SnapCategoryCopyWith(
          _SnapCategory value, $Res Function(_SnapCategory) _then) =
      __$SnapCategoryCopyWithImpl;
  @override
  @useResult
  $Res call({String name, bool featured});
}

/// @nodoc
class __$SnapCategoryCopyWithImpl<$Res>
    implements _$SnapCategoryCopyWith<$Res> {
  __$SnapCategoryCopyWithImpl(this._self, this._then);

  final _SnapCategory _self;
  final $Res Function(_SnapCategory) _then;

  /// Create a copy of SnapCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? featured = null,
  }) {
    return _then(_SnapCategory(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      featured: null == featured
          ? _self.featured
          : featured // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
mixin _$SnapCategoryDetails {
  String get name;

  /// Create a copy of SnapCategoryDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SnapCategoryDetailsCopyWith<SnapCategoryDetails> get copyWith =>
      _$SnapCategoryDetailsCopyWithImpl<SnapCategoryDetails>(
          this as SnapCategoryDetails, _$identity);

  /// Serializes this SnapCategoryDetails to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as SnapCategoryDetails;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SnapCategoryDetails &&
            (identical(other.name, _this.name) || other.name == _this.name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as SnapCategoryDetails;
    return Object.hash(runtimeType, _this.name);
  }

  @override
  String toString() {
    final _this = this as SnapCategoryDetails;
    return 'SnapCategoryDetails(name: ${_this.name})';
  }
}

/// @nodoc
abstract mixin class $SnapCategoryDetailsCopyWith<$Res> {
  factory $SnapCategoryDetailsCopyWith(
          SnapCategoryDetails value, $Res Function(SnapCategoryDetails) _then) =
      _$SnapCategoryDetailsCopyWithImpl;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$SnapCategoryDetailsCopyWithImpl<$Res>
    implements $SnapCategoryDetailsCopyWith<$Res> {
  _$SnapCategoryDetailsCopyWithImpl(this._self, this._then);

  final SnapCategoryDetails _self;
  final $Res Function(SnapCategoryDetails) _then;

  /// Create a copy of SnapCategoryDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(SnapCategoryDetails(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [SnapCategoryDetails].
extension SnapCategoryDetailsPatterns on SnapCategoryDetails {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SnapCategoryDetails value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapCategoryDetails() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SnapCategoryDetails value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapCategoryDetails():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SnapCategoryDetails value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapCategoryDetails() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String name)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapCategoryDetails() when $default != null:
        return $default(_that.name);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String name) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapCategoryDetails():
        return $default(_that.name);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String name)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapCategoryDetails() when $default != null:
        return $default(_that.name);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SnapCategoryDetails implements SnapCategoryDetails {
  const _SnapCategoryDetails({required this.name});
  factory _SnapCategoryDetails.fromJson(Map<String, dynamic> json) =>
      _$SnapCategoryDetailsFromJson(json);

  @override
  final String name;

  /// Create a copy of SnapCategoryDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SnapCategoryDetailsCopyWith<_SnapCategoryDetails> get copyWith =>
      __$SnapCategoryDetailsCopyWithImpl<_SnapCategoryDetails>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SnapCategoryDetailsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SnapCategoryDetails &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, name);
  }

  @override
  String toString() {
    return 'SnapCategoryDetails(name: $name)';
  }
}

/// @nodoc
abstract mixin class _$SnapCategoryDetailsCopyWith<$Res>
    implements $SnapCategoryDetailsCopyWith<$Res> {
  factory _$SnapCategoryDetailsCopyWith(_SnapCategoryDetails value,
          $Res Function(_SnapCategoryDetails) _then) =
      __$SnapCategoryDetailsCopyWithImpl;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$SnapCategoryDetailsCopyWithImpl<$Res>
    implements _$SnapCategoryDetailsCopyWith<$Res> {
  __$SnapCategoryDetailsCopyWithImpl(this._self, this._then);

  final _SnapCategoryDetails _self;
  final $Res Function(_SnapCategoryDetails) _then;

  /// Create a copy of SnapCategoryDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
  }) {
    return _then(_SnapCategoryDetails(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$SnapChannel {
  DateTime get releasedAt;
  @JsonKey(unknownEnumValue: SnapConfinement.unknown)
  SnapConfinement get confinement;
  String? get revision;
  int get size;
  String? get version;

  /// Create a copy of SnapChannel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SnapChannelCopyWith<SnapChannel> get copyWith =>
      _$SnapChannelCopyWithImpl<SnapChannel>(this as SnapChannel, _$identity);

  /// Serializes this SnapChannel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as SnapChannel;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SnapChannel &&
            (identical(other.releasedAt, _this.releasedAt) ||
                other.releasedAt == _this.releasedAt) &&
            (identical(other.confinement, _this.confinement) ||
                other.confinement == _this.confinement) &&
            (identical(other.revision, _this.revision) ||
                other.revision == _this.revision) &&
            (identical(other.size, _this.size) || other.size == _this.size) &&
            (identical(other.version, _this.version) ||
                other.version == _this.version));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as SnapChannel;
    return Object.hash(runtimeType, _this.releasedAt, _this.confinement,
        _this.revision, _this.size, _this.version);
  }

  @override
  String toString() {
    final _this = this as SnapChannel;
    return 'SnapChannel(releasedAt: ${_this.releasedAt}, confinement: ${_this.confinement}, revision: ${_this.revision}, size: ${_this.size}, version: ${_this.version})';
  }
}

/// @nodoc
abstract mixin class $SnapChannelCopyWith<$Res> {
  factory $SnapChannelCopyWith(
          SnapChannel value, $Res Function(SnapChannel) _then) =
      _$SnapChannelCopyWithImpl;
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
class _$SnapChannelCopyWithImpl<$Res> implements $SnapChannelCopyWith<$Res> {
  _$SnapChannelCopyWithImpl(this._self, this._then);

  final SnapChannel _self;
  final $Res Function(SnapChannel) _then;

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
    return _then(SnapChannel(
      releasedAt: null == releasedAt
          ? _self.releasedAt
          : releasedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      confinement: null == confinement
          ? _self.confinement
          : confinement // ignore: cast_nullable_to_non_nullable
              as SnapConfinement,
      revision: freezed == revision
          ? _self.revision
          : revision // ignore: cast_nullable_to_non_nullable
              as String?,
      size: null == size
          ? _self.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      version: freezed == version
          ? _self.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [SnapChannel].
extension SnapChannelPatterns on SnapChannel {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SnapChannel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapChannel() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SnapChannel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapChannel():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SnapChannel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapChannel() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            DateTime releasedAt,
            @JsonKey(unknownEnumValue: SnapConfinement.unknown)
            SnapConfinement confinement,
            String? revision,
            int size,
            String? version)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapChannel() when $default != null:
        return $default(_that.releasedAt, _that.confinement, _that.revision,
            _that.size, _that.version);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            DateTime releasedAt,
            @JsonKey(unknownEnumValue: SnapConfinement.unknown)
            SnapConfinement confinement,
            String? revision,
            int size,
            String? version)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapChannel():
        return $default(_that.releasedAt, _that.confinement, _that.revision,
            _that.size, _that.version);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            DateTime releasedAt,
            @JsonKey(unknownEnumValue: SnapConfinement.unknown)
            SnapConfinement confinement,
            String? revision,
            int size,
            String? version)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapChannel() when $default != null:
        return $default(_that.releasedAt, _that.confinement, _that.revision,
            _that.size, _that.version);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SnapChannel implements SnapChannel {
  const _SnapChannel(
      {required this.releasedAt,
      @JsonKey(unknownEnumValue: SnapConfinement.unknown)
      this.confinement = SnapConfinement.unknown,
      this.revision,
      this.size = 0,
      this.version});
  factory _SnapChannel.fromJson(Map<String, dynamic> json) =>
      _$SnapChannelFromJson(json);

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

  /// Create a copy of SnapChannel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SnapChannelCopyWith<_SnapChannel> get copyWith =>
      __$SnapChannelCopyWithImpl<_SnapChannel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SnapChannelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SnapChannel &&
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
  int get hashCode {
    return Object.hash(
        runtimeType, releasedAt, confinement, revision, size, version);
  }

  @override
  String toString() {
    return 'SnapChannel(releasedAt: $releasedAt, confinement: $confinement, revision: $revision, size: $size, version: $version)';
  }
}

/// @nodoc
abstract mixin class _$SnapChannelCopyWith<$Res>
    implements $SnapChannelCopyWith<$Res> {
  factory _$SnapChannelCopyWith(
          _SnapChannel value, $Res Function(_SnapChannel) _then) =
      __$SnapChannelCopyWithImpl;
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
class __$SnapChannelCopyWithImpl<$Res> implements _$SnapChannelCopyWith<$Res> {
  __$SnapChannelCopyWithImpl(this._self, this._then);

  final _SnapChannel _self;
  final $Res Function(_SnapChannel) _then;

  /// Create a copy of SnapChannel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? releasedAt = null,
    Object? confinement = null,
    Object? revision = freezed,
    Object? size = null,
    Object? version = freezed,
  }) {
    return _then(_SnapChannel(
      releasedAt: null == releasedAt
          ? _self.releasedAt
          : releasedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      confinement: null == confinement
          ? _self.confinement
          : confinement // ignore: cast_nullable_to_non_nullable
              as SnapConfinement,
      revision: freezed == revision
          ? _self.revision
          : revision // ignore: cast_nullable_to_non_nullable
              as String?,
      size: null == size
          ? _self.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      version: freezed == version
          ? _self.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$SnapPublisher {
  String get id;
  String get displayName;
  String? get username;
  String? get validation;

  /// Create a copy of SnapPublisher
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SnapPublisherCopyWith<SnapPublisher> get copyWith =>
      _$SnapPublisherCopyWithImpl<SnapPublisher>(
          this as SnapPublisher, _$identity);

  /// Serializes this SnapPublisher to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as SnapPublisher;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SnapPublisher &&
            (identical(other.id, _this.id) || other.id == _this.id) &&
            (identical(other.displayName, _this.displayName) ||
                other.displayName == _this.displayName) &&
            (identical(other.username, _this.username) ||
                other.username == _this.username) &&
            (identical(other.validation, _this.validation) ||
                other.validation == _this.validation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as SnapPublisher;
    return Object.hash(runtimeType, _this.id, _this.displayName, _this.username,
        _this.validation);
  }

  @override
  String toString() {
    final _this = this as SnapPublisher;
    return 'SnapPublisher(id: ${_this.id}, displayName: ${_this.displayName}, username: ${_this.username}, validation: ${_this.validation})';
  }
}

/// @nodoc
abstract mixin class $SnapPublisherCopyWith<$Res> {
  factory $SnapPublisherCopyWith(
          SnapPublisher value, $Res Function(SnapPublisher) _then) =
      _$SnapPublisherCopyWithImpl;
  @useResult
  $Res call(
      {String id, String displayName, String? username, String? validation});
}

/// @nodoc
class _$SnapPublisherCopyWithImpl<$Res>
    implements $SnapPublisherCopyWith<$Res> {
  _$SnapPublisherCopyWithImpl(this._self, this._then);

  final SnapPublisher _self;
  final $Res Function(SnapPublisher) _then;

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
    return _then(SnapPublisher(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _self.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      username: freezed == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      validation: freezed == validation
          ? _self.validation
          : validation // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [SnapPublisher].
extension SnapPublisherPatterns on SnapPublisher {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SnapPublisher value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapPublisher() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SnapPublisher value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapPublisher():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SnapPublisher value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapPublisher() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String id, String displayName, String? username,
            String? validation)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapPublisher() when $default != null:
        return $default(
            _that.id, _that.displayName, _that.username, _that.validation);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String id, String displayName, String? username, String? validation)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapPublisher():
        return $default(
            _that.id, _that.displayName, _that.username, _that.validation);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String id, String displayName, String? username,
            String? validation)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapPublisher() when $default != null:
        return $default(
            _that.id, _that.displayName, _that.username, _that.validation);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SnapPublisher implements SnapPublisher {
  const _SnapPublisher(
      {required this.id,
      required this.displayName,
      this.username,
      this.validation});
  factory _SnapPublisher.fromJson(Map<String, dynamic> json) =>
      _$SnapPublisherFromJson(json);

  @override
  final String id;
  @override
  final String displayName;
  @override
  final String? username;
  @override
  final String? validation;

  /// Create a copy of SnapPublisher
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SnapPublisherCopyWith<_SnapPublisher> get copyWith =>
      __$SnapPublisherCopyWithImpl<_SnapPublisher>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SnapPublisherToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SnapPublisher &&
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
  int get hashCode {
    return Object.hash(runtimeType, id, displayName, username, validation);
  }

  @override
  String toString() {
    return 'SnapPublisher(id: $id, displayName: $displayName, username: $username, validation: $validation)';
  }
}

/// @nodoc
abstract mixin class _$SnapPublisherCopyWith<$Res>
    implements $SnapPublisherCopyWith<$Res> {
  factory _$SnapPublisherCopyWith(
          _SnapPublisher value, $Res Function(_SnapPublisher) _then) =
      __$SnapPublisherCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id, String displayName, String? username, String? validation});
}

/// @nodoc
class __$SnapPublisherCopyWithImpl<$Res>
    implements _$SnapPublisherCopyWith<$Res> {
  __$SnapPublisherCopyWithImpl(this._self, this._then);

  final _SnapPublisher _self;
  final $Res Function(_SnapPublisher) _then;

  /// Create a copy of SnapPublisher
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? displayName = null,
    Object? username = freezed,
    Object? validation = freezed,
  }) {
    return _then(_SnapPublisher(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _self.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      username: freezed == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      validation: freezed == validation
          ? _self.validation
          : validation // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$SnapMedia {
  String get type;
  String get url;
  int? get width;
  int? get height;

  /// Create a copy of SnapMedia
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SnapMediaCopyWith<SnapMedia> get copyWith =>
      _$SnapMediaCopyWithImpl<SnapMedia>(this as SnapMedia, _$identity);

  /// Serializes this SnapMedia to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as SnapMedia;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SnapMedia &&
            (identical(other.type, _this.type) || other.type == _this.type) &&
            (identical(other.url, _this.url) || other.url == _this.url) &&
            (identical(other.width, _this.width) ||
                other.width == _this.width) &&
            (identical(other.height, _this.height) ||
                other.height == _this.height));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as SnapMedia;
    return Object.hash(
        runtimeType, _this.type, _this.url, _this.width, _this.height);
  }

  @override
  String toString() {
    final _this = this as SnapMedia;
    return 'SnapMedia(type: ${_this.type}, url: ${_this.url}, width: ${_this.width}, height: ${_this.height})';
  }
}

/// @nodoc
abstract mixin class $SnapMediaCopyWith<$Res> {
  factory $SnapMediaCopyWith(SnapMedia value, $Res Function(SnapMedia) _then) =
      _$SnapMediaCopyWithImpl;
  @useResult
  $Res call({String type, String url, int? width, int? height});
}

/// @nodoc
class _$SnapMediaCopyWithImpl<$Res> implements $SnapMediaCopyWith<$Res> {
  _$SnapMediaCopyWithImpl(this._self, this._then);

  final SnapMedia _self;
  final $Res Function(SnapMedia) _then;

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
    return _then(SnapMedia(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      width: freezed == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// Adds pattern-matching-related methods to [SnapMedia].
extension SnapMediaPatterns on SnapMedia {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SnapMedia value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapMedia() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SnapMedia value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapMedia():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SnapMedia value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapMedia() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String type, String url, int? width, int? height)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapMedia() when $default != null:
        return $default(_that.type, _that.url, _that.width, _that.height);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String type, String url, int? width, int? height) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapMedia():
        return $default(_that.type, _that.url, _that.width, _that.height);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String type, String url, int? width, int? height)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapMedia() when $default != null:
        return $default(_that.type, _that.url, _that.width, _that.height);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SnapMedia implements SnapMedia {
  const _SnapMedia(
      {required this.type, required this.url, this.width, this.height});
  factory _SnapMedia.fromJson(Map<String, dynamic> json) =>
      _$SnapMediaFromJson(json);

  @override
  final String type;
  @override
  final String url;
  @override
  final int? width;
  @override
  final int? height;

  /// Create a copy of SnapMedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SnapMediaCopyWith<_SnapMedia> get copyWith =>
      __$SnapMediaCopyWithImpl<_SnapMedia>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SnapMediaToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SnapMedia &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, type, url, width, height);
  }

  @override
  String toString() {
    return 'SnapMedia(type: $type, url: $url, width: $width, height: $height)';
  }
}

/// @nodoc
abstract mixin class _$SnapMediaCopyWith<$Res>
    implements $SnapMediaCopyWith<$Res> {
  factory _$SnapMediaCopyWith(
          _SnapMedia value, $Res Function(_SnapMedia) _then) =
      __$SnapMediaCopyWithImpl;
  @override
  @useResult
  $Res call({String type, String url, int? width, int? height});
}

/// @nodoc
class __$SnapMediaCopyWithImpl<$Res> implements _$SnapMediaCopyWith<$Res> {
  __$SnapMediaCopyWithImpl(this._self, this._then);

  final _SnapMedia _self;
  final $Res Function(_SnapMedia) _then;

  /// Create a copy of SnapMedia
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? url = null,
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_SnapMedia(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      width: freezed == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
mixin _$Snap {
  String get id;
  String get name;
  String get version;
  String get channel;
  String get type;
  @JsonKey(fromJson: Snap._parseRevision)
  int get revision;
  String get contact;
  String get description;
  String get summary;
  Map<String, SnapChannel> get channels;
  List<SnapApp> get apps;
  List<SnapCategory> get categories;
  List<String> get tracks;
  List<String> get commonIds;
  Map<String, List<String>> get links;
  List<SnapMedia> get media;
  @JsonKey(unknownEnumValue: SnapConfinement.unknown)
  SnapConfinement get confinement;
  SnapStatus get status;
  bool get devmode;
  bool get jailmode;
  bool get private;
  String? get base;
  String? get title;
  String? get trackingChannel;
  String? get website;
  String? get license;
  String? get mountedFrom;
  String? get storeUrl;
  DateTime? get hold;
  DateTime? get installDate;
  int? get downloadSize;
  int? get installedSize;
  SnapPublisher? get publisher;
  RefreshInhibit? get refreshInhibit;

  /// Create a copy of Snap
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SnapCopyWith<Snap> get copyWith =>
      _$SnapCopyWithImpl<Snap>(this as Snap, _$identity);

  /// Serializes this Snap to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as Snap;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Snap &&
            (identical(other.id, _this.id) || other.id == _this.id) &&
            (identical(other.name, _this.name) || other.name == _this.name) &&
            (identical(other.version, _this.version) ||
                other.version == _this.version) &&
            (identical(other.channel, _this.channel) ||
                other.channel == _this.channel) &&
            (identical(other.type, _this.type) || other.type == _this.type) &&
            (identical(other.revision, _this.revision) ||
                other.revision == _this.revision) &&
            (identical(other.contact, _this.contact) ||
                other.contact == _this.contact) &&
            (identical(other.description, _this.description) ||
                other.description == _this.description) &&
            (identical(other.summary, _this.summary) ||
                other.summary == _this.summary) &&
            const DeepCollectionEquality()
                .equals(other.channels, _this.channels) &&
            const DeepCollectionEquality().equals(other.apps, _this.apps) &&
            const DeepCollectionEquality()
                .equals(other.categories, _this.categories) &&
            const DeepCollectionEquality().equals(other.tracks, _this.tracks) &&
            const DeepCollectionEquality()
                .equals(other.commonIds, _this.commonIds) &&
            const DeepCollectionEquality().equals(other.links, _this.links) &&
            const DeepCollectionEquality().equals(other.media, _this.media) &&
            (identical(other.confinement, _this.confinement) ||
                other.confinement == _this.confinement) &&
            (identical(other.status, _this.status) ||
                other.status == _this.status) &&
            (identical(other.devmode, _this.devmode) ||
                other.devmode == _this.devmode) &&
            (identical(other.jailmode, _this.jailmode) ||
                other.jailmode == _this.jailmode) &&
            (identical(other.private, _this.private) ||
                other.private == _this.private) &&
            (identical(other.base, _this.base) || other.base == _this.base) &&
            (identical(other.title, _this.title) ||
                other.title == _this.title) &&
            (identical(other.trackingChannel, _this.trackingChannel) ||
                other.trackingChannel == _this.trackingChannel) &&
            (identical(other.website, _this.website) ||
                other.website == _this.website) &&
            (identical(other.license, _this.license) ||
                other.license == _this.license) &&
            (identical(other.mountedFrom, _this.mountedFrom) ||
                other.mountedFrom == _this.mountedFrom) &&
            (identical(other.storeUrl, _this.storeUrl) ||
                other.storeUrl == _this.storeUrl) &&
            (identical(other.hold, _this.hold) || other.hold == _this.hold) &&
            (identical(other.installDate, _this.installDate) ||
                other.installDate == _this.installDate) &&
            (identical(other.downloadSize, _this.downloadSize) ||
                other.downloadSize == _this.downloadSize) &&
            (identical(other.installedSize, _this.installedSize) ||
                other.installedSize == _this.installedSize) &&
            (identical(other.publisher, _this.publisher) ||
                other.publisher == _this.publisher) &&
            (identical(other.refreshInhibit, _this.refreshInhibit) ||
                other.refreshInhibit == _this.refreshInhibit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as Snap;
    return Object.hashAll([
      runtimeType,
      _this.id,
      _this.name,
      _this.version,
      _this.channel,
      _this.type,
      _this.revision,
      _this.contact,
      _this.description,
      _this.summary,
      const DeepCollectionEquality().hash(_this.channels),
      const DeepCollectionEquality().hash(_this.apps),
      const DeepCollectionEquality().hash(_this.categories),
      const DeepCollectionEquality().hash(_this.tracks),
      const DeepCollectionEquality().hash(_this.commonIds),
      const DeepCollectionEquality().hash(_this.links),
      const DeepCollectionEquality().hash(_this.media),
      _this.confinement,
      _this.status,
      _this.devmode,
      _this.jailmode,
      _this.private,
      _this.base,
      _this.title,
      _this.trackingChannel,
      _this.website,
      _this.license,
      _this.mountedFrom,
      _this.storeUrl,
      _this.hold,
      _this.installDate,
      _this.downloadSize,
      _this.installedSize,
      _this.publisher,
      _this.refreshInhibit
    ]);
  }

  @override
  String toString() {
    final _this = this as Snap;
    return 'Snap(id: ${_this.id}, name: ${_this.name}, version: ${_this.version}, channel: ${_this.channel}, type: ${_this.type}, revision: ${_this.revision}, contact: ${_this.contact}, description: ${_this.description}, summary: ${_this.summary}, channels: ${_this.channels}, apps: ${_this.apps}, categories: ${_this.categories}, tracks: ${_this.tracks}, commonIds: ${_this.commonIds}, links: ${_this.links}, media: ${_this.media}, confinement: ${_this.confinement}, status: ${_this.status}, devmode: ${_this.devmode}, jailmode: ${_this.jailmode}, private: ${_this.private}, base: ${_this.base}, title: ${_this.title}, trackingChannel: ${_this.trackingChannel}, website: ${_this.website}, license: ${_this.license}, mountedFrom: ${_this.mountedFrom}, storeUrl: ${_this.storeUrl}, hold: ${_this.hold}, installDate: ${_this.installDate}, downloadSize: ${_this.downloadSize}, installedSize: ${_this.installedSize}, publisher: ${_this.publisher}, refreshInhibit: ${_this.refreshInhibit})';
  }
}

/// @nodoc
abstract mixin class $SnapCopyWith<$Res> {
  factory $SnapCopyWith(Snap value, $Res Function(Snap) _then) =
      _$SnapCopyWithImpl;
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
class _$SnapCopyWithImpl<$Res> implements $SnapCopyWith<$Res> {
  _$SnapCopyWithImpl(this._self, this._then);

  final Snap _self;
  final $Res Function(Snap) _then;

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
    return _then(Snap(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _self.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      channel: null == channel
          ? _self.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      revision: null == revision
          ? _self.revision
          : revision // ignore: cast_nullable_to_non_nullable
              as int,
      contact: null == contact
          ? _self.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      summary: null == summary
          ? _self.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      channels: null == channels
          ? _self.channels
          : channels // ignore: cast_nullable_to_non_nullable
              as Map<String, SnapChannel>,
      apps: null == apps
          ? _self.apps
          : apps // ignore: cast_nullable_to_non_nullable
              as List<SnapApp>,
      categories: null == categories
          ? _self.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<SnapCategory>,
      tracks: null == tracks
          ? _self.tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as List<String>,
      commonIds: null == commonIds
          ? _self.commonIds
          : commonIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      links: null == links
          ? _self.links
          : links // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>,
      media: null == media
          ? _self.media
          : media // ignore: cast_nullable_to_non_nullable
              as List<SnapMedia>,
      confinement: null == confinement
          ? _self.confinement
          : confinement // ignore: cast_nullable_to_non_nullable
              as SnapConfinement,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as SnapStatus,
      devmode: null == devmode
          ? _self.devmode
          : devmode // ignore: cast_nullable_to_non_nullable
              as bool,
      jailmode: null == jailmode
          ? _self.jailmode
          : jailmode // ignore: cast_nullable_to_non_nullable
              as bool,
      private: null == private
          ? _self.private
          : private // ignore: cast_nullable_to_non_nullable
              as bool,
      base: freezed == base
          ? _self.base
          : base // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      trackingChannel: freezed == trackingChannel
          ? _self.trackingChannel
          : trackingChannel // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _self.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      license: freezed == license
          ? _self.license
          : license // ignore: cast_nullable_to_non_nullable
              as String?,
      mountedFrom: freezed == mountedFrom
          ? _self.mountedFrom
          : mountedFrom // ignore: cast_nullable_to_non_nullable
              as String?,
      storeUrl: freezed == storeUrl
          ? _self.storeUrl
          : storeUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      hold: freezed == hold
          ? _self.hold
          : hold // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      installDate: freezed == installDate
          ? _self.installDate
          : installDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      downloadSize: freezed == downloadSize
          ? _self.downloadSize
          : downloadSize // ignore: cast_nullable_to_non_nullable
              as int?,
      installedSize: freezed == installedSize
          ? _self.installedSize
          : installedSize // ignore: cast_nullable_to_non_nullable
              as int?,
      publisher: freezed == publisher
          ? _self.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as SnapPublisher?,
      refreshInhibit: freezed == refreshInhibit
          ? _self.refreshInhibit
          : refreshInhibit // ignore: cast_nullable_to_non_nullable
              as RefreshInhibit?,
    ));
  }

  /// Create a copy of Snap
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SnapPublisherCopyWith<$Res>? get publisher {
    if (_self.publisher == null) {
      return null;
    }

    return $SnapPublisherCopyWith<$Res>(_self.publisher!, (value) {
      return _then(_self.copyWith(publisher: value));
    });
  }

  /// Create a copy of Snap
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RefreshInhibitCopyWith<$Res>? get refreshInhibit {
    if (_self.refreshInhibit == null) {
      return null;
    }

    return $RefreshInhibitCopyWith<$Res>(_self.refreshInhibit!, (value) {
      return _then(_self.copyWith(refreshInhibit: value));
    });
  }
}

/// Adds pattern-matching-related methods to [Snap].
extension SnapPatterns on Snap {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Snap value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Snap() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Snap value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Snap():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Snap value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Snap() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id,
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
            RefreshInhibit? refreshInhibit)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Snap() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.version,
            _that.channel,
            _that.type,
            _that.revision,
            _that.contact,
            _that.description,
            _that.summary,
            _that.channels,
            _that.apps,
            _that.categories,
            _that.tracks,
            _that.commonIds,
            _that.links,
            _that.media,
            _that.confinement,
            _that.status,
            _that.devmode,
            _that.jailmode,
            _that.private,
            _that.base,
            _that.title,
            _that.trackingChannel,
            _that.website,
            _that.license,
            _that.mountedFrom,
            _that.storeUrl,
            _that.hold,
            _that.installDate,
            _that.downloadSize,
            _that.installedSize,
            _that.publisher,
            _that.refreshInhibit);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String id,
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
            RefreshInhibit? refreshInhibit)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Snap():
        return $default(
            _that.id,
            _that.name,
            _that.version,
            _that.channel,
            _that.type,
            _that.revision,
            _that.contact,
            _that.description,
            _that.summary,
            _that.channels,
            _that.apps,
            _that.categories,
            _that.tracks,
            _that.commonIds,
            _that.links,
            _that.media,
            _that.confinement,
            _that.status,
            _that.devmode,
            _that.jailmode,
            _that.private,
            _that.base,
            _that.title,
            _that.trackingChannel,
            _that.website,
            _that.license,
            _that.mountedFrom,
            _that.storeUrl,
            _that.hold,
            _that.installDate,
            _that.downloadSize,
            _that.installedSize,
            _that.publisher,
            _that.refreshInhibit);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String id,
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
            RefreshInhibit? refreshInhibit)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Snap() when $default != null:
        return $default(
            _that.id,
            _that.name,
            _that.version,
            _that.channel,
            _that.type,
            _that.revision,
            _that.contact,
            _that.description,
            _that.summary,
            _that.channels,
            _that.apps,
            _that.categories,
            _that.tracks,
            _that.commonIds,
            _that.links,
            _that.media,
            _that.confinement,
            _that.status,
            _that.devmode,
            _that.jailmode,
            _that.private,
            _that.base,
            _that.title,
            _that.trackingChannel,
            _that.website,
            _that.license,
            _that.mountedFrom,
            _that.storeUrl,
            _that.hold,
            _that.installDate,
            _that.downloadSize,
            _that.installedSize,
            _that.publisher,
            _that.refreshInhibit);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Snap implements Snap {
  const _Snap(
      {required this.id,
      required this.name,
      required this.version,
      required this.channel,
      required this.type,
      @JsonKey(fromJson: Snap._parseRevision) required this.revision,
      this.contact = '',
      this.description = '',
      this.summary = '',
      Map<String, SnapChannel> channels = const {},
      List<SnapApp> apps = const [],
      List<SnapCategory> categories = const [],
      List<String> tracks = const [],
      List<String> commonIds = const [],
      Map<String, List<String>> links = const {},
      List<SnapMedia> media = const [],
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
  factory _Snap.fromJson(Map<String, dynamic> json) => _$SnapFromJson(json);

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

  /// Create a copy of Snap
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SnapCopyWith<_Snap> get copyWith =>
      __$SnapCopyWithImpl<_Snap>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SnapToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Snap &&
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
            const DeepCollectionEquality().equals(other.channels, _channels) &&
            const DeepCollectionEquality().equals(other.apps, _apps) &&
            const DeepCollectionEquality()
                .equals(other.categories, _categories) &&
            const DeepCollectionEquality().equals(other.tracks, _tracks) &&
            const DeepCollectionEquality()
                .equals(other.commonIds, _commonIds) &&
            const DeepCollectionEquality().equals(other.links, _links) &&
            const DeepCollectionEquality().equals(other.media, _media) &&
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
  int get hashCode {
    return Object.hashAll([
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
  }

  @override
  String toString() {
    return 'Snap(id: $id, name: $name, version: $version, channel: $channel, type: $type, revision: $revision, contact: $contact, description: $description, summary: $summary, channels: $channels, apps: $apps, categories: $categories, tracks: $tracks, commonIds: $commonIds, links: $links, media: $media, confinement: $confinement, status: $status, devmode: $devmode, jailmode: $jailmode, private: $private, base: $base, title: $title, trackingChannel: $trackingChannel, website: $website, license: $license, mountedFrom: $mountedFrom, storeUrl: $storeUrl, hold: $hold, installDate: $installDate, downloadSize: $downloadSize, installedSize: $installedSize, publisher: $publisher, refreshInhibit: $refreshInhibit)';
  }
}

/// @nodoc
abstract mixin class _$SnapCopyWith<$Res> implements $SnapCopyWith<$Res> {
  factory _$SnapCopyWith(_Snap value, $Res Function(_Snap) _then) =
      __$SnapCopyWithImpl;
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
class __$SnapCopyWithImpl<$Res> implements _$SnapCopyWith<$Res> {
  __$SnapCopyWithImpl(this._self, this._then);

  final _Snap _self;
  final $Res Function(_Snap) _then;

  /// Create a copy of Snap
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_Snap(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _self.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      channel: null == channel
          ? _self.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      revision: null == revision
          ? _self.revision
          : revision // ignore: cast_nullable_to_non_nullable
              as int,
      contact: null == contact
          ? _self.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      summary: null == summary
          ? _self.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      channels: null == channels
          ? _self._channels
          : channels // ignore: cast_nullable_to_non_nullable
              as Map<String, SnapChannel>,
      apps: null == apps
          ? _self._apps
          : apps // ignore: cast_nullable_to_non_nullable
              as List<SnapApp>,
      categories: null == categories
          ? _self._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<SnapCategory>,
      tracks: null == tracks
          ? _self._tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as List<String>,
      commonIds: null == commonIds
          ? _self._commonIds
          : commonIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      links: null == links
          ? _self._links
          : links // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>,
      media: null == media
          ? _self._media
          : media // ignore: cast_nullable_to_non_nullable
              as List<SnapMedia>,
      confinement: null == confinement
          ? _self.confinement
          : confinement // ignore: cast_nullable_to_non_nullable
              as SnapConfinement,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as SnapStatus,
      devmode: null == devmode
          ? _self.devmode
          : devmode // ignore: cast_nullable_to_non_nullable
              as bool,
      jailmode: null == jailmode
          ? _self.jailmode
          : jailmode // ignore: cast_nullable_to_non_nullable
              as bool,
      private: null == private
          ? _self.private
          : private // ignore: cast_nullable_to_non_nullable
              as bool,
      base: freezed == base
          ? _self.base
          : base // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      trackingChannel: freezed == trackingChannel
          ? _self.trackingChannel
          : trackingChannel // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _self.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      license: freezed == license
          ? _self.license
          : license // ignore: cast_nullable_to_non_nullable
              as String?,
      mountedFrom: freezed == mountedFrom
          ? _self.mountedFrom
          : mountedFrom // ignore: cast_nullable_to_non_nullable
              as String?,
      storeUrl: freezed == storeUrl
          ? _self.storeUrl
          : storeUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      hold: freezed == hold
          ? _self.hold
          : hold // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      installDate: freezed == installDate
          ? _self.installDate
          : installDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      downloadSize: freezed == downloadSize
          ? _self.downloadSize
          : downloadSize // ignore: cast_nullable_to_non_nullable
              as int?,
      installedSize: freezed == installedSize
          ? _self.installedSize
          : installedSize // ignore: cast_nullable_to_non_nullable
              as int?,
      publisher: freezed == publisher
          ? _self.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as SnapPublisher?,
      refreshInhibit: freezed == refreshInhibit
          ? _self.refreshInhibit
          : refreshInhibit // ignore: cast_nullable_to_non_nullable
              as RefreshInhibit?,
    ));
  }

  /// Create a copy of Snap
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SnapPublisherCopyWith<$Res>? get publisher {
    if (_self.publisher == null) {
      return null;
    }

    return $SnapPublisherCopyWith<$Res>(_self.publisher!, (value) {
      return _then(_self.copyWith(publisher: value));
    });
  }

  /// Create a copy of Snap
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RefreshInhibitCopyWith<$Res>? get refreshInhibit {
    if (_self.refreshInhibit == null) {
      return null;
    }

    return $RefreshInhibitCopyWith<$Res>(_self.refreshInhibit!, (value) {
      return _then(_self.copyWith(refreshInhibit: value));
    });
  }
}

/// @nodoc
mixin _$SnapIcon {
  String get contentType;
  Uint8List get bytes;

  /// Create a copy of SnapIcon
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SnapIconCopyWith<SnapIcon> get copyWith =>
      _$SnapIconCopyWithImpl<SnapIcon>(this as SnapIcon, _$identity);

  @override
  bool operator ==(Object other) {
    final _this = this as SnapIcon;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SnapIcon &&
            (identical(other.contentType, _this.contentType) ||
                other.contentType == _this.contentType) &&
            const DeepCollectionEquality().equals(other.bytes, _this.bytes));
  }

  @override
  int get hashCode {
    final _this = this as SnapIcon;
    return Object.hash(runtimeType, _this.contentType,
        const DeepCollectionEquality().hash(_this.bytes));
  }

  @override
  String toString() {
    final _this = this as SnapIcon;
    return 'SnapIcon(contentType: ${_this.contentType}, bytes: ${_this.bytes})';
  }
}

/// @nodoc
abstract mixin class $SnapIconCopyWith<$Res> {
  factory $SnapIconCopyWith(SnapIcon value, $Res Function(SnapIcon) _then) =
      _$SnapIconCopyWithImpl;
  @useResult
  $Res call({String contentType, Uint8List bytes});
}

/// @nodoc
class _$SnapIconCopyWithImpl<$Res> implements $SnapIconCopyWith<$Res> {
  _$SnapIconCopyWithImpl(this._self, this._then);

  final SnapIcon _self;
  final $Res Function(SnapIcon) _then;

  /// Create a copy of SnapIcon
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentType = null,
    Object? bytes = null,
  }) {
    return _then(SnapIcon(
      contentType: null == contentType
          ? _self.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String,
      bytes: null == bytes
          ? _self.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// Adds pattern-matching-related methods to [SnapIcon].
extension SnapIconPatterns on SnapIcon {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SnapIcon value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapIcon() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SnapIcon value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapIcon():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SnapIcon value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapIcon() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String contentType, Uint8List bytes)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapIcon() when $default != null:
        return $default(_that.contentType, _that.bytes);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String contentType, Uint8List bytes) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapIcon():
        return $default(_that.contentType, _that.bytes);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String contentType, Uint8List bytes)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapIcon() when $default != null:
        return $default(_that.contentType, _that.bytes);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _SnapIcon implements SnapIcon {
  const _SnapIcon({required this.contentType, required this.bytes});

  @override
  final String contentType;
  @override
  final Uint8List bytes;

  /// Create a copy of SnapIcon
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SnapIconCopyWith<_SnapIcon> get copyWith =>
      __$SnapIconCopyWithImpl<_SnapIcon>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SnapIcon &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            const DeepCollectionEquality().equals(other.bytes, bytes));
  }

  @override
  int get hashCode {
    return Object.hash(
        runtimeType, contentType, const DeepCollectionEquality().hash(bytes));
  }

  @override
  String toString() {
    return 'SnapIcon(contentType: $contentType, bytes: $bytes)';
  }
}

/// @nodoc
abstract mixin class _$SnapIconCopyWith<$Res>
    implements $SnapIconCopyWith<$Res> {
  factory _$SnapIconCopyWith(_SnapIcon value, $Res Function(_SnapIcon) _then) =
      __$SnapIconCopyWithImpl;
  @override
  @useResult
  $Res call({String contentType, Uint8List bytes});
}

/// @nodoc
class __$SnapIconCopyWithImpl<$Res> implements _$SnapIconCopyWith<$Res> {
  __$SnapIconCopyWithImpl(this._self, this._then);

  final _SnapIcon _self;
  final $Res Function(_SnapIcon) _then;

  /// Create a copy of SnapIcon
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? contentType = null,
    Object? bytes = null,
  }) {
    return _then(_SnapIcon(
      contentType: null == contentType
          ? _self.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String,
      bytes: null == bytes
          ? _self.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc
mixin _$SnapDeclaration {
  String get snapId;
  String? get type;
  String? get authorityId;
  int get revision;
  int get series;
  String? get publisherId;
  String? get snapName;
  String? get timestamp;
  String? get signKey;

  /// Create a copy of SnapDeclaration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SnapDeclarationCopyWith<SnapDeclaration> get copyWith =>
      _$SnapDeclarationCopyWithImpl<SnapDeclaration>(
          this as SnapDeclaration, _$identity);

  /// Serializes this SnapDeclaration to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as SnapDeclaration;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SnapDeclaration &&
            (identical(other.snapId, _this.snapId) ||
                other.snapId == _this.snapId) &&
            (identical(other.type, _this.type) || other.type == _this.type) &&
            (identical(other.authorityId, _this.authorityId) ||
                other.authorityId == _this.authorityId) &&
            (identical(other.revision, _this.revision) ||
                other.revision == _this.revision) &&
            (identical(other.series, _this.series) ||
                other.series == _this.series) &&
            (identical(other.publisherId, _this.publisherId) ||
                other.publisherId == _this.publisherId) &&
            (identical(other.snapName, _this.snapName) ||
                other.snapName == _this.snapName) &&
            (identical(other.timestamp, _this.timestamp) ||
                other.timestamp == _this.timestamp) &&
            (identical(other.signKey, _this.signKey) ||
                other.signKey == _this.signKey));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as SnapDeclaration;
    return Object.hash(
        runtimeType,
        _this.snapId,
        _this.type,
        _this.authorityId,
        _this.revision,
        _this.series,
        _this.publisherId,
        _this.snapName,
        _this.timestamp,
        _this.signKey);
  }

  @override
  String toString() {
    final _this = this as SnapDeclaration;
    return 'SnapDeclaration(snapId: ${_this.snapId}, type: ${_this.type}, authorityId: ${_this.authorityId}, revision: ${_this.revision}, series: ${_this.series}, publisherId: ${_this.publisherId}, snapName: ${_this.snapName}, timestamp: ${_this.timestamp}, signKey: ${_this.signKey})';
  }
}

/// @nodoc
abstract mixin class $SnapDeclarationCopyWith<$Res> {
  factory $SnapDeclarationCopyWith(
          SnapDeclaration value, $Res Function(SnapDeclaration) _then) =
      _$SnapDeclarationCopyWithImpl;
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
class _$SnapDeclarationCopyWithImpl<$Res>
    implements $SnapDeclarationCopyWith<$Res> {
  _$SnapDeclarationCopyWithImpl(this._self, this._then);

  final SnapDeclaration _self;
  final $Res Function(SnapDeclaration) _then;

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
    return _then(SnapDeclaration(
      snapId: null == snapId
          ? _self.snapId
          : snapId // ignore: cast_nullable_to_non_nullable
              as String,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      authorityId: freezed == authorityId
          ? _self.authorityId
          : authorityId // ignore: cast_nullable_to_non_nullable
              as String?,
      revision: null == revision
          ? _self.revision
          : revision // ignore: cast_nullable_to_non_nullable
              as int,
      series: null == series
          ? _self.series
          : series // ignore: cast_nullable_to_non_nullable
              as int,
      publisherId: freezed == publisherId
          ? _self.publisherId
          : publisherId // ignore: cast_nullable_to_non_nullable
              as String?,
      snapName: freezed == snapName
          ? _self.snapName
          : snapName // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _self.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      signKey: freezed == signKey
          ? _self.signKey
          : signKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [SnapDeclaration].
extension SnapDeclarationPatterns on SnapDeclaration {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SnapDeclaration value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapDeclaration() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SnapDeclaration value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapDeclaration():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SnapDeclaration value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapDeclaration() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String snapId,
            String? type,
            String? authorityId,
            int revision,
            int series,
            String? publisherId,
            String? snapName,
            String? timestamp,
            String? signKey)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapDeclaration() when $default != null:
        return $default(
            _that.snapId,
            _that.type,
            _that.authorityId,
            _that.revision,
            _that.series,
            _that.publisherId,
            _that.snapName,
            _that.timestamp,
            _that.signKey);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String snapId,
            String? type,
            String? authorityId,
            int revision,
            int series,
            String? publisherId,
            String? snapName,
            String? timestamp,
            String? signKey)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapDeclaration():
        return $default(
            _that.snapId,
            _that.type,
            _that.authorityId,
            _that.revision,
            _that.series,
            _that.publisherId,
            _that.snapName,
            _that.timestamp,
            _that.signKey);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String snapId,
            String? type,
            String? authorityId,
            int revision,
            int series,
            String? publisherId,
            String? snapName,
            String? timestamp,
            String? signKey)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapDeclaration() when $default != null:
        return $default(
            _that.snapId,
            _that.type,
            _that.authorityId,
            _that.revision,
            _that.series,
            _that.publisherId,
            _that.snapName,
            _that.timestamp,
            _that.signKey);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SnapDeclaration implements SnapDeclaration {
  const _SnapDeclaration(
      {required this.snapId,
      this.type,
      this.authorityId,
      this.revision = 0,
      this.series = 0,
      this.publisherId,
      this.snapName,
      this.timestamp,
      this.signKey});
  factory _SnapDeclaration.fromJson(Map<String, dynamic> json) =>
      _$SnapDeclarationFromJson(json);

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

  /// Create a copy of SnapDeclaration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SnapDeclarationCopyWith<_SnapDeclaration> get copyWith =>
      __$SnapDeclarationCopyWithImpl<_SnapDeclaration>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SnapDeclarationToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SnapDeclaration &&
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
  int get hashCode {
    return Object.hash(runtimeType, snapId, type, authorityId, revision, series,
        publisherId, snapName, timestamp, signKey);
  }

  @override
  String toString() {
    return 'SnapDeclaration(snapId: $snapId, type: $type, authorityId: $authorityId, revision: $revision, series: $series, publisherId: $publisherId, snapName: $snapName, timestamp: $timestamp, signKey: $signKey)';
  }
}

/// @nodoc
abstract mixin class _$SnapDeclarationCopyWith<$Res>
    implements $SnapDeclarationCopyWith<$Res> {
  factory _$SnapDeclarationCopyWith(
          _SnapDeclaration value, $Res Function(_SnapDeclaration) _then) =
      __$SnapDeclarationCopyWithImpl;
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
class __$SnapDeclarationCopyWithImpl<$Res>
    implements _$SnapDeclarationCopyWith<$Res> {
  __$SnapDeclarationCopyWithImpl(this._self, this._then);

  final _SnapDeclaration _self;
  final $Res Function(_SnapDeclaration) _then;

  /// Create a copy of SnapDeclaration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_SnapDeclaration(
      snapId: null == snapId
          ? _self.snapId
          : snapId // ignore: cast_nullable_to_non_nullable
              as String,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      authorityId: freezed == authorityId
          ? _self.authorityId
          : authorityId // ignore: cast_nullable_to_non_nullable
              as String?,
      revision: null == revision
          ? _self.revision
          : revision // ignore: cast_nullable_to_non_nullable
              as int,
      series: null == series
          ? _self.series
          : series // ignore: cast_nullable_to_non_nullable
              as int,
      publisherId: freezed == publisherId
          ? _self.publisherId
          : publisherId // ignore: cast_nullable_to_non_nullable
              as String?,
      snapName: freezed == snapName
          ? _self.snapName
          : snapName // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _self.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      signKey: freezed == signKey
          ? _self.signKey
          : signKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$SnapdSystemInfoResponse {
  SnapdSystemRefreshInfo get refresh;
  String? get architecture;
  String? get buildId;
  @JsonKey(unknownEnumValue: SnapConfinement.unknown)
  SnapConfinement get confinement;
  Map<String, dynamic>? get features;
  String? get kernelVersion;
  bool get managed;
  bool get onClassic;
  String? get series;
  String? get systemMode;
  String? get version;

  /// Create a copy of SnapdSystemInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SnapdSystemInfoResponseCopyWith<SnapdSystemInfoResponse> get copyWith =>
      _$SnapdSystemInfoResponseCopyWithImpl<SnapdSystemInfoResponse>(
          this as SnapdSystemInfoResponse, _$identity);

  /// Serializes this SnapdSystemInfoResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as SnapdSystemInfoResponse;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SnapdSystemInfoResponse &&
            (identical(other.refresh, _this.refresh) ||
                other.refresh == _this.refresh) &&
            (identical(other.architecture, _this.architecture) ||
                other.architecture == _this.architecture) &&
            (identical(other.buildId, _this.buildId) ||
                other.buildId == _this.buildId) &&
            (identical(other.confinement, _this.confinement) ||
                other.confinement == _this.confinement) &&
            const DeepCollectionEquality()
                .equals(other.features, _this.features) &&
            (identical(other.kernelVersion, _this.kernelVersion) ||
                other.kernelVersion == _this.kernelVersion) &&
            (identical(other.managed, _this.managed) ||
                other.managed == _this.managed) &&
            (identical(other.onClassic, _this.onClassic) ||
                other.onClassic == _this.onClassic) &&
            (identical(other.series, _this.series) ||
                other.series == _this.series) &&
            (identical(other.systemMode, _this.systemMode) ||
                other.systemMode == _this.systemMode) &&
            (identical(other.version, _this.version) ||
                other.version == _this.version));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as SnapdSystemInfoResponse;
    return Object.hash(
        runtimeType,
        _this.refresh,
        _this.architecture,
        _this.buildId,
        _this.confinement,
        const DeepCollectionEquality().hash(_this.features),
        _this.kernelVersion,
        _this.managed,
        _this.onClassic,
        _this.series,
        _this.systemMode,
        _this.version);
  }

  @override
  String toString() {
    final _this = this as SnapdSystemInfoResponse;
    return 'SnapdSystemInfoResponse(refresh: ${_this.refresh}, architecture: ${_this.architecture}, buildId: ${_this.buildId}, confinement: ${_this.confinement}, features: ${_this.features}, kernelVersion: ${_this.kernelVersion}, managed: ${_this.managed}, onClassic: ${_this.onClassic}, series: ${_this.series}, systemMode: ${_this.systemMode}, version: ${_this.version})';
  }
}

/// @nodoc
abstract mixin class $SnapdSystemInfoResponseCopyWith<$Res> {
  factory $SnapdSystemInfoResponseCopyWith(SnapdSystemInfoResponse value,
          $Res Function(SnapdSystemInfoResponse) _then) =
      _$SnapdSystemInfoResponseCopyWithImpl;
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
class _$SnapdSystemInfoResponseCopyWithImpl<$Res>
    implements $SnapdSystemInfoResponseCopyWith<$Res> {
  _$SnapdSystemInfoResponseCopyWithImpl(this._self, this._then);

  final SnapdSystemInfoResponse _self;
  final $Res Function(SnapdSystemInfoResponse) _then;

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
    return _then(SnapdSystemInfoResponse(
      refresh: null == refresh
          ? _self.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as SnapdSystemRefreshInfo,
      architecture: freezed == architecture
          ? _self.architecture
          : architecture // ignore: cast_nullable_to_non_nullable
              as String?,
      buildId: freezed == buildId
          ? _self.buildId
          : buildId // ignore: cast_nullable_to_non_nullable
              as String?,
      confinement: null == confinement
          ? _self.confinement
          : confinement // ignore: cast_nullable_to_non_nullable
              as SnapConfinement,
      features: freezed == features
          ? _self.features
          : features // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      kernelVersion: freezed == kernelVersion
          ? _self.kernelVersion
          : kernelVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      managed: null == managed
          ? _self.managed
          : managed // ignore: cast_nullable_to_non_nullable
              as bool,
      onClassic: null == onClassic
          ? _self.onClassic
          : onClassic // ignore: cast_nullable_to_non_nullable
              as bool,
      series: freezed == series
          ? _self.series
          : series // ignore: cast_nullable_to_non_nullable
              as String?,
      systemMode: freezed == systemMode
          ? _self.systemMode
          : systemMode // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _self.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of SnapdSystemInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SnapdSystemRefreshInfoCopyWith<$Res> get refresh {
    return $SnapdSystemRefreshInfoCopyWith<$Res>(_self.refresh, (value) {
      return _then(_self.copyWith(refresh: value));
    });
  }
}

/// Adds pattern-matching-related methods to [SnapdSystemInfoResponse].
extension SnapdSystemInfoResponsePatterns on SnapdSystemInfoResponse {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SnapdSystemInfoResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapdSystemInfoResponse() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SnapdSystemInfoResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdSystemInfoResponse():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SnapdSystemInfoResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdSystemInfoResponse() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            SnapdSystemRefreshInfo refresh,
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
            String? version)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapdSystemInfoResponse() when $default != null:
        return $default(
            _that.refresh,
            _that.architecture,
            _that.buildId,
            _that.confinement,
            _that.features,
            _that.kernelVersion,
            _that.managed,
            _that.onClassic,
            _that.series,
            _that.systemMode,
            _that.version);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            SnapdSystemRefreshInfo refresh,
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
            String? version)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdSystemInfoResponse():
        return $default(
            _that.refresh,
            _that.architecture,
            _that.buildId,
            _that.confinement,
            _that.features,
            _that.kernelVersion,
            _that.managed,
            _that.onClassic,
            _that.series,
            _that.systemMode,
            _that.version);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            SnapdSystemRefreshInfo refresh,
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
            String? version)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdSystemInfoResponse() when $default != null:
        return $default(
            _that.refresh,
            _that.architecture,
            _that.buildId,
            _that.confinement,
            _that.features,
            _that.kernelVersion,
            _that.managed,
            _that.onClassic,
            _that.series,
            _that.systemMode,
            _that.version);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SnapdSystemInfoResponse implements SnapdSystemInfoResponse {
  const _SnapdSystemInfoResponse(
      {required this.refresh,
      this.architecture,
      this.buildId,
      @JsonKey(unknownEnumValue: SnapConfinement.unknown)
      this.confinement = SnapConfinement.unknown,
      Map<String, dynamic>? features,
      this.kernelVersion,
      this.managed = false,
      this.onClassic = false,
      this.series,
      this.systemMode,
      this.version})
      : _features = features;
  factory _SnapdSystemInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$SnapdSystemInfoResponseFromJson(json);

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

  /// Create a copy of SnapdSystemInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SnapdSystemInfoResponseCopyWith<_SnapdSystemInfoResponse> get copyWith =>
      __$SnapdSystemInfoResponseCopyWithImpl<_SnapdSystemInfoResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SnapdSystemInfoResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SnapdSystemInfoResponse &&
            (identical(other.refresh, refresh) || other.refresh == refresh) &&
            (identical(other.architecture, architecture) ||
                other.architecture == architecture) &&
            (identical(other.buildId, buildId) || other.buildId == buildId) &&
            (identical(other.confinement, confinement) ||
                other.confinement == confinement) &&
            const DeepCollectionEquality().equals(other.features, _features) &&
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
  int get hashCode {
    return Object.hash(
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
  }

  @override
  String toString() {
    return 'SnapdSystemInfoResponse(refresh: $refresh, architecture: $architecture, buildId: $buildId, confinement: $confinement, features: $features, kernelVersion: $kernelVersion, managed: $managed, onClassic: $onClassic, series: $series, systemMode: $systemMode, version: $version)';
  }
}

/// @nodoc
abstract mixin class _$SnapdSystemInfoResponseCopyWith<$Res>
    implements $SnapdSystemInfoResponseCopyWith<$Res> {
  factory _$SnapdSystemInfoResponseCopyWith(_SnapdSystemInfoResponse value,
          $Res Function(_SnapdSystemInfoResponse) _then) =
      __$SnapdSystemInfoResponseCopyWithImpl;
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
class __$SnapdSystemInfoResponseCopyWithImpl<$Res>
    implements _$SnapdSystemInfoResponseCopyWith<$Res> {
  __$SnapdSystemInfoResponseCopyWithImpl(this._self, this._then);

  final _SnapdSystemInfoResponse _self;
  final $Res Function(_SnapdSystemInfoResponse) _then;

  /// Create a copy of SnapdSystemInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_SnapdSystemInfoResponse(
      refresh: null == refresh
          ? _self.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as SnapdSystemRefreshInfo,
      architecture: freezed == architecture
          ? _self.architecture
          : architecture // ignore: cast_nullable_to_non_nullable
              as String?,
      buildId: freezed == buildId
          ? _self.buildId
          : buildId // ignore: cast_nullable_to_non_nullable
              as String?,
      confinement: null == confinement
          ? _self.confinement
          : confinement // ignore: cast_nullable_to_non_nullable
              as SnapConfinement,
      features: freezed == features
          ? _self._features
          : features // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      kernelVersion: freezed == kernelVersion
          ? _self.kernelVersion
          : kernelVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      managed: null == managed
          ? _self.managed
          : managed // ignore: cast_nullable_to_non_nullable
              as bool,
      onClassic: null == onClassic
          ? _self.onClassic
          : onClassic // ignore: cast_nullable_to_non_nullable
              as bool,
      series: freezed == series
          ? _self.series
          : series // ignore: cast_nullable_to_non_nullable
              as String?,
      systemMode: freezed == systemMode
          ? _self.systemMode
          : systemMode // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _self.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of SnapdSystemInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SnapdSystemRefreshInfoCopyWith<$Res> get refresh {
    return $SnapdSystemRefreshInfoCopyWith<$Res>(_self.refresh, (value) {
      return _then(_self.copyWith(refresh: value));
    });
  }
}

/// @nodoc
mixin _$SnapdSystemRefreshInfo {
  @_SnapdDateTimeConverter()
  DateTime get next;
  DateTime? get last;

  /// Create a copy of SnapdSystemRefreshInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SnapdSystemRefreshInfoCopyWith<SnapdSystemRefreshInfo> get copyWith =>
      _$SnapdSystemRefreshInfoCopyWithImpl<SnapdSystemRefreshInfo>(
          this as SnapdSystemRefreshInfo, _$identity);

  /// Serializes this SnapdSystemRefreshInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as SnapdSystemRefreshInfo;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SnapdSystemRefreshInfo &&
            (identical(other.next, _this.next) || other.next == _this.next) &&
            (identical(other.last, _this.last) || other.last == _this.last));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as SnapdSystemRefreshInfo;
    return Object.hash(runtimeType, _this.next, _this.last);
  }

  @override
  String toString() {
    final _this = this as SnapdSystemRefreshInfo;
    return 'SnapdSystemRefreshInfo(next: ${_this.next}, last: ${_this.last})';
  }
}

/// @nodoc
abstract mixin class $SnapdSystemRefreshInfoCopyWith<$Res> {
  factory $SnapdSystemRefreshInfoCopyWith(SnapdSystemRefreshInfo value,
          $Res Function(SnapdSystemRefreshInfo) _then) =
      _$SnapdSystemRefreshInfoCopyWithImpl;
  @useResult
  $Res call({@_SnapdDateTimeConverter() DateTime next, DateTime? last});
}

/// @nodoc
class _$SnapdSystemRefreshInfoCopyWithImpl<$Res>
    implements $SnapdSystemRefreshInfoCopyWith<$Res> {
  _$SnapdSystemRefreshInfoCopyWithImpl(this._self, this._then);

  final SnapdSystemRefreshInfo _self;
  final $Res Function(SnapdSystemRefreshInfo) _then;

  /// Create a copy of SnapdSystemRefreshInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? next = null,
    Object? last = freezed,
  }) {
    return _then(SnapdSystemRefreshInfo(
      next: null == next
          ? _self.next
          : next // ignore: cast_nullable_to_non_nullable
              as DateTime,
      last: freezed == last
          ? _self.last
          : last // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// Adds pattern-matching-related methods to [SnapdSystemRefreshInfo].
extension SnapdSystemRefreshInfoPatterns on SnapdSystemRefreshInfo {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SnapdSystemRefreshInfo value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapdSystemRefreshInfo() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SnapdSystemRefreshInfo value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdSystemRefreshInfo():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SnapdSystemRefreshInfo value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdSystemRefreshInfo() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(@_SnapdDateTimeConverter() DateTime next, DateTime? last)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapdSystemRefreshInfo() when $default != null:
        return $default(_that.next, _that.last);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(@_SnapdDateTimeConverter() DateTime next, DateTime? last)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdSystemRefreshInfo():
        return $default(_that.next, _that.last);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(@_SnapdDateTimeConverter() DateTime next, DateTime? last)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdSystemRefreshInfo() when $default != null:
        return $default(_that.next, _that.last);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SnapdSystemRefreshInfo implements SnapdSystemRefreshInfo {
  const _SnapdSystemRefreshInfo(
      {@_SnapdDateTimeConverter() required this.next, this.last});
  factory _SnapdSystemRefreshInfo.fromJson(Map<String, dynamic> json) =>
      _$SnapdSystemRefreshInfoFromJson(json);

  @override
  @_SnapdDateTimeConverter()
  final DateTime next;
  @override
  final DateTime? last;

  /// Create a copy of SnapdSystemRefreshInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SnapdSystemRefreshInfoCopyWith<_SnapdSystemRefreshInfo> get copyWith =>
      __$SnapdSystemRefreshInfoCopyWithImpl<_SnapdSystemRefreshInfo>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SnapdSystemRefreshInfoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SnapdSystemRefreshInfo &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.last, last) || other.last == last));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, next, last);
  }

  @override
  String toString() {
    return 'SnapdSystemRefreshInfo(next: $next, last: $last)';
  }
}

/// @nodoc
abstract mixin class _$SnapdSystemRefreshInfoCopyWith<$Res>
    implements $SnapdSystemRefreshInfoCopyWith<$Res> {
  factory _$SnapdSystemRefreshInfoCopyWith(_SnapdSystemRefreshInfo value,
          $Res Function(_SnapdSystemRefreshInfo) _then) =
      __$SnapdSystemRefreshInfoCopyWithImpl;
  @override
  @useResult
  $Res call({@_SnapdDateTimeConverter() DateTime next, DateTime? last});
}

/// @nodoc
class __$SnapdSystemRefreshInfoCopyWithImpl<$Res>
    implements _$SnapdSystemRefreshInfoCopyWith<$Res> {
  __$SnapdSystemRefreshInfoCopyWithImpl(this._self, this._then);

  final _SnapdSystemRefreshInfo _self;
  final $Res Function(_SnapdSystemRefreshInfo) _then;

  /// Create a copy of SnapdSystemRefreshInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? next = null,
    Object? last = freezed,
  }) {
    return _then(_SnapdSystemRefreshInfo(
      next: null == next
          ? _self.next
          : next // ignore: cast_nullable_to_non_nullable
              as DateTime,
      last: freezed == last
          ? _self.last
          : last // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
mixin _$SnapdLoginResponse {
  int get id;
  String? get username;
  String? get email;
  String? get macaroon;
  List<String> get discharges;
  List<String> get sshKeys;

  /// Create a copy of SnapdLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SnapdLoginResponseCopyWith<SnapdLoginResponse> get copyWith =>
      _$SnapdLoginResponseCopyWithImpl<SnapdLoginResponse>(
          this as SnapdLoginResponse, _$identity);

  /// Serializes this SnapdLoginResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as SnapdLoginResponse;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SnapdLoginResponse &&
            (identical(other.id, _this.id) || other.id == _this.id) &&
            (identical(other.username, _this.username) ||
                other.username == _this.username) &&
            (identical(other.email, _this.email) ||
                other.email == _this.email) &&
            (identical(other.macaroon, _this.macaroon) ||
                other.macaroon == _this.macaroon) &&
            const DeepCollectionEquality()
                .equals(other.discharges, _this.discharges) &&
            const DeepCollectionEquality()
                .equals(other.sshKeys, _this.sshKeys));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as SnapdLoginResponse;
    return Object.hash(
        runtimeType,
        _this.id,
        _this.username,
        _this.email,
        _this.macaroon,
        const DeepCollectionEquality().hash(_this.discharges),
        const DeepCollectionEquality().hash(_this.sshKeys));
  }

  @override
  String toString() {
    final _this = this as SnapdLoginResponse;
    return 'SnapdLoginResponse(id: ${_this.id}, username: ${_this.username}, email: ${_this.email}, macaroon: ${_this.macaroon}, discharges: ${_this.discharges}, sshKeys: ${_this.sshKeys})';
  }
}

/// @nodoc
abstract mixin class $SnapdLoginResponseCopyWith<$Res> {
  factory $SnapdLoginResponseCopyWith(
          SnapdLoginResponse value, $Res Function(SnapdLoginResponse) _then) =
      _$SnapdLoginResponseCopyWithImpl;
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
class _$SnapdLoginResponseCopyWithImpl<$Res>
    implements $SnapdLoginResponseCopyWith<$Res> {
  _$SnapdLoginResponseCopyWithImpl(this._self, this._then);

  final SnapdLoginResponse _self;
  final $Res Function(SnapdLoginResponse) _then;

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
    return _then(SnapdLoginResponse(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: freezed == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      macaroon: freezed == macaroon
          ? _self.macaroon
          : macaroon // ignore: cast_nullable_to_non_nullable
              as String?,
      discharges: null == discharges
          ? _self.discharges
          : discharges // ignore: cast_nullable_to_non_nullable
              as List<String>,
      sshKeys: null == sshKeys
          ? _self.sshKeys
          : sshKeys // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// Adds pattern-matching-related methods to [SnapdLoginResponse].
extension SnapdLoginResponsePatterns on SnapdLoginResponse {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SnapdLoginResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapdLoginResponse() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SnapdLoginResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdLoginResponse():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SnapdLoginResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdLoginResponse() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int id, String? username, String? email, String? macaroon,
            List<String> discharges, List<String> sshKeys)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapdLoginResponse() when $default != null:
        return $default(_that.id, _that.username, _that.email, _that.macaroon,
            _that.discharges, _that.sshKeys);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int id, String? username, String? email, String? macaroon,
            List<String> discharges, List<String> sshKeys)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdLoginResponse():
        return $default(_that.id, _that.username, _that.email, _that.macaroon,
            _that.discharges, _that.sshKeys);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int id, String? username, String? email, String? macaroon,
            List<String> discharges, List<String> sshKeys)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdLoginResponse() when $default != null:
        return $default(_that.id, _that.username, _that.email, _that.macaroon,
            _that.discharges, _that.sshKeys);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SnapdLoginResponse implements SnapdLoginResponse {
  const _SnapdLoginResponse(
      {required this.id,
      this.username,
      this.email,
      this.macaroon,
      List<String> discharges = const [],
      List<String> sshKeys = const []})
      : _discharges = discharges,
        _sshKeys = sshKeys;
  factory _SnapdLoginResponse.fromJson(Map<String, dynamic> json) =>
      _$SnapdLoginResponseFromJson(json);

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

  /// Create a copy of SnapdLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SnapdLoginResponseCopyWith<_SnapdLoginResponse> get copyWith =>
      __$SnapdLoginResponseCopyWithImpl<_SnapdLoginResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SnapdLoginResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SnapdLoginResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.macaroon, macaroon) ||
                other.macaroon == macaroon) &&
            const DeepCollectionEquality()
                .equals(other.discharges, _discharges) &&
            const DeepCollectionEquality().equals(other.sshKeys, _sshKeys));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(
        runtimeType,
        id,
        username,
        email,
        macaroon,
        const DeepCollectionEquality().hash(_discharges),
        const DeepCollectionEquality().hash(_sshKeys));
  }

  @override
  String toString() {
    return 'SnapdLoginResponse(id: $id, username: $username, email: $email, macaroon: $macaroon, discharges: $discharges, sshKeys: $sshKeys)';
  }
}

/// @nodoc
abstract mixin class _$SnapdLoginResponseCopyWith<$Res>
    implements $SnapdLoginResponseCopyWith<$Res> {
  factory _$SnapdLoginResponseCopyWith(
          _SnapdLoginResponse value, $Res Function(_SnapdLoginResponse) _then) =
      __$SnapdLoginResponseCopyWithImpl;
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
class __$SnapdLoginResponseCopyWithImpl<$Res>
    implements _$SnapdLoginResponseCopyWith<$Res> {
  __$SnapdLoginResponseCopyWithImpl(this._self, this._then);

  final _SnapdLoginResponse _self;
  final $Res Function(_SnapdLoginResponse) _then;

  /// Create a copy of SnapdLoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? username = freezed,
    Object? email = freezed,
    Object? macaroon = freezed,
    Object? discharges = null,
    Object? sshKeys = null,
  }) {
    return _then(_SnapdLoginResponse(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: freezed == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      macaroon: freezed == macaroon
          ? _self.macaroon
          : macaroon // ignore: cast_nullable_to_non_nullable
              as String?,
      discharges: null == discharges
          ? _self._discharges
          : discharges // ignore: cast_nullable_to_non_nullable
              as List<String>,
      sshKeys: null == sshKeys
          ? _self._sshKeys
          : sshKeys // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
mixin _$SnapPlug {
  String get snap;
  String get plug;
  @JsonKey(name: 'attrs')
  Map<String, dynamic> get attributes;
  String? get interface;
  List<SnapSlot> get connections;

  /// Create a copy of SnapPlug
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SnapPlugCopyWith<SnapPlug> get copyWith =>
      _$SnapPlugCopyWithImpl<SnapPlug>(this as SnapPlug, _$identity);

  /// Serializes this SnapPlug to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as SnapPlug;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SnapPlug &&
            (identical(other.snap, _this.snap) || other.snap == _this.snap) &&
            (identical(other.plug, _this.plug) || other.plug == _this.plug) &&
            const DeepCollectionEquality()
                .equals(other.attributes, _this.attributes) &&
            (identical(other.interface, _this.interface) ||
                other.interface == _this.interface) &&
            const DeepCollectionEquality()
                .equals(other.connections, _this.connections));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as SnapPlug;
    return Object.hash(
        runtimeType,
        _this.snap,
        _this.plug,
        const DeepCollectionEquality().hash(_this.attributes),
        _this.interface,
        const DeepCollectionEquality().hash(_this.connections));
  }

  @override
  String toString() {
    final _this = this as SnapPlug;
    return 'SnapPlug(snap: ${_this.snap}, plug: ${_this.plug}, attributes: ${_this.attributes}, interface: ${_this.interface}, connections: ${_this.connections})';
  }
}

/// @nodoc
abstract mixin class $SnapPlugCopyWith<$Res> {
  factory $SnapPlugCopyWith(SnapPlug value, $Res Function(SnapPlug) _then) =
      _$SnapPlugCopyWithImpl;
  @useResult
  $Res call(
      {String snap,
      String plug,
      @JsonKey(name: 'attrs') Map<String, dynamic> attributes,
      String? interface,
      List<SnapSlot> connections});
}

/// @nodoc
class _$SnapPlugCopyWithImpl<$Res> implements $SnapPlugCopyWith<$Res> {
  _$SnapPlugCopyWithImpl(this._self, this._then);

  final SnapPlug _self;
  final $Res Function(SnapPlug) _then;

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
    return _then(SnapPlug(
      snap: null == snap
          ? _self.snap
          : snap // ignore: cast_nullable_to_non_nullable
              as String,
      plug: null == plug
          ? _self.plug
          : plug // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: null == attributes
          ? _self.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      interface: freezed == interface
          ? _self.interface
          : interface // ignore: cast_nullable_to_non_nullable
              as String?,
      connections: null == connections
          ? _self.connections
          : connections // ignore: cast_nullable_to_non_nullable
              as List<SnapSlot>,
    ));
  }
}

/// Adds pattern-matching-related methods to [SnapPlug].
extension SnapPlugPatterns on SnapPlug {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SnapPlug value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapPlug() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SnapPlug value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapPlug():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SnapPlug value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapPlug() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String snap,
            String plug,
            @JsonKey(name: 'attrs') Map<String, dynamic> attributes,
            String? interface,
            List<SnapSlot> connections)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapPlug() when $default != null:
        return $default(_that.snap, _that.plug, _that.attributes,
            _that.interface, _that.connections);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String snap,
            String plug,
            @JsonKey(name: 'attrs') Map<String, dynamic> attributes,
            String? interface,
            List<SnapSlot> connections)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapPlug():
        return $default(_that.snap, _that.plug, _that.attributes,
            _that.interface, _that.connections);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String snap,
            String plug,
            @JsonKey(name: 'attrs') Map<String, dynamic> attributes,
            String? interface,
            List<SnapSlot> connections)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapPlug() when $default != null:
        return $default(_that.snap, _that.plug, _that.attributes,
            _that.interface, _that.connections);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SnapPlug implements SnapPlug {
  const _SnapPlug(
      {required this.snap,
      required this.plug,
      @JsonKey(name: 'attrs') Map<String, dynamic> attributes = const {},
      this.interface,
      List<SnapSlot> connections = const []})
      : _attributes = attributes,
        _connections = connections;
  factory _SnapPlug.fromJson(Map<String, dynamic> json) =>
      _$SnapPlugFromJson(json);

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

  /// Create a copy of SnapPlug
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SnapPlugCopyWith<_SnapPlug> get copyWith =>
      __$SnapPlugCopyWithImpl<_SnapPlug>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SnapPlugToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SnapPlug &&
            (identical(other.snap, snap) || other.snap == snap) &&
            (identical(other.plug, plug) || other.plug == plug) &&
            const DeepCollectionEquality()
                .equals(other.attributes, _attributes) &&
            (identical(other.interface, interface) ||
                other.interface == interface) &&
            const DeepCollectionEquality()
                .equals(other.connections, _connections));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(
        runtimeType,
        snap,
        plug,
        const DeepCollectionEquality().hash(_attributes),
        interface,
        const DeepCollectionEquality().hash(_connections));
  }

  @override
  String toString() {
    return 'SnapPlug(snap: $snap, plug: $plug, attributes: $attributes, interface: $interface, connections: $connections)';
  }
}

/// @nodoc
abstract mixin class _$SnapPlugCopyWith<$Res>
    implements $SnapPlugCopyWith<$Res> {
  factory _$SnapPlugCopyWith(_SnapPlug value, $Res Function(_SnapPlug) _then) =
      __$SnapPlugCopyWithImpl;
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
class __$SnapPlugCopyWithImpl<$Res> implements _$SnapPlugCopyWith<$Res> {
  __$SnapPlugCopyWithImpl(this._self, this._then);

  final _SnapPlug _self;
  final $Res Function(_SnapPlug) _then;

  /// Create a copy of SnapPlug
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? snap = null,
    Object? plug = null,
    Object? attributes = null,
    Object? interface = freezed,
    Object? connections = null,
  }) {
    return _then(_SnapPlug(
      snap: null == snap
          ? _self.snap
          : snap // ignore: cast_nullable_to_non_nullable
              as String,
      plug: null == plug
          ? _self.plug
          : plug // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: null == attributes
          ? _self._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      interface: freezed == interface
          ? _self.interface
          : interface // ignore: cast_nullable_to_non_nullable
              as String?,
      connections: null == connections
          ? _self._connections
          : connections // ignore: cast_nullable_to_non_nullable
              as List<SnapSlot>,
    ));
  }
}

/// @nodoc
mixin _$SnapSlot {
  String get snap;
  String get slot;
  @JsonKey(name: 'attrs')
  Map<String, dynamic> get attributes;
  String? get interface;
  List<SnapPlug> get connections;

  /// Create a copy of SnapSlot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SnapSlotCopyWith<SnapSlot> get copyWith =>
      _$SnapSlotCopyWithImpl<SnapSlot>(this as SnapSlot, _$identity);

  /// Serializes this SnapSlot to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as SnapSlot;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SnapSlot &&
            (identical(other.snap, _this.snap) || other.snap == _this.snap) &&
            (identical(other.slot, _this.slot) || other.slot == _this.slot) &&
            const DeepCollectionEquality()
                .equals(other.attributes, _this.attributes) &&
            (identical(other.interface, _this.interface) ||
                other.interface == _this.interface) &&
            const DeepCollectionEquality()
                .equals(other.connections, _this.connections));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as SnapSlot;
    return Object.hash(
        runtimeType,
        _this.snap,
        _this.slot,
        const DeepCollectionEquality().hash(_this.attributes),
        _this.interface,
        const DeepCollectionEquality().hash(_this.connections));
  }

  @override
  String toString() {
    final _this = this as SnapSlot;
    return 'SnapSlot(snap: ${_this.snap}, slot: ${_this.slot}, attributes: ${_this.attributes}, interface: ${_this.interface}, connections: ${_this.connections})';
  }
}

/// @nodoc
abstract mixin class $SnapSlotCopyWith<$Res> {
  factory $SnapSlotCopyWith(SnapSlot value, $Res Function(SnapSlot) _then) =
      _$SnapSlotCopyWithImpl;
  @useResult
  $Res call(
      {String snap,
      String slot,
      @JsonKey(name: 'attrs') Map<String, dynamic> attributes,
      String? interface,
      List<SnapPlug> connections});
}

/// @nodoc
class _$SnapSlotCopyWithImpl<$Res> implements $SnapSlotCopyWith<$Res> {
  _$SnapSlotCopyWithImpl(this._self, this._then);

  final SnapSlot _self;
  final $Res Function(SnapSlot) _then;

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
    return _then(SnapSlot(
      snap: null == snap
          ? _self.snap
          : snap // ignore: cast_nullable_to_non_nullable
              as String,
      slot: null == slot
          ? _self.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: null == attributes
          ? _self.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      interface: freezed == interface
          ? _self.interface
          : interface // ignore: cast_nullable_to_non_nullable
              as String?,
      connections: null == connections
          ? _self.connections
          : connections // ignore: cast_nullable_to_non_nullable
              as List<SnapPlug>,
    ));
  }
}

/// Adds pattern-matching-related methods to [SnapSlot].
extension SnapSlotPatterns on SnapSlot {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SnapSlot value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapSlot() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SnapSlot value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapSlot():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SnapSlot value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapSlot() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String snap,
            String slot,
            @JsonKey(name: 'attrs') Map<String, dynamic> attributes,
            String? interface,
            List<SnapPlug> connections)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapSlot() when $default != null:
        return $default(_that.snap, _that.slot, _that.attributes,
            _that.interface, _that.connections);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String snap,
            String slot,
            @JsonKey(name: 'attrs') Map<String, dynamic> attributes,
            String? interface,
            List<SnapPlug> connections)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapSlot():
        return $default(_that.snap, _that.slot, _that.attributes,
            _that.interface, _that.connections);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String snap,
            String slot,
            @JsonKey(name: 'attrs') Map<String, dynamic> attributes,
            String? interface,
            List<SnapPlug> connections)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapSlot() when $default != null:
        return $default(_that.snap, _that.slot, _that.attributes,
            _that.interface, _that.connections);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SnapSlot implements SnapSlot {
  const _SnapSlot(
      {required this.snap,
      required this.slot,
      @JsonKey(name: 'attrs') Map<String, dynamic> attributes = const {},
      this.interface,
      List<SnapPlug> connections = const []})
      : _attributes = attributes,
        _connections = connections;
  factory _SnapSlot.fromJson(Map<String, dynamic> json) =>
      _$SnapSlotFromJson(json);

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

  /// Create a copy of SnapSlot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SnapSlotCopyWith<_SnapSlot> get copyWith =>
      __$SnapSlotCopyWithImpl<_SnapSlot>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SnapSlotToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SnapSlot &&
            (identical(other.snap, snap) || other.snap == snap) &&
            (identical(other.slot, slot) || other.slot == slot) &&
            const DeepCollectionEquality()
                .equals(other.attributes, _attributes) &&
            (identical(other.interface, interface) ||
                other.interface == interface) &&
            const DeepCollectionEquality()
                .equals(other.connections, _connections));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(
        runtimeType,
        snap,
        slot,
        const DeepCollectionEquality().hash(_attributes),
        interface,
        const DeepCollectionEquality().hash(_connections));
  }

  @override
  String toString() {
    return 'SnapSlot(snap: $snap, slot: $slot, attributes: $attributes, interface: $interface, connections: $connections)';
  }
}

/// @nodoc
abstract mixin class _$SnapSlotCopyWith<$Res>
    implements $SnapSlotCopyWith<$Res> {
  factory _$SnapSlotCopyWith(_SnapSlot value, $Res Function(_SnapSlot) _then) =
      __$SnapSlotCopyWithImpl;
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
class __$SnapSlotCopyWithImpl<$Res> implements _$SnapSlotCopyWith<$Res> {
  __$SnapSlotCopyWithImpl(this._self, this._then);

  final _SnapSlot _self;
  final $Res Function(_SnapSlot) _then;

  /// Create a copy of SnapSlot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? snap = null,
    Object? slot = null,
    Object? attributes = null,
    Object? interface = freezed,
    Object? connections = null,
  }) {
    return _then(_SnapSlot(
      snap: null == snap
          ? _self.snap
          : snap // ignore: cast_nullable_to_non_nullable
              as String,
      slot: null == slot
          ? _self.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: null == attributes
          ? _self._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      interface: freezed == interface
          ? _self.interface
          : interface // ignore: cast_nullable_to_non_nullable
              as String?,
      connections: null == connections
          ? _self._connections
          : connections // ignore: cast_nullable_to_non_nullable
              as List<SnapPlug>,
    ));
  }
}

/// @nodoc
mixin _$SnapConnection {
  SnapSlot get slot;
  SnapPlug get plug;
  String get interface;
  @JsonKey(name: 'slot-attrs')
  Map<String, dynamic> get slotAttributes;
  @JsonKey(name: 'plug-attrs')
  Map<String, dynamic> get plugAttributes;
  bool get manual;

  /// Create a copy of SnapConnection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SnapConnectionCopyWith<SnapConnection> get copyWith =>
      _$SnapConnectionCopyWithImpl<SnapConnection>(
          this as SnapConnection, _$identity);

  /// Serializes this SnapConnection to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as SnapConnection;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SnapConnection &&
            (identical(other.slot, _this.slot) || other.slot == _this.slot) &&
            (identical(other.plug, _this.plug) || other.plug == _this.plug) &&
            (identical(other.interface, _this.interface) ||
                other.interface == _this.interface) &&
            const DeepCollectionEquality()
                .equals(other.slotAttributes, _this.slotAttributes) &&
            const DeepCollectionEquality()
                .equals(other.plugAttributes, _this.plugAttributes) &&
            (identical(other.manual, _this.manual) ||
                other.manual == _this.manual));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as SnapConnection;
    return Object.hash(
        runtimeType,
        _this.slot,
        _this.plug,
        _this.interface,
        const DeepCollectionEquality().hash(_this.slotAttributes),
        const DeepCollectionEquality().hash(_this.plugAttributes),
        _this.manual);
  }

  @override
  String toString() {
    final _this = this as SnapConnection;
    return 'SnapConnection(slot: ${_this.slot}, plug: ${_this.plug}, interface: ${_this.interface}, slotAttributes: ${_this.slotAttributes}, plugAttributes: ${_this.plugAttributes}, manual: ${_this.manual})';
  }
}

/// @nodoc
abstract mixin class $SnapConnectionCopyWith<$Res> {
  factory $SnapConnectionCopyWith(
          SnapConnection value, $Res Function(SnapConnection) _then) =
      _$SnapConnectionCopyWithImpl;
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
class _$SnapConnectionCopyWithImpl<$Res>
    implements $SnapConnectionCopyWith<$Res> {
  _$SnapConnectionCopyWithImpl(this._self, this._then);

  final SnapConnection _self;
  final $Res Function(SnapConnection) _then;

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
    return _then(SnapConnection(
      slot: null == slot
          ? _self.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as SnapSlot,
      plug: null == plug
          ? _self.plug
          : plug // ignore: cast_nullable_to_non_nullable
              as SnapPlug,
      interface: null == interface
          ? _self.interface
          : interface // ignore: cast_nullable_to_non_nullable
              as String,
      slotAttributes: null == slotAttributes
          ? _self.slotAttributes
          : slotAttributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      plugAttributes: null == plugAttributes
          ? _self.plugAttributes
          : plugAttributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      manual: null == manual
          ? _self.manual
          : manual // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of SnapConnection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SnapSlotCopyWith<$Res> get slot {
    return $SnapSlotCopyWith<$Res>(_self.slot, (value) {
      return _then(_self.copyWith(slot: value));
    });
  }

  /// Create a copy of SnapConnection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SnapPlugCopyWith<$Res> get plug {
    return $SnapPlugCopyWith<$Res>(_self.plug, (value) {
      return _then(_self.copyWith(plug: value));
    });
  }
}

/// Adds pattern-matching-related methods to [SnapConnection].
extension SnapConnectionPatterns on SnapConnection {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SnapConnection value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapConnection() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SnapConnection value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapConnection():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SnapConnection value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapConnection() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            SnapSlot slot,
            SnapPlug plug,
            String interface,
            @JsonKey(name: 'slot-attrs') Map<String, dynamic> slotAttributes,
            @JsonKey(name: 'plug-attrs') Map<String, dynamic> plugAttributes,
            bool manual)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapConnection() when $default != null:
        return $default(_that.slot, _that.plug, _that.interface,
            _that.slotAttributes, _that.plugAttributes, _that.manual);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            SnapSlot slot,
            SnapPlug plug,
            String interface,
            @JsonKey(name: 'slot-attrs') Map<String, dynamic> slotAttributes,
            @JsonKey(name: 'plug-attrs') Map<String, dynamic> plugAttributes,
            bool manual)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapConnection():
        return $default(_that.slot, _that.plug, _that.interface,
            _that.slotAttributes, _that.plugAttributes, _that.manual);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            SnapSlot slot,
            SnapPlug plug,
            String interface,
            @JsonKey(name: 'slot-attrs') Map<String, dynamic> slotAttributes,
            @JsonKey(name: 'plug-attrs') Map<String, dynamic> plugAttributes,
            bool manual)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapConnection() when $default != null:
        return $default(_that.slot, _that.plug, _that.interface,
            _that.slotAttributes, _that.plugAttributes, _that.manual);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SnapConnection implements SnapConnection {
  const _SnapConnection(
      {required this.slot,
      required this.plug,
      required this.interface,
      @JsonKey(name: 'slot-attrs')
      Map<String, dynamic> slotAttributes = const {},
      @JsonKey(name: 'plug-attrs')
      Map<String, dynamic> plugAttributes = const {},
      this.manual = false})
      : _slotAttributes = slotAttributes,
        _plugAttributes = plugAttributes;
  factory _SnapConnection.fromJson(Map<String, dynamic> json) =>
      _$SnapConnectionFromJson(json);

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

  /// Create a copy of SnapConnection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SnapConnectionCopyWith<_SnapConnection> get copyWith =>
      __$SnapConnectionCopyWithImpl<_SnapConnection>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SnapConnectionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SnapConnection &&
            (identical(other.slot, slot) || other.slot == slot) &&
            (identical(other.plug, plug) || other.plug == plug) &&
            (identical(other.interface, interface) ||
                other.interface == interface) &&
            const DeepCollectionEquality()
                .equals(other.slotAttributes, _slotAttributes) &&
            const DeepCollectionEquality()
                .equals(other.plugAttributes, _plugAttributes) &&
            (identical(other.manual, manual) || other.manual == manual));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(
        runtimeType,
        slot,
        plug,
        interface,
        const DeepCollectionEquality().hash(_slotAttributes),
        const DeepCollectionEquality().hash(_plugAttributes),
        manual);
  }

  @override
  String toString() {
    return 'SnapConnection(slot: $slot, plug: $plug, interface: $interface, slotAttributes: $slotAttributes, plugAttributes: $plugAttributes, manual: $manual)';
  }
}

/// @nodoc
abstract mixin class _$SnapConnectionCopyWith<$Res>
    implements $SnapConnectionCopyWith<$Res> {
  factory _$SnapConnectionCopyWith(
          _SnapConnection value, $Res Function(_SnapConnection) _then) =
      __$SnapConnectionCopyWithImpl;
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
class __$SnapConnectionCopyWithImpl<$Res>
    implements _$SnapConnectionCopyWith<$Res> {
  __$SnapConnectionCopyWithImpl(this._self, this._then);

  final _SnapConnection _self;
  final $Res Function(_SnapConnection) _then;

  /// Create a copy of SnapConnection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? slot = null,
    Object? plug = null,
    Object? interface = null,
    Object? slotAttributes = null,
    Object? plugAttributes = null,
    Object? manual = null,
  }) {
    return _then(_SnapConnection(
      slot: null == slot
          ? _self.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as SnapSlot,
      plug: null == plug
          ? _self.plug
          : plug // ignore: cast_nullable_to_non_nullable
              as SnapPlug,
      interface: null == interface
          ? _self.interface
          : interface // ignore: cast_nullable_to_non_nullable
              as String,
      slotAttributes: null == slotAttributes
          ? _self._slotAttributes
          : slotAttributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      plugAttributes: null == plugAttributes
          ? _self._plugAttributes
          : plugAttributes // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      manual: null == manual
          ? _self.manual
          : manual // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of SnapConnection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SnapSlotCopyWith<$Res> get slot {
    return $SnapSlotCopyWith<$Res>(_self.slot, (value) {
      return _then(_self.copyWith(slot: value));
    });
  }

  /// Create a copy of SnapConnection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SnapPlugCopyWith<$Res> get plug {
    return $SnapPlugCopyWith<$Res>(_self.plug, (value) {
      return _then(_self.copyWith(plug: value));
    });
  }
}

/// @nodoc
mixin _$SnapdConnectionsResponse {
  List<SnapConnection> get established;
  List<SnapPlug> get plugs;
  List<SnapSlot> get slots;
  List<SnapConnection> get undesired;

  /// Create a copy of SnapdConnectionsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SnapdConnectionsResponseCopyWith<SnapdConnectionsResponse> get copyWith =>
      _$SnapdConnectionsResponseCopyWithImpl<SnapdConnectionsResponse>(
          this as SnapdConnectionsResponse, _$identity);

  /// Serializes this SnapdConnectionsResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as SnapdConnectionsResponse;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SnapdConnectionsResponse &&
            const DeepCollectionEquality()
                .equals(other.established, _this.established) &&
            const DeepCollectionEquality().equals(other.plugs, _this.plugs) &&
            const DeepCollectionEquality().equals(other.slots, _this.slots) &&
            const DeepCollectionEquality()
                .equals(other.undesired, _this.undesired));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as SnapdConnectionsResponse;
    return Object.hash(
        runtimeType,
        const DeepCollectionEquality().hash(_this.established),
        const DeepCollectionEquality().hash(_this.plugs),
        const DeepCollectionEquality().hash(_this.slots),
        const DeepCollectionEquality().hash(_this.undesired));
  }

  @override
  String toString() {
    final _this = this as SnapdConnectionsResponse;
    return 'SnapdConnectionsResponse(established: ${_this.established}, plugs: ${_this.plugs}, slots: ${_this.slots}, undesired: ${_this.undesired})';
  }
}

/// @nodoc
abstract mixin class $SnapdConnectionsResponseCopyWith<$Res> {
  factory $SnapdConnectionsResponseCopyWith(SnapdConnectionsResponse value,
          $Res Function(SnapdConnectionsResponse) _then) =
      _$SnapdConnectionsResponseCopyWithImpl;
  @useResult
  $Res call(
      {List<SnapConnection> established,
      List<SnapPlug> plugs,
      List<SnapSlot> slots,
      List<SnapConnection> undesired});
}

/// @nodoc
class _$SnapdConnectionsResponseCopyWithImpl<$Res>
    implements $SnapdConnectionsResponseCopyWith<$Res> {
  _$SnapdConnectionsResponseCopyWithImpl(this._self, this._then);

  final SnapdConnectionsResponse _self;
  final $Res Function(SnapdConnectionsResponse) _then;

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
    return _then(SnapdConnectionsResponse(
      established: null == established
          ? _self.established
          : established // ignore: cast_nullable_to_non_nullable
              as List<SnapConnection>,
      plugs: null == plugs
          ? _self.plugs
          : plugs // ignore: cast_nullable_to_non_nullable
              as List<SnapPlug>,
      slots: null == slots
          ? _self.slots
          : slots // ignore: cast_nullable_to_non_nullable
              as List<SnapSlot>,
      undesired: null == undesired
          ? _self.undesired
          : undesired // ignore: cast_nullable_to_non_nullable
              as List<SnapConnection>,
    ));
  }
}

/// Adds pattern-matching-related methods to [SnapdConnectionsResponse].
extension SnapdConnectionsResponsePatterns on SnapdConnectionsResponse {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SnapdConnectionsResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapdConnectionsResponse() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SnapdConnectionsResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdConnectionsResponse():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SnapdConnectionsResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdConnectionsResponse() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<SnapConnection> established, List<SnapPlug> plugs,
            List<SnapSlot> slots, List<SnapConnection> undesired)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapdConnectionsResponse() when $default != null:
        return $default(
            _that.established, _that.plugs, _that.slots, _that.undesired);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<SnapConnection> established, List<SnapPlug> plugs,
            List<SnapSlot> slots, List<SnapConnection> undesired)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdConnectionsResponse():
        return $default(
            _that.established, _that.plugs, _that.slots, _that.undesired);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<SnapConnection> established, List<SnapPlug> plugs,
            List<SnapSlot> slots, List<SnapConnection> undesired)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdConnectionsResponse() when $default != null:
        return $default(
            _that.established, _that.plugs, _that.slots, _that.undesired);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SnapdConnectionsResponse implements SnapdConnectionsResponse {
  const _SnapdConnectionsResponse(
      {List<SnapConnection> established = const [],
      List<SnapPlug> plugs = const [],
      List<SnapSlot> slots = const [],
      List<SnapConnection> undesired = const []})
      : _established = established,
        _plugs = plugs,
        _slots = slots,
        _undesired = undesired;
  factory _SnapdConnectionsResponse.fromJson(Map<String, dynamic> json) =>
      _$SnapdConnectionsResponseFromJson(json);

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

  /// Create a copy of SnapdConnectionsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SnapdConnectionsResponseCopyWith<_SnapdConnectionsResponse> get copyWith =>
      __$SnapdConnectionsResponseCopyWithImpl<_SnapdConnectionsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SnapdConnectionsResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SnapdConnectionsResponse &&
            const DeepCollectionEquality()
                .equals(other.established, _established) &&
            const DeepCollectionEquality().equals(other.plugs, _plugs) &&
            const DeepCollectionEquality().equals(other.slots, _slots) &&
            const DeepCollectionEquality().equals(other.undesired, _undesired));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(
        runtimeType,
        const DeepCollectionEquality().hash(_established),
        const DeepCollectionEquality().hash(_plugs),
        const DeepCollectionEquality().hash(_slots),
        const DeepCollectionEquality().hash(_undesired));
  }

  @override
  String toString() {
    return 'SnapdConnectionsResponse(established: $established, plugs: $plugs, slots: $slots, undesired: $undesired)';
  }
}

/// @nodoc
abstract mixin class _$SnapdConnectionsResponseCopyWith<$Res>
    implements $SnapdConnectionsResponseCopyWith<$Res> {
  factory _$SnapdConnectionsResponseCopyWith(_SnapdConnectionsResponse value,
          $Res Function(_SnapdConnectionsResponse) _then) =
      __$SnapdConnectionsResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<SnapConnection> established,
      List<SnapPlug> plugs,
      List<SnapSlot> slots,
      List<SnapConnection> undesired});
}

/// @nodoc
class __$SnapdConnectionsResponseCopyWithImpl<$Res>
    implements _$SnapdConnectionsResponseCopyWith<$Res> {
  __$SnapdConnectionsResponseCopyWithImpl(this._self, this._then);

  final _SnapdConnectionsResponse _self;
  final $Res Function(_SnapdConnectionsResponse) _then;

  /// Create a copy of SnapdConnectionsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? established = null,
    Object? plugs = null,
    Object? slots = null,
    Object? undesired = null,
  }) {
    return _then(_SnapdConnectionsResponse(
      established: null == established
          ? _self._established
          : established // ignore: cast_nullable_to_non_nullable
              as List<SnapConnection>,
      plugs: null == plugs
          ? _self._plugs
          : plugs // ignore: cast_nullable_to_non_nullable
              as List<SnapPlug>,
      slots: null == slots
          ? _self._slots
          : slots // ignore: cast_nullable_to_non_nullable
              as List<SnapSlot>,
      undesired: null == undesired
          ? _self._undesired
          : undesired // ignore: cast_nullable_to_non_nullable
              as List<SnapConnection>,
    ));
  }
}

/// @nodoc
mixin _$SnapdChange {
  String get id;
  DateTime? get spawnTime;
  String? get kind;
  String? get summary;
  String? get status;
  bool get ready;
  DateTime? get readyTime;
  String? get err;
  List<SnapdTask> get tasks;
  @JsonKey(
      name: 'data',
      toJson: SnapdChange._snapNamesToJson,
      fromJson: SnapdChange._snapNamesFromJson)
  List<String> get snapNames;

  /// Create a copy of SnapdChange
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SnapdChangeCopyWith<SnapdChange> get copyWith =>
      _$SnapdChangeCopyWithImpl<SnapdChange>(this as SnapdChange, _$identity);

  /// Serializes this SnapdChange to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as SnapdChange;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SnapdChange &&
            (identical(other.id, _this.id) || other.id == _this.id) &&
            (identical(other.spawnTime, _this.spawnTime) ||
                other.spawnTime == _this.spawnTime) &&
            (identical(other.kind, _this.kind) || other.kind == _this.kind) &&
            (identical(other.summary, _this.summary) ||
                other.summary == _this.summary) &&
            (identical(other.status, _this.status) ||
                other.status == _this.status) &&
            (identical(other.ready, _this.ready) ||
                other.ready == _this.ready) &&
            (identical(other.readyTime, _this.readyTime) ||
                other.readyTime == _this.readyTime) &&
            (identical(other.err, _this.err) || other.err == _this.err) &&
            const DeepCollectionEquality().equals(other.tasks, _this.tasks) &&
            const DeepCollectionEquality()
                .equals(other.snapNames, _this.snapNames));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as SnapdChange;
    return Object.hash(
        runtimeType,
        _this.id,
        _this.spawnTime,
        _this.kind,
        _this.summary,
        _this.status,
        _this.ready,
        _this.readyTime,
        _this.err,
        const DeepCollectionEquality().hash(_this.tasks),
        const DeepCollectionEquality().hash(_this.snapNames));
  }

  @override
  String toString() {
    final _this = this as SnapdChange;
    return 'SnapdChange(id: ${_this.id}, spawnTime: ${_this.spawnTime}, kind: ${_this.kind}, summary: ${_this.summary}, status: ${_this.status}, ready: ${_this.ready}, readyTime: ${_this.readyTime}, err: ${_this.err}, tasks: ${_this.tasks}, snapNames: ${_this.snapNames})';
  }
}

/// @nodoc
abstract mixin class $SnapdChangeCopyWith<$Res> {
  factory $SnapdChangeCopyWith(
          SnapdChange value, $Res Function(SnapdChange) _then) =
      _$SnapdChangeCopyWithImpl;
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
class _$SnapdChangeCopyWithImpl<$Res> implements $SnapdChangeCopyWith<$Res> {
  _$SnapdChangeCopyWithImpl(this._self, this._then);

  final SnapdChange _self;
  final $Res Function(SnapdChange) _then;

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
    return _then(SnapdChange(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      spawnTime: freezed == spawnTime
          ? _self.spawnTime
          : spawnTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      kind: freezed == kind
          ? _self.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      summary: freezed == summary
          ? _self.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      ready: null == ready
          ? _self.ready
          : ready // ignore: cast_nullable_to_non_nullable
              as bool,
      readyTime: freezed == readyTime
          ? _self.readyTime
          : readyTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      err: freezed == err
          ? _self.err
          : err // ignore: cast_nullable_to_non_nullable
              as String?,
      tasks: null == tasks
          ? _self.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<SnapdTask>,
      snapNames: null == snapNames
          ? _self.snapNames
          : snapNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// Adds pattern-matching-related methods to [SnapdChange].
extension SnapdChangePatterns on SnapdChange {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SnapdChange value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapdChange() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SnapdChange value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdChange():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SnapdChange value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdChange() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id,
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
            List<String> snapNames)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapdChange() when $default != null:
        return $default(
            _that.id,
            _that.spawnTime,
            _that.kind,
            _that.summary,
            _that.status,
            _that.ready,
            _that.readyTime,
            _that.err,
            _that.tasks,
            _that.snapNames);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String id,
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
            List<String> snapNames)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdChange():
        return $default(
            _that.id,
            _that.spawnTime,
            _that.kind,
            _that.summary,
            _that.status,
            _that.ready,
            _that.readyTime,
            _that.err,
            _that.tasks,
            _that.snapNames);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String id,
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
            List<String> snapNames)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdChange() when $default != null:
        return $default(
            _that.id,
            _that.spawnTime,
            _that.kind,
            _that.summary,
            _that.status,
            _that.ready,
            _that.readyTime,
            _that.err,
            _that.tasks,
            _that.snapNames);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SnapdChange implements SnapdChange {
  const _SnapdChange(
      {required this.id,
      this.spawnTime,
      this.kind,
      this.summary,
      this.status,
      this.ready = false,
      this.readyTime,
      this.err,
      List<SnapdTask> tasks = const [],
      @JsonKey(
          name: 'data',
          toJson: SnapdChange._snapNamesToJson,
          fromJson: SnapdChange._snapNamesFromJson)
      List<String> snapNames = const []})
      : _tasks = tasks,
        _snapNames = snapNames;
  factory _SnapdChange.fromJson(Map<String, dynamic> json) =>
      _$SnapdChangeFromJson(json);

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

  /// Create a copy of SnapdChange
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SnapdChangeCopyWith<_SnapdChange> get copyWith =>
      __$SnapdChangeCopyWithImpl<_SnapdChange>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SnapdChangeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SnapdChange &&
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
            const DeepCollectionEquality().equals(other.tasks, _tasks) &&
            const DeepCollectionEquality().equals(other.snapNames, _snapNames));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(
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
  }

  @override
  String toString() {
    return 'SnapdChange(id: $id, spawnTime: $spawnTime, kind: $kind, summary: $summary, status: $status, ready: $ready, readyTime: $readyTime, err: $err, tasks: $tasks, snapNames: $snapNames)';
  }
}

/// @nodoc
abstract mixin class _$SnapdChangeCopyWith<$Res>
    implements $SnapdChangeCopyWith<$Res> {
  factory _$SnapdChangeCopyWith(
          _SnapdChange value, $Res Function(_SnapdChange) _then) =
      __$SnapdChangeCopyWithImpl;
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
class __$SnapdChangeCopyWithImpl<$Res> implements _$SnapdChangeCopyWith<$Res> {
  __$SnapdChangeCopyWithImpl(this._self, this._then);

  final _SnapdChange _self;
  final $Res Function(_SnapdChange) _then;

  /// Create a copy of SnapdChange
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_SnapdChange(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      spawnTime: freezed == spawnTime
          ? _self.spawnTime
          : spawnTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      kind: freezed == kind
          ? _self.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      summary: freezed == summary
          ? _self.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      ready: null == ready
          ? _self.ready
          : ready // ignore: cast_nullable_to_non_nullable
              as bool,
      readyTime: freezed == readyTime
          ? _self.readyTime
          : readyTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      err: freezed == err
          ? _self.err
          : err // ignore: cast_nullable_to_non_nullable
              as String?,
      tasks: null == tasks
          ? _self._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<SnapdTask>,
      snapNames: null == snapNames
          ? _self._snapNames
          : snapNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
mixin _$SnapdTask {
  String get id;
  DateTime? get spawnTime;
  String? get kind;
  String get summary;
  String? get status;
  SnapdTaskProgress get progress;
  DateTime? get readyTime;

  /// Create a copy of SnapdTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SnapdTaskCopyWith<SnapdTask> get copyWith =>
      _$SnapdTaskCopyWithImpl<SnapdTask>(this as SnapdTask, _$identity);

  /// Serializes this SnapdTask to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as SnapdTask;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SnapdTask &&
            (identical(other.id, _this.id) || other.id == _this.id) &&
            (identical(other.spawnTime, _this.spawnTime) ||
                other.spawnTime == _this.spawnTime) &&
            (identical(other.kind, _this.kind) || other.kind == _this.kind) &&
            (identical(other.summary, _this.summary) ||
                other.summary == _this.summary) &&
            (identical(other.status, _this.status) ||
                other.status == _this.status) &&
            (identical(other.progress, _this.progress) ||
                other.progress == _this.progress) &&
            (identical(other.readyTime, _this.readyTime) ||
                other.readyTime == _this.readyTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as SnapdTask;
    return Object.hash(runtimeType, _this.id, _this.spawnTime, _this.kind,
        _this.summary, _this.status, _this.progress, _this.readyTime);
  }

  @override
  String toString() {
    final _this = this as SnapdTask;
    return 'SnapdTask(id: ${_this.id}, spawnTime: ${_this.spawnTime}, kind: ${_this.kind}, summary: ${_this.summary}, status: ${_this.status}, progress: ${_this.progress}, readyTime: ${_this.readyTime})';
  }
}

/// @nodoc
abstract mixin class $SnapdTaskCopyWith<$Res> {
  factory $SnapdTaskCopyWith(SnapdTask value, $Res Function(SnapdTask) _then) =
      _$SnapdTaskCopyWithImpl;
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
class _$SnapdTaskCopyWithImpl<$Res> implements $SnapdTaskCopyWith<$Res> {
  _$SnapdTaskCopyWithImpl(this._self, this._then);

  final SnapdTask _self;
  final $Res Function(SnapdTask) _then;

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
    return _then(SnapdTask(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      spawnTime: freezed == spawnTime
          ? _self.spawnTime
          : spawnTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      kind: freezed == kind
          ? _self.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      summary: null == summary
          ? _self.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      progress: null == progress
          ? _self.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as SnapdTaskProgress,
      readyTime: freezed == readyTime
          ? _self.readyTime
          : readyTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  /// Create a copy of SnapdTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SnapdTaskProgressCopyWith<$Res> get progress {
    return $SnapdTaskProgressCopyWith<$Res>(_self.progress, (value) {
      return _then(_self.copyWith(progress: value));
    });
  }
}

/// Adds pattern-matching-related methods to [SnapdTask].
extension SnapdTaskPatterns on SnapdTask {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SnapdTask value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapdTask() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SnapdTask value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdTask():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SnapdTask value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdTask() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id,
            DateTime? spawnTime,
            String? kind,
            String summary,
            String? status,
            SnapdTaskProgress progress,
            DateTime? readyTime)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapdTask() when $default != null:
        return $default(_that.id, _that.spawnTime, _that.kind, _that.summary,
            _that.status, _that.progress, _that.readyTime);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String id,
            DateTime? spawnTime,
            String? kind,
            String summary,
            String? status,
            SnapdTaskProgress progress,
            DateTime? readyTime)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdTask():
        return $default(_that.id, _that.spawnTime, _that.kind, _that.summary,
            _that.status, _that.progress, _that.readyTime);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String id,
            DateTime? spawnTime,
            String? kind,
            String summary,
            String? status,
            SnapdTaskProgress progress,
            DateTime? readyTime)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdTask() when $default != null:
        return $default(_that.id, _that.spawnTime, _that.kind, _that.summary,
            _that.status, _that.progress, _that.readyTime);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SnapdTask implements SnapdTask {
  const _SnapdTask(
      {required this.id,
      this.spawnTime,
      this.kind,
      this.summary = '',
      this.status,
      this.progress = const SnapdTaskProgress(),
      this.readyTime});
  factory _SnapdTask.fromJson(Map<String, dynamic> json) =>
      _$SnapdTaskFromJson(json);

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

  /// Create a copy of SnapdTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SnapdTaskCopyWith<_SnapdTask> get copyWith =>
      __$SnapdTaskCopyWithImpl<_SnapdTask>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SnapdTaskToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SnapdTask &&
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
  int get hashCode {
    return Object.hash(
        runtimeType, id, spawnTime, kind, summary, status, progress, readyTime);
  }

  @override
  String toString() {
    return 'SnapdTask(id: $id, spawnTime: $spawnTime, kind: $kind, summary: $summary, status: $status, progress: $progress, readyTime: $readyTime)';
  }
}

/// @nodoc
abstract mixin class _$SnapdTaskCopyWith<$Res>
    implements $SnapdTaskCopyWith<$Res> {
  factory _$SnapdTaskCopyWith(
          _SnapdTask value, $Res Function(_SnapdTask) _then) =
      __$SnapdTaskCopyWithImpl;
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
class __$SnapdTaskCopyWithImpl<$Res> implements _$SnapdTaskCopyWith<$Res> {
  __$SnapdTaskCopyWithImpl(this._self, this._then);

  final _SnapdTask _self;
  final $Res Function(_SnapdTask) _then;

  /// Create a copy of SnapdTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? spawnTime = freezed,
    Object? kind = freezed,
    Object? summary = null,
    Object? status = freezed,
    Object? progress = null,
    Object? readyTime = freezed,
  }) {
    return _then(_SnapdTask(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      spawnTime: freezed == spawnTime
          ? _self.spawnTime
          : spawnTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      kind: freezed == kind
          ? _self.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      summary: null == summary
          ? _self.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      progress: null == progress
          ? _self.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as SnapdTaskProgress,
      readyTime: freezed == readyTime
          ? _self.readyTime
          : readyTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  /// Create a copy of SnapdTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SnapdTaskProgressCopyWith<$Res> get progress {
    return $SnapdTaskProgressCopyWith<$Res>(_self.progress, (value) {
      return _then(_self.copyWith(progress: value));
    });
  }
}

/// @nodoc
mixin _$SnapdTaskProgress {
  String get label;
  int get done;
  int get total;

  /// Create a copy of SnapdTaskProgress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SnapdTaskProgressCopyWith<SnapdTaskProgress> get copyWith =>
      _$SnapdTaskProgressCopyWithImpl<SnapdTaskProgress>(
          this as SnapdTaskProgress, _$identity);

  /// Serializes this SnapdTaskProgress to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as SnapdTaskProgress;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SnapdTaskProgress &&
            (identical(other.label, _this.label) ||
                other.label == _this.label) &&
            (identical(other.done, _this.done) || other.done == _this.done) &&
            (identical(other.total, _this.total) ||
                other.total == _this.total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as SnapdTaskProgress;
    return Object.hash(runtimeType, _this.label, _this.done, _this.total);
  }

  @override
  String toString() {
    final _this = this as SnapdTaskProgress;
    return 'SnapdTaskProgress(label: ${_this.label}, done: ${_this.done}, total: ${_this.total})';
  }
}

/// @nodoc
abstract mixin class $SnapdTaskProgressCopyWith<$Res> {
  factory $SnapdTaskProgressCopyWith(
          SnapdTaskProgress value, $Res Function(SnapdTaskProgress) _then) =
      _$SnapdTaskProgressCopyWithImpl;
  @useResult
  $Res call({String label, int done, int total});
}

/// @nodoc
class _$SnapdTaskProgressCopyWithImpl<$Res>
    implements $SnapdTaskProgressCopyWith<$Res> {
  _$SnapdTaskProgressCopyWithImpl(this._self, this._then);

  final SnapdTaskProgress _self;
  final $Res Function(SnapdTaskProgress) _then;

  /// Create a copy of SnapdTaskProgress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? done = null,
    Object? total = null,
  }) {
    return _then(SnapdTaskProgress(
      label: null == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      done: null == done
          ? _self.done
          : done // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _self.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [SnapdTaskProgress].
extension SnapdTaskProgressPatterns on SnapdTaskProgress {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SnapdTaskProgress value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapdTaskProgress() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SnapdTaskProgress value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdTaskProgress():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SnapdTaskProgress value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdTaskProgress() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String label, int done, int total)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapdTaskProgress() when $default != null:
        return $default(_that.label, _that.done, _that.total);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String label, int done, int total) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdTaskProgress():
        return $default(_that.label, _that.done, _that.total);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String label, int done, int total)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdTaskProgress() when $default != null:
        return $default(_that.label, _that.done, _that.total);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SnapdTaskProgress implements SnapdTaskProgress {
  const _SnapdTaskProgress({this.label = '', this.done = 0, this.total = 0});
  factory _SnapdTaskProgress.fromJson(Map<String, dynamic> json) =>
      _$SnapdTaskProgressFromJson(json);

  @override
  @JsonKey()
  final String label;
  @override
  @JsonKey()
  final int done;
  @override
  @JsonKey()
  final int total;

  /// Create a copy of SnapdTaskProgress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SnapdTaskProgressCopyWith<_SnapdTaskProgress> get copyWith =>
      __$SnapdTaskProgressCopyWithImpl<_SnapdTaskProgress>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SnapdTaskProgressToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SnapdTaskProgress &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.done, done) || other.done == done) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, label, done, total);
  }

  @override
  String toString() {
    return 'SnapdTaskProgress(label: $label, done: $done, total: $total)';
  }
}

/// @nodoc
abstract mixin class _$SnapdTaskProgressCopyWith<$Res>
    implements $SnapdTaskProgressCopyWith<$Res> {
  factory _$SnapdTaskProgressCopyWith(
          _SnapdTaskProgress value, $Res Function(_SnapdTaskProgress) _then) =
      __$SnapdTaskProgressCopyWithImpl;
  @override
  @useResult
  $Res call({String label, int done, int total});
}

/// @nodoc
class __$SnapdTaskProgressCopyWithImpl<$Res>
    implements _$SnapdTaskProgressCopyWith<$Res> {
  __$SnapdTaskProgressCopyWithImpl(this._self, this._then);

  final _SnapdTaskProgress _self;
  final $Res Function(_SnapdTaskProgress) _then;

  /// Create a copy of SnapdTaskProgress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? label = null,
    Object? done = null,
    Object? total = null,
  }) {
    return _then(_SnapdTaskProgress(
      label: null == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      done: null == done
          ? _self.done
          : done // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _self.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$SnapdRule {
  String get id;
  DateTime get timestamp;
  String get snap;
  String get interface;
  Map<String, dynamic> get constraints;
  SnapdRequestOutcome? get outcome;
  SnapdRequestLifespan? get lifespan;
  DateTime? get expiration;

  /// Create a copy of SnapdRule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SnapdRuleCopyWith<SnapdRule> get copyWith =>
      _$SnapdRuleCopyWithImpl<SnapdRule>(this as SnapdRule, _$identity);

  /// Serializes this SnapdRule to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as SnapdRule;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SnapdRule &&
            (identical(other.id, _this.id) || other.id == _this.id) &&
            (identical(other.timestamp, _this.timestamp) ||
                other.timestamp == _this.timestamp) &&
            (identical(other.snap, _this.snap) || other.snap == _this.snap) &&
            (identical(other.interface, _this.interface) ||
                other.interface == _this.interface) &&
            const DeepCollectionEquality()
                .equals(other.constraints, _this.constraints) &&
            (identical(other.outcome, _this.outcome) ||
                other.outcome == _this.outcome) &&
            (identical(other.lifespan, _this.lifespan) ||
                other.lifespan == _this.lifespan) &&
            (identical(other.expiration, _this.expiration) ||
                other.expiration == _this.expiration));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as SnapdRule;
    return Object.hash(
        runtimeType,
        _this.id,
        _this.timestamp,
        _this.snap,
        _this.interface,
        const DeepCollectionEquality().hash(_this.constraints),
        _this.outcome,
        _this.lifespan,
        _this.expiration);
  }

  @override
  String toString() {
    final _this = this as SnapdRule;
    return 'SnapdRule(id: ${_this.id}, timestamp: ${_this.timestamp}, snap: ${_this.snap}, interface: ${_this.interface}, constraints: ${_this.constraints}, outcome: ${_this.outcome}, lifespan: ${_this.lifespan}, expiration: ${_this.expiration})';
  }
}

/// @nodoc
abstract mixin class $SnapdRuleCopyWith<$Res> {
  factory $SnapdRuleCopyWith(SnapdRule value, $Res Function(SnapdRule) _then) =
      _$SnapdRuleCopyWithImpl;
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
class _$SnapdRuleCopyWithImpl<$Res> implements $SnapdRuleCopyWith<$Res> {
  _$SnapdRuleCopyWithImpl(this._self, this._then);

  final SnapdRule _self;
  final $Res Function(SnapdRule) _then;

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
    return _then(SnapdRule(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _self.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      snap: null == snap
          ? _self.snap
          : snap // ignore: cast_nullable_to_non_nullable
              as String,
      interface: null == interface
          ? _self.interface
          : interface // ignore: cast_nullable_to_non_nullable
              as String,
      constraints: null == constraints
          ? _self.constraints
          : constraints // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      outcome: freezed == outcome
          ? _self.outcome
          : outcome // ignore: cast_nullable_to_non_nullable
              as SnapdRequestOutcome?,
      lifespan: freezed == lifespan
          ? _self.lifespan
          : lifespan // ignore: cast_nullable_to_non_nullable
              as SnapdRequestLifespan?,
      expiration: freezed == expiration
          ? _self.expiration
          : expiration // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// Adds pattern-matching-related methods to [SnapdRule].
extension SnapdRulePatterns on SnapdRule {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SnapdRule value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapdRule() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SnapdRule value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdRule():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SnapdRule value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdRule() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id,
            DateTime timestamp,
            String snap,
            String interface,
            Map<String, dynamic> constraints,
            SnapdRequestOutcome? outcome,
            SnapdRequestLifespan? lifespan,
            DateTime? expiration)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapdRule() when $default != null:
        return $default(_that.id, _that.timestamp, _that.snap, _that.interface,
            _that.constraints, _that.outcome, _that.lifespan, _that.expiration);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String id,
            DateTime timestamp,
            String snap,
            String interface,
            Map<String, dynamic> constraints,
            SnapdRequestOutcome? outcome,
            SnapdRequestLifespan? lifespan,
            DateTime? expiration)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdRule():
        return $default(_that.id, _that.timestamp, _that.snap, _that.interface,
            _that.constraints, _that.outcome, _that.lifespan, _that.expiration);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String id,
            DateTime timestamp,
            String snap,
            String interface,
            Map<String, dynamic> constraints,
            SnapdRequestOutcome? outcome,
            SnapdRequestLifespan? lifespan,
            DateTime? expiration)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdRule() when $default != null:
        return $default(_that.id, _that.timestamp, _that.snap, _that.interface,
            _that.constraints, _that.outcome, _that.lifespan, _that.expiration);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SnapdRule implements SnapdRule {
  const _SnapdRule(
      {required this.id,
      required this.timestamp,
      required this.snap,
      required this.interface,
      required Map<String, dynamic> constraints,
      this.outcome,
      this.lifespan,
      this.expiration})
      : _constraints = constraints;
  factory _SnapdRule.fromJson(Map<String, dynamic> json) =>
      _$SnapdRuleFromJson(json);

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

  @override
  final SnapdRequestOutcome? outcome;
  @override
  final SnapdRequestLifespan? lifespan;
  @override
  final DateTime? expiration;

  /// Create a copy of SnapdRule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SnapdRuleCopyWith<_SnapdRule> get copyWith =>
      __$SnapdRuleCopyWithImpl<_SnapdRule>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SnapdRuleToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SnapdRule &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.snap, snap) || other.snap == snap) &&
            (identical(other.interface, interface) ||
                other.interface == interface) &&
            const DeepCollectionEquality()
                .equals(other.constraints, _constraints) &&
            (identical(other.outcome, outcome) || other.outcome == outcome) &&
            (identical(other.lifespan, lifespan) ||
                other.lifespan == lifespan) &&
            (identical(other.expiration, expiration) ||
                other.expiration == expiration));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(
        runtimeType,
        id,
        timestamp,
        snap,
        interface,
        const DeepCollectionEquality().hash(_constraints),
        outcome,
        lifespan,
        expiration);
  }

  @override
  String toString() {
    return 'SnapdRule(id: $id, timestamp: $timestamp, snap: $snap, interface: $interface, constraints: $constraints, outcome: $outcome, lifespan: $lifespan, expiration: $expiration)';
  }
}

/// @nodoc
abstract mixin class _$SnapdRuleCopyWith<$Res>
    implements $SnapdRuleCopyWith<$Res> {
  factory _$SnapdRuleCopyWith(
          _SnapdRule value, $Res Function(_SnapdRule) _then) =
      __$SnapdRuleCopyWithImpl;
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
class __$SnapdRuleCopyWithImpl<$Res> implements _$SnapdRuleCopyWith<$Res> {
  __$SnapdRuleCopyWithImpl(this._self, this._then);

  final _SnapdRule _self;
  final $Res Function(_SnapdRule) _then;

  /// Create a copy of SnapdRule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_SnapdRule(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _self.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      snap: null == snap
          ? _self.snap
          : snap // ignore: cast_nullable_to_non_nullable
              as String,
      interface: null == interface
          ? _self.interface
          : interface // ignore: cast_nullable_to_non_nullable
              as String,
      constraints: null == constraints
          ? _self._constraints
          : constraints // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      outcome: freezed == outcome
          ? _self.outcome
          : outcome // ignore: cast_nullable_to_non_nullable
              as SnapdRequestOutcome?,
      lifespan: freezed == lifespan
          ? _self.lifespan
          : lifespan // ignore: cast_nullable_to_non_nullable
              as SnapdRequestLifespan?,
      expiration: freezed == expiration
          ? _self.expiration
          : expiration // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
mixin _$SnapdRuleMask {
  String get snap;
  String get interface;
  Map<String, dynamic> get constraints;

  /// Create a copy of SnapdRuleMask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SnapdRuleMaskCopyWith<SnapdRuleMask> get copyWith =>
      _$SnapdRuleMaskCopyWithImpl<SnapdRuleMask>(
          this as SnapdRuleMask, _$identity);

  /// Serializes this SnapdRuleMask to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as SnapdRuleMask;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SnapdRuleMask &&
            (identical(other.snap, _this.snap) || other.snap == _this.snap) &&
            (identical(other.interface, _this.interface) ||
                other.interface == _this.interface) &&
            const DeepCollectionEquality()
                .equals(other.constraints, _this.constraints));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as SnapdRuleMask;
    return Object.hash(runtimeType, _this.snap, _this.interface,
        const DeepCollectionEquality().hash(_this.constraints));
  }

  @override
  String toString() {
    final _this = this as SnapdRuleMask;
    return 'SnapdRuleMask(snap: ${_this.snap}, interface: ${_this.interface}, constraints: ${_this.constraints})';
  }
}

/// @nodoc
abstract mixin class $SnapdRuleMaskCopyWith<$Res> {
  factory $SnapdRuleMaskCopyWith(
          SnapdRuleMask value, $Res Function(SnapdRuleMask) _then) =
      _$SnapdRuleMaskCopyWithImpl;
  @useResult
  $Res call({String snap, String interface, Map<String, dynamic> constraints});
}

/// @nodoc
class _$SnapdRuleMaskCopyWithImpl<$Res>
    implements $SnapdRuleMaskCopyWith<$Res> {
  _$SnapdRuleMaskCopyWithImpl(this._self, this._then);

  final SnapdRuleMask _self;
  final $Res Function(SnapdRuleMask) _then;

  /// Create a copy of SnapdRuleMask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? snap = null,
    Object? interface = null,
    Object? constraints = null,
  }) {
    return _then(SnapdRuleMask(
      snap: null == snap
          ? _self.snap
          : snap // ignore: cast_nullable_to_non_nullable
              as String,
      interface: null == interface
          ? _self.interface
          : interface // ignore: cast_nullable_to_non_nullable
              as String,
      constraints: null == constraints
          ? _self.constraints
          : constraints // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// Adds pattern-matching-related methods to [SnapdRuleMask].
extension SnapdRuleMaskPatterns on SnapdRuleMask {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SnapdRuleMask value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapdRuleMask() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SnapdRuleMask value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdRuleMask():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SnapdRuleMask value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdRuleMask() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String snap, String interface, Map<String, dynamic> constraints)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapdRuleMask() when $default != null:
        return $default(_that.snap, _that.interface, _that.constraints);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String snap, String interface, Map<String, dynamic> constraints)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdRuleMask():
        return $default(_that.snap, _that.interface, _that.constraints);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String snap, String interface, Map<String, dynamic> constraints)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdRuleMask() when $default != null:
        return $default(_that.snap, _that.interface, _that.constraints);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SnapdRuleMask implements SnapdRuleMask {
  const _SnapdRuleMask(
      {required this.snap,
      required this.interface,
      required Map<String, dynamic> constraints})
      : _constraints = constraints;
  factory _SnapdRuleMask.fromJson(Map<String, dynamic> json) =>
      _$SnapdRuleMaskFromJson(json);

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

  /// Create a copy of SnapdRuleMask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SnapdRuleMaskCopyWith<_SnapdRuleMask> get copyWith =>
      __$SnapdRuleMaskCopyWithImpl<_SnapdRuleMask>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SnapdRuleMaskToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SnapdRuleMask &&
            (identical(other.snap, snap) || other.snap == snap) &&
            (identical(other.interface, interface) ||
                other.interface == interface) &&
            const DeepCollectionEquality()
                .equals(other.constraints, _constraints));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, snap, interface,
        const DeepCollectionEquality().hash(_constraints));
  }

  @override
  String toString() {
    return 'SnapdRuleMask(snap: $snap, interface: $interface, constraints: $constraints)';
  }
}

/// @nodoc
abstract mixin class _$SnapdRuleMaskCopyWith<$Res>
    implements $SnapdRuleMaskCopyWith<$Res> {
  factory _$SnapdRuleMaskCopyWith(
          _SnapdRuleMask value, $Res Function(_SnapdRuleMask) _then) =
      __$SnapdRuleMaskCopyWithImpl;
  @override
  @useResult
  $Res call({String snap, String interface, Map<String, dynamic> constraints});
}

/// @nodoc
class __$SnapdRuleMaskCopyWithImpl<$Res>
    implements _$SnapdRuleMaskCopyWith<$Res> {
  __$SnapdRuleMaskCopyWithImpl(this._self, this._then);

  final _SnapdRuleMask _self;
  final $Res Function(_SnapdRuleMask) _then;

  /// Create a copy of SnapdRuleMask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? snap = null,
    Object? interface = null,
    Object? constraints = null,
  }) {
    return _then(_SnapdRuleMask(
      snap: null == snap
          ? _self.snap
          : snap // ignore: cast_nullable_to_non_nullable
              as String,
      interface: null == interface
          ? _self.interface
          : interface // ignore: cast_nullable_to_non_nullable
              as String,
      constraints: null == constraints
          ? _self._constraints
          : constraints // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
mixin _$SnapdNotice {
  String get id;
  SnapdNoticeType get type;
  String get key;
  @_SnapdDateTimeConverter()
  DateTime get firstOccured;
  @_SnapdDateTimeConverter()
  DateTime get lastOccured;
  @_SnapdDateTimeConverter()
  DateTime get lastRepeated;
  int get occurrences;
  String get expireAfter;
  int? get userId;
  Map<String, String>? get lastData;

  /// Create a copy of SnapdNotice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SnapdNoticeCopyWith<SnapdNotice> get copyWith =>
      _$SnapdNoticeCopyWithImpl<SnapdNotice>(this as SnapdNotice, _$identity);

  /// Serializes this SnapdNotice to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as SnapdNotice;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SnapdNotice &&
            (identical(other.id, _this.id) || other.id == _this.id) &&
            (identical(other.type, _this.type) || other.type == _this.type) &&
            (identical(other.key, _this.key) || other.key == _this.key) &&
            (identical(other.firstOccured, _this.firstOccured) ||
                other.firstOccured == _this.firstOccured) &&
            (identical(other.lastOccured, _this.lastOccured) ||
                other.lastOccured == _this.lastOccured) &&
            (identical(other.lastRepeated, _this.lastRepeated) ||
                other.lastRepeated == _this.lastRepeated) &&
            (identical(other.occurrences, _this.occurrences) ||
                other.occurrences == _this.occurrences) &&
            (identical(other.expireAfter, _this.expireAfter) ||
                other.expireAfter == _this.expireAfter) &&
            (identical(other.userId, _this.userId) ||
                other.userId == _this.userId) &&
            const DeepCollectionEquality()
                .equals(other.lastData, _this.lastData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as SnapdNotice;
    return Object.hash(
        runtimeType,
        _this.id,
        _this.type,
        _this.key,
        _this.firstOccured,
        _this.lastOccured,
        _this.lastRepeated,
        _this.occurrences,
        _this.expireAfter,
        _this.userId,
        const DeepCollectionEquality().hash(_this.lastData));
  }

  @override
  String toString() {
    final _this = this as SnapdNotice;
    return 'SnapdNotice(id: ${_this.id}, type: ${_this.type}, key: ${_this.key}, firstOccured: ${_this.firstOccured}, lastOccured: ${_this.lastOccured}, lastRepeated: ${_this.lastRepeated}, occurrences: ${_this.occurrences}, expireAfter: ${_this.expireAfter}, userId: ${_this.userId}, lastData: ${_this.lastData})';
  }
}

/// @nodoc
abstract mixin class $SnapdNoticeCopyWith<$Res> {
  factory $SnapdNoticeCopyWith(
          SnapdNotice value, $Res Function(SnapdNotice) _then) =
      _$SnapdNoticeCopyWithImpl;
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
class _$SnapdNoticeCopyWithImpl<$Res> implements $SnapdNoticeCopyWith<$Res> {
  _$SnapdNoticeCopyWithImpl(this._self, this._then);

  final SnapdNotice _self;
  final $Res Function(SnapdNotice) _then;

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
    return _then(SnapdNotice(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as SnapdNoticeType,
      key: null == key
          ? _self.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      firstOccured: null == firstOccured
          ? _self.firstOccured
          : firstOccured // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastOccured: null == lastOccured
          ? _self.lastOccured
          : lastOccured // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastRepeated: null == lastRepeated
          ? _self.lastRepeated
          : lastRepeated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      occurrences: null == occurrences
          ? _self.occurrences
          : occurrences // ignore: cast_nullable_to_non_nullable
              as int,
      expireAfter: null == expireAfter
          ? _self.expireAfter
          : expireAfter // ignore: cast_nullable_to_non_nullable
              as String,
      userId: freezed == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      lastData: freezed == lastData
          ? _self.lastData
          : lastData // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [SnapdNotice].
extension SnapdNoticePatterns on SnapdNotice {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SnapdNotice value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapdNotice() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SnapdNotice value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdNotice():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SnapdNotice value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdNotice() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id,
            SnapdNoticeType type,
            String key,
            @_SnapdDateTimeConverter() DateTime firstOccured,
            @_SnapdDateTimeConverter() DateTime lastOccured,
            @_SnapdDateTimeConverter() DateTime lastRepeated,
            int occurrences,
            String expireAfter,
            int? userId,
            Map<String, String>? lastData)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapdNotice() when $default != null:
        return $default(
            _that.id,
            _that.type,
            _that.key,
            _that.firstOccured,
            _that.lastOccured,
            _that.lastRepeated,
            _that.occurrences,
            _that.expireAfter,
            _that.userId,
            _that.lastData);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String id,
            SnapdNoticeType type,
            String key,
            @_SnapdDateTimeConverter() DateTime firstOccured,
            @_SnapdDateTimeConverter() DateTime lastOccured,
            @_SnapdDateTimeConverter() DateTime lastRepeated,
            int occurrences,
            String expireAfter,
            int? userId,
            Map<String, String>? lastData)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdNotice():
        return $default(
            _that.id,
            _that.type,
            _that.key,
            _that.firstOccured,
            _that.lastOccured,
            _that.lastRepeated,
            _that.occurrences,
            _that.expireAfter,
            _that.userId,
            _that.lastData);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String id,
            SnapdNoticeType type,
            String key,
            @_SnapdDateTimeConverter() DateTime firstOccured,
            @_SnapdDateTimeConverter() DateTime lastOccured,
            @_SnapdDateTimeConverter() DateTime lastRepeated,
            int occurrences,
            String expireAfter,
            int? userId,
            Map<String, String>? lastData)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdNotice() when $default != null:
        return $default(
            _that.id,
            _that.type,
            _that.key,
            _that.firstOccured,
            _that.lastOccured,
            _that.lastRepeated,
            _that.occurrences,
            _that.expireAfter,
            _that.userId,
            _that.lastData);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SnapdNotice implements SnapdNotice {
  const _SnapdNotice(
      {required this.id,
      required this.type,
      required this.key,
      @_SnapdDateTimeConverter() required this.firstOccured,
      @_SnapdDateTimeConverter() required this.lastOccured,
      @_SnapdDateTimeConverter() required this.lastRepeated,
      required this.occurrences,
      required this.expireAfter,
      this.userId,
      Map<String, String>? lastData})
      : _lastData = lastData;
  factory _SnapdNotice.fromJson(Map<String, dynamic> json) =>
      _$SnapdNoticeFromJson(json);

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

  /// Create a copy of SnapdNotice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SnapdNoticeCopyWith<_SnapdNotice> get copyWith =>
      __$SnapdNoticeCopyWithImpl<_SnapdNotice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SnapdNoticeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SnapdNotice &&
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
            const DeepCollectionEquality().equals(other.lastData, _lastData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(
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
  }

  @override
  String toString() {
    return 'SnapdNotice(id: $id, type: $type, key: $key, firstOccured: $firstOccured, lastOccured: $lastOccured, lastRepeated: $lastRepeated, occurrences: $occurrences, expireAfter: $expireAfter, userId: $userId, lastData: $lastData)';
  }
}

/// @nodoc
abstract mixin class _$SnapdNoticeCopyWith<$Res>
    implements $SnapdNoticeCopyWith<$Res> {
  factory _$SnapdNoticeCopyWith(
          _SnapdNotice value, $Res Function(_SnapdNotice) _then) =
      __$SnapdNoticeCopyWithImpl;
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
class __$SnapdNoticeCopyWithImpl<$Res> implements _$SnapdNoticeCopyWith<$Res> {
  __$SnapdNoticeCopyWithImpl(this._self, this._then);

  final _SnapdNotice _self;
  final $Res Function(_SnapdNotice) _then;

  /// Create a copy of SnapdNotice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_SnapdNotice(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as SnapdNoticeType,
      key: null == key
          ? _self.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      firstOccured: null == firstOccured
          ? _self.firstOccured
          : firstOccured // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastOccured: null == lastOccured
          ? _self.lastOccured
          : lastOccured // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastRepeated: null == lastRepeated
          ? _self.lastRepeated
          : lastRepeated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      occurrences: null == occurrences
          ? _self.occurrences
          : occurrences // ignore: cast_nullable_to_non_nullable
              as int,
      expireAfter: null == expireAfter
          ? _self.expireAfter
          : expireAfter // ignore: cast_nullable_to_non_nullable
              as String,
      userId: freezed == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      lastData: freezed == lastData
          ? _self._lastData
          : lastData // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ));
  }
}

/// @nodoc
mixin _$SnapdGenerateRecoveryKeyResponse {
  String get recoveryKey;
  String get keyId;

  /// Create a copy of SnapdGenerateRecoveryKeyResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SnapdGenerateRecoveryKeyResponseCopyWith<SnapdGenerateRecoveryKeyResponse>
      get copyWith => _$SnapdGenerateRecoveryKeyResponseCopyWithImpl<
              SnapdGenerateRecoveryKeyResponse>(
          this as SnapdGenerateRecoveryKeyResponse, _$identity);

  /// Serializes this SnapdGenerateRecoveryKeyResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as SnapdGenerateRecoveryKeyResponse;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SnapdGenerateRecoveryKeyResponse &&
            (identical(other.recoveryKey, _this.recoveryKey) ||
                other.recoveryKey == _this.recoveryKey) &&
            (identical(other.keyId, _this.keyId) ||
                other.keyId == _this.keyId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as SnapdGenerateRecoveryKeyResponse;
    return Object.hash(runtimeType, _this.recoveryKey, _this.keyId);
  }

  @override
  String toString() {
    final _this = this as SnapdGenerateRecoveryKeyResponse;
    return 'SnapdGenerateRecoveryKeyResponse(recoveryKey: ${_this.recoveryKey}, keyId: ${_this.keyId})';
  }
}

/// @nodoc
abstract mixin class $SnapdGenerateRecoveryKeyResponseCopyWith<$Res> {
  factory $SnapdGenerateRecoveryKeyResponseCopyWith(
          SnapdGenerateRecoveryKeyResponse value,
          $Res Function(SnapdGenerateRecoveryKeyResponse) _then) =
      _$SnapdGenerateRecoveryKeyResponseCopyWithImpl;
  @useResult
  $Res call({String recoveryKey, String keyId});
}

/// @nodoc
class _$SnapdGenerateRecoveryKeyResponseCopyWithImpl<$Res>
    implements $SnapdGenerateRecoveryKeyResponseCopyWith<$Res> {
  _$SnapdGenerateRecoveryKeyResponseCopyWithImpl(this._self, this._then);

  final SnapdGenerateRecoveryKeyResponse _self;
  final $Res Function(SnapdGenerateRecoveryKeyResponse) _then;

  /// Create a copy of SnapdGenerateRecoveryKeyResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recoveryKey = null,
    Object? keyId = null,
  }) {
    return _then(SnapdGenerateRecoveryKeyResponse(
      recoveryKey: null == recoveryKey
          ? _self.recoveryKey
          : recoveryKey // ignore: cast_nullable_to_non_nullable
              as String,
      keyId: null == keyId
          ? _self.keyId
          : keyId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [SnapdGenerateRecoveryKeyResponse].
extension SnapdGenerateRecoveryKeyResponsePatterns
    on SnapdGenerateRecoveryKeyResponse {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SnapdGenerateRecoveryKeyResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapdGenerateRecoveryKeyResponse() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SnapdGenerateRecoveryKeyResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdGenerateRecoveryKeyResponse():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SnapdGenerateRecoveryKeyResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdGenerateRecoveryKeyResponse() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String recoveryKey, String keyId)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapdGenerateRecoveryKeyResponse() when $default != null:
        return $default(_that.recoveryKey, _that.keyId);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String recoveryKey, String keyId) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdGenerateRecoveryKeyResponse():
        return $default(_that.recoveryKey, _that.keyId);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String recoveryKey, String keyId)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdGenerateRecoveryKeyResponse() when $default != null:
        return $default(_that.recoveryKey, _that.keyId);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SnapdGenerateRecoveryKeyResponse
    implements SnapdGenerateRecoveryKeyResponse {
  const _SnapdGenerateRecoveryKeyResponse(
      {required this.recoveryKey, required this.keyId});
  factory _SnapdGenerateRecoveryKeyResponse.fromJson(
          Map<String, dynamic> json) =>
      _$SnapdGenerateRecoveryKeyResponseFromJson(json);

  @override
  final String recoveryKey;
  @override
  final String keyId;

  /// Create a copy of SnapdGenerateRecoveryKeyResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SnapdGenerateRecoveryKeyResponseCopyWith<_SnapdGenerateRecoveryKeyResponse>
      get copyWith => __$SnapdGenerateRecoveryKeyResponseCopyWithImpl<
          _SnapdGenerateRecoveryKeyResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SnapdGenerateRecoveryKeyResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SnapdGenerateRecoveryKeyResponse &&
            (identical(other.recoveryKey, recoveryKey) ||
                other.recoveryKey == recoveryKey) &&
            (identical(other.keyId, keyId) || other.keyId == keyId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, recoveryKey, keyId);
  }

  @override
  String toString() {
    return 'SnapdGenerateRecoveryKeyResponse(recoveryKey: $recoveryKey, keyId: $keyId)';
  }
}

/// @nodoc
abstract mixin class _$SnapdGenerateRecoveryKeyResponseCopyWith<$Res>
    implements $SnapdGenerateRecoveryKeyResponseCopyWith<$Res> {
  factory _$SnapdGenerateRecoveryKeyResponseCopyWith(
          _SnapdGenerateRecoveryKeyResponse value,
          $Res Function(_SnapdGenerateRecoveryKeyResponse) _then) =
      __$SnapdGenerateRecoveryKeyResponseCopyWithImpl;
  @override
  @useResult
  $Res call({String recoveryKey, String keyId});
}

/// @nodoc
class __$SnapdGenerateRecoveryKeyResponseCopyWithImpl<$Res>
    implements _$SnapdGenerateRecoveryKeyResponseCopyWith<$Res> {
  __$SnapdGenerateRecoveryKeyResponseCopyWithImpl(this._self, this._then);

  final _SnapdGenerateRecoveryKeyResponse _self;
  final $Res Function(_SnapdGenerateRecoveryKeyResponse) _then;

  /// Create a copy of SnapdGenerateRecoveryKeyResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? recoveryKey = null,
    Object? keyId = null,
  }) {
    return _then(_SnapdGenerateRecoveryKeyResponse(
      recoveryKey: null == recoveryKey
          ? _self.recoveryKey
          : recoveryKey // ignore: cast_nullable_to_non_nullable
              as String,
      keyId: null == keyId
          ? _self.keyId
          : keyId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$SnapdSystemVolume {
  String get volumeName;
  String get name;
  bool get encrypted;
  Map<String, SnapdSystemVolumeKeySlot> get keyslots;

  /// Create a copy of SnapdSystemVolume
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SnapdSystemVolumeCopyWith<SnapdSystemVolume> get copyWith =>
      _$SnapdSystemVolumeCopyWithImpl<SnapdSystemVolume>(
          this as SnapdSystemVolume, _$identity);

  /// Serializes this SnapdSystemVolume to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as SnapdSystemVolume;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SnapdSystemVolume &&
            (identical(other.volumeName, _this.volumeName) ||
                other.volumeName == _this.volumeName) &&
            (identical(other.name, _this.name) || other.name == _this.name) &&
            (identical(other.encrypted, _this.encrypted) ||
                other.encrypted == _this.encrypted) &&
            const DeepCollectionEquality()
                .equals(other.keyslots, _this.keyslots));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as SnapdSystemVolume;
    return Object.hash(runtimeType, _this.volumeName, _this.name,
        _this.encrypted, const DeepCollectionEquality().hash(_this.keyslots));
  }

  @override
  String toString() {
    final _this = this as SnapdSystemVolume;
    return 'SnapdSystemVolume(volumeName: ${_this.volumeName}, name: ${_this.name}, encrypted: ${_this.encrypted}, keyslots: ${_this.keyslots})';
  }
}

/// @nodoc
abstract mixin class $SnapdSystemVolumeCopyWith<$Res> {
  factory $SnapdSystemVolumeCopyWith(
          SnapdSystemVolume value, $Res Function(SnapdSystemVolume) _then) =
      _$SnapdSystemVolumeCopyWithImpl;
  @useResult
  $Res call(
      {String volumeName,
      String name,
      bool encrypted,
      Map<String, SnapdSystemVolumeKeySlot> keyslots});
}

/// @nodoc
class _$SnapdSystemVolumeCopyWithImpl<$Res>
    implements $SnapdSystemVolumeCopyWith<$Res> {
  _$SnapdSystemVolumeCopyWithImpl(this._self, this._then);

  final SnapdSystemVolume _self;
  final $Res Function(SnapdSystemVolume) _then;

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
    return _then(SnapdSystemVolume(
      volumeName: null == volumeName
          ? _self.volumeName
          : volumeName // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      encrypted: null == encrypted
          ? _self.encrypted
          : encrypted // ignore: cast_nullable_to_non_nullable
              as bool,
      keyslots: null == keyslots
          ? _self.keyslots
          : keyslots // ignore: cast_nullable_to_non_nullable
              as Map<String, SnapdSystemVolumeKeySlot>,
    ));
  }
}

/// Adds pattern-matching-related methods to [SnapdSystemVolume].
extension SnapdSystemVolumePatterns on SnapdSystemVolume {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SnapdSystemVolume value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapdSystemVolume() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SnapdSystemVolume value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdSystemVolume():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SnapdSystemVolume value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdSystemVolume() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String volumeName, String name, bool encrypted,
            Map<String, SnapdSystemVolumeKeySlot> keyslots)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapdSystemVolume() when $default != null:
        return $default(
            _that.volumeName, _that.name, _that.encrypted, _that.keyslots);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String volumeName, String name, bool encrypted,
            Map<String, SnapdSystemVolumeKeySlot> keyslots)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdSystemVolume():
        return $default(
            _that.volumeName, _that.name, _that.encrypted, _that.keyslots);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String volumeName, String name, bool encrypted,
            Map<String, SnapdSystemVolumeKeySlot> keyslots)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdSystemVolume() when $default != null:
        return $default(
            _that.volumeName, _that.name, _that.encrypted, _that.keyslots);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SnapdSystemVolume implements SnapdSystemVolume {
  const _SnapdSystemVolume(
      {required this.volumeName,
      required this.name,
      required this.encrypted,
      Map<String, SnapdSystemVolumeKeySlot> keyslots = const {}})
      : _keyslots = keyslots;
  factory _SnapdSystemVolume.fromJson(Map<String, dynamic> json) =>
      _$SnapdSystemVolumeFromJson(json);

  @override
  final String volumeName;
  @override
  final String name;
  @override
  final bool encrypted;
  final Map<String, SnapdSystemVolumeKeySlot> _keyslots;
  @override
  @JsonKey()
  Map<String, SnapdSystemVolumeKeySlot> get keyslots {
    if (_keyslots is EqualUnmodifiableMapView) return _keyslots;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_keyslots);
  }

  /// Create a copy of SnapdSystemVolume
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SnapdSystemVolumeCopyWith<_SnapdSystemVolume> get copyWith =>
      __$SnapdSystemVolumeCopyWithImpl<_SnapdSystemVolume>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SnapdSystemVolumeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SnapdSystemVolume &&
            (identical(other.volumeName, volumeName) ||
                other.volumeName == volumeName) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.encrypted, encrypted) ||
                other.encrypted == encrypted) &&
            const DeepCollectionEquality().equals(other.keyslots, _keyslots));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, volumeName, name, encrypted,
        const DeepCollectionEquality().hash(_keyslots));
  }

  @override
  String toString() {
    return 'SnapdSystemVolume(volumeName: $volumeName, name: $name, encrypted: $encrypted, keyslots: $keyslots)';
  }
}

/// @nodoc
abstract mixin class _$SnapdSystemVolumeCopyWith<$Res>
    implements $SnapdSystemVolumeCopyWith<$Res> {
  factory _$SnapdSystemVolumeCopyWith(
          _SnapdSystemVolume value, $Res Function(_SnapdSystemVolume) _then) =
      __$SnapdSystemVolumeCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String volumeName,
      String name,
      bool encrypted,
      Map<String, SnapdSystemVolumeKeySlot> keyslots});
}

/// @nodoc
class __$SnapdSystemVolumeCopyWithImpl<$Res>
    implements _$SnapdSystemVolumeCopyWith<$Res> {
  __$SnapdSystemVolumeCopyWithImpl(this._self, this._then);

  final _SnapdSystemVolume _self;
  final $Res Function(_SnapdSystemVolume) _then;

  /// Create a copy of SnapdSystemVolume
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? volumeName = null,
    Object? name = null,
    Object? encrypted = null,
    Object? keyslots = null,
  }) {
    return _then(_SnapdSystemVolume(
      volumeName: null == volumeName
          ? _self.volumeName
          : volumeName // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      encrypted: null == encrypted
          ? _self.encrypted
          : encrypted // ignore: cast_nullable_to_non_nullable
              as bool,
      keyslots: null == keyslots
          ? _self._keyslots
          : keyslots // ignore: cast_nullable_to_non_nullable
              as Map<String, SnapdSystemVolumeKeySlot>,
    ));
  }
}

/// @nodoc
mixin _$SnapdSystemVolumeTargetKeySlot {
  @JsonKey(name: 'container-role')
  String get containerRole;
  String get name;

  /// Create a copy of SnapdSystemVolumeTargetKeySlot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SnapdSystemVolumeTargetKeySlotCopyWith<SnapdSystemVolumeTargetKeySlot>
      get copyWith => _$SnapdSystemVolumeTargetKeySlotCopyWithImpl<
              SnapdSystemVolumeTargetKeySlot>(
          this as SnapdSystemVolumeTargetKeySlot, _$identity);

  /// Serializes this SnapdSystemVolumeTargetKeySlot to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as SnapdSystemVolumeTargetKeySlot;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SnapdSystemVolumeTargetKeySlot &&
            (identical(other.containerRole, _this.containerRole) ||
                other.containerRole == _this.containerRole) &&
            (identical(other.name, _this.name) || other.name == _this.name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as SnapdSystemVolumeTargetKeySlot;
    return Object.hash(runtimeType, _this.containerRole, _this.name);
  }

  @override
  String toString() {
    final _this = this as SnapdSystemVolumeTargetKeySlot;
    return 'SnapdSystemVolumeTargetKeySlot(containerRole: ${_this.containerRole}, name: ${_this.name})';
  }
}

/// @nodoc
abstract mixin class $SnapdSystemVolumeTargetKeySlotCopyWith<$Res> {
  factory $SnapdSystemVolumeTargetKeySlotCopyWith(
          SnapdSystemVolumeTargetKeySlot value,
          $Res Function(SnapdSystemVolumeTargetKeySlot) _then) =
      _$SnapdSystemVolumeTargetKeySlotCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'container-role') String containerRole, String name});
}

/// @nodoc
class _$SnapdSystemVolumeTargetKeySlotCopyWithImpl<$Res>
    implements $SnapdSystemVolumeTargetKeySlotCopyWith<$Res> {
  _$SnapdSystemVolumeTargetKeySlotCopyWithImpl(this._self, this._then);

  final SnapdSystemVolumeTargetKeySlot _self;
  final $Res Function(SnapdSystemVolumeTargetKeySlot) _then;

  /// Create a copy of SnapdSystemVolumeTargetKeySlot
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? containerRole = null,
    Object? name = null,
  }) {
    return _then(SnapdSystemVolumeTargetKeySlot(
      containerRole: null == containerRole
          ? _self.containerRole
          : containerRole // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [SnapdSystemVolumeTargetKeySlot].
extension SnapdSystemVolumeTargetKeySlotPatterns
    on SnapdSystemVolumeTargetKeySlot {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SnapdSystemVolumeTargetKeySlot value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapdSystemVolumeTargetKeySlot() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SnapdSystemVolumeTargetKeySlot value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdSystemVolumeTargetKeySlot():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SnapdSystemVolumeTargetKeySlot value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdSystemVolumeTargetKeySlot() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'container-role') String containerRole, String name)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapdSystemVolumeTargetKeySlot() when $default != null:
        return $default(_that.containerRole, _that.name);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'container-role') String containerRole, String name)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdSystemVolumeTargetKeySlot():
        return $default(_that.containerRole, _that.name);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: 'container-role') String containerRole, String name)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdSystemVolumeTargetKeySlot() when $default != null:
        return $default(_that.containerRole, _that.name);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SnapdSystemVolumeTargetKeySlot
    implements SnapdSystemVolumeTargetKeySlot {
  const _SnapdSystemVolumeTargetKeySlot(
      {@JsonKey(name: 'container-role') required this.containerRole,
      required this.name});
  factory _SnapdSystemVolumeTargetKeySlot.fromJson(Map<String, dynamic> json) =>
      _$SnapdSystemVolumeTargetKeySlotFromJson(json);

  @override
  @JsonKey(name: 'container-role')
  final String containerRole;
  @override
  final String name;

  /// Create a copy of SnapdSystemVolumeTargetKeySlot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SnapdSystemVolumeTargetKeySlotCopyWith<_SnapdSystemVolumeTargetKeySlot>
      get copyWith => __$SnapdSystemVolumeTargetKeySlotCopyWithImpl<
          _SnapdSystemVolumeTargetKeySlot>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SnapdSystemVolumeTargetKeySlotToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SnapdSystemVolumeTargetKeySlot &&
            (identical(other.containerRole, containerRole) ||
                other.containerRole == containerRole) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, containerRole, name);
  }

  @override
  String toString() {
    return 'SnapdSystemVolumeTargetKeySlot(containerRole: $containerRole, name: $name)';
  }
}

/// @nodoc
abstract mixin class _$SnapdSystemVolumeTargetKeySlotCopyWith<$Res>
    implements $SnapdSystemVolumeTargetKeySlotCopyWith<$Res> {
  factory _$SnapdSystemVolumeTargetKeySlotCopyWith(
          _SnapdSystemVolumeTargetKeySlot value,
          $Res Function(_SnapdSystemVolumeTargetKeySlot) _then) =
      __$SnapdSystemVolumeTargetKeySlotCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'container-role') String containerRole, String name});
}

/// @nodoc
class __$SnapdSystemVolumeTargetKeySlotCopyWithImpl<$Res>
    implements _$SnapdSystemVolumeTargetKeySlotCopyWith<$Res> {
  __$SnapdSystemVolumeTargetKeySlotCopyWithImpl(this._self, this._then);

  final _SnapdSystemVolumeTargetKeySlot _self;
  final $Res Function(_SnapdSystemVolumeTargetKeySlot) _then;

  /// Create a copy of SnapdSystemVolumeTargetKeySlot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? containerRole = null,
    Object? name = null,
  }) {
    return _then(_SnapdSystemVolumeTargetKeySlot(
      containerRole: null == containerRole
          ? _self.containerRole
          : containerRole // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$SnapdSystemVolumeKeySlot {
  /// The key slot name, used to identify the key slot.
  SnapdSystemVolumeKeySlotType get type;
  List<String>? get roles;
  String? get platformName;
  SnapdSystemVolumeAuthMode? get authMode;

  /// Create a copy of SnapdSystemVolumeKeySlot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SnapdSystemVolumeKeySlotCopyWith<SnapdSystemVolumeKeySlot> get copyWith =>
      _$SnapdSystemVolumeKeySlotCopyWithImpl<SnapdSystemVolumeKeySlot>(
          this as SnapdSystemVolumeKeySlot, _$identity);

  /// Serializes this SnapdSystemVolumeKeySlot to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as SnapdSystemVolumeKeySlot;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SnapdSystemVolumeKeySlot &&
            (identical(other.type, _this.type) || other.type == _this.type) &&
            const DeepCollectionEquality().equals(other.roles, _this.roles) &&
            (identical(other.platformName, _this.platformName) ||
                other.platformName == _this.platformName) &&
            (identical(other.authMode, _this.authMode) ||
                other.authMode == _this.authMode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as SnapdSystemVolumeKeySlot;
    return Object.hash(
        runtimeType,
        _this.type,
        const DeepCollectionEquality().hash(_this.roles),
        _this.platformName,
        _this.authMode);
  }

  @override
  String toString() {
    final _this = this as SnapdSystemVolumeKeySlot;
    return 'SnapdSystemVolumeKeySlot(type: ${_this.type}, roles: ${_this.roles}, platformName: ${_this.platformName}, authMode: ${_this.authMode})';
  }
}

/// @nodoc
abstract mixin class $SnapdSystemVolumeKeySlotCopyWith<$Res> {
  factory $SnapdSystemVolumeKeySlotCopyWith(SnapdSystemVolumeKeySlot value,
          $Res Function(SnapdSystemVolumeKeySlot) _then) =
      _$SnapdSystemVolumeKeySlotCopyWithImpl;
  @useResult
  $Res call(
      {SnapdSystemVolumeKeySlotType type,
      List<String>? roles,
      String? platformName,
      SnapdSystemVolumeAuthMode? authMode});
}

/// @nodoc
class _$SnapdSystemVolumeKeySlotCopyWithImpl<$Res>
    implements $SnapdSystemVolumeKeySlotCopyWith<$Res> {
  _$SnapdSystemVolumeKeySlotCopyWithImpl(this._self, this._then);

  final SnapdSystemVolumeKeySlot _self;
  final $Res Function(SnapdSystemVolumeKeySlot) _then;

  /// Create a copy of SnapdSystemVolumeKeySlot
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? roles = freezed,
    Object? platformName = freezed,
    Object? authMode = freezed,
  }) {
    return _then(SnapdSystemVolumeKeySlot(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as SnapdSystemVolumeKeySlotType,
      roles: freezed == roles
          ? _self.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      platformName: freezed == platformName
          ? _self.platformName
          : platformName // ignore: cast_nullable_to_non_nullable
              as String?,
      authMode: freezed == authMode
          ? _self.authMode
          : authMode // ignore: cast_nullable_to_non_nullable
              as SnapdSystemVolumeAuthMode?,
    ));
  }
}

/// Adds pattern-matching-related methods to [SnapdSystemVolumeKeySlot].
extension SnapdSystemVolumeKeySlotPatterns on SnapdSystemVolumeKeySlot {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SnapdSystemVolumeKeySlot value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapdSystemVolumeKeySlot() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SnapdSystemVolumeKeySlot value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdSystemVolumeKeySlot():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SnapdSystemVolumeKeySlot value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdSystemVolumeKeySlot() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(SnapdSystemVolumeKeySlotType type, List<String>? roles,
            String? platformName, SnapdSystemVolumeAuthMode? authMode)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapdSystemVolumeKeySlot() when $default != null:
        return $default(
            _that.type, _that.roles, _that.platformName, _that.authMode);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(SnapdSystemVolumeKeySlotType type, List<String>? roles,
            String? platformName, SnapdSystemVolumeAuthMode? authMode)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdSystemVolumeKeySlot():
        return $default(
            _that.type, _that.roles, _that.platformName, _that.authMode);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(SnapdSystemVolumeKeySlotType type, List<String>? roles,
            String? platformName, SnapdSystemVolumeAuthMode? authMode)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdSystemVolumeKeySlot() when $default != null:
        return $default(
            _that.type, _that.roles, _that.platformName, _that.authMode);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SnapdSystemVolumeKeySlot implements SnapdSystemVolumeKeySlot {
  const _SnapdSystemVolumeKeySlot(
      {required this.type,
      List<String>? roles,
      this.platformName,
      this.authMode})
      : _roles = roles;
  factory _SnapdSystemVolumeKeySlot.fromJson(Map<String, dynamic> json) =>
      _$SnapdSystemVolumeKeySlotFromJson(json);

  /// The key slot name, used to identify the key slot.
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

  @override
  final String? platformName;
  @override
  final SnapdSystemVolumeAuthMode? authMode;

  /// Create a copy of SnapdSystemVolumeKeySlot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SnapdSystemVolumeKeySlotCopyWith<_SnapdSystemVolumeKeySlot> get copyWith =>
      __$SnapdSystemVolumeKeySlotCopyWithImpl<_SnapdSystemVolumeKeySlot>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SnapdSystemVolumeKeySlotToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SnapdSystemVolumeKeySlot &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other.roles, _roles) &&
            (identical(other.platformName, platformName) ||
                other.platformName == platformName) &&
            (identical(other.authMode, authMode) ||
                other.authMode == authMode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, type,
        const DeepCollectionEquality().hash(_roles), platformName, authMode);
  }

  @override
  String toString() {
    return 'SnapdSystemVolumeKeySlot(type: $type, roles: $roles, platformName: $platformName, authMode: $authMode)';
  }
}

/// @nodoc
abstract mixin class _$SnapdSystemVolumeKeySlotCopyWith<$Res>
    implements $SnapdSystemVolumeKeySlotCopyWith<$Res> {
  factory _$SnapdSystemVolumeKeySlotCopyWith(_SnapdSystemVolumeKeySlot value,
          $Res Function(_SnapdSystemVolumeKeySlot) _then) =
      __$SnapdSystemVolumeKeySlotCopyWithImpl;
  @override
  @useResult
  $Res call(
      {SnapdSystemVolumeKeySlotType type,
      List<String>? roles,
      String? platformName,
      SnapdSystemVolumeAuthMode? authMode});
}

/// @nodoc
class __$SnapdSystemVolumeKeySlotCopyWithImpl<$Res>
    implements _$SnapdSystemVolumeKeySlotCopyWith<$Res> {
  __$SnapdSystemVolumeKeySlotCopyWithImpl(this._self, this._then);

  final _SnapdSystemVolumeKeySlot _self;
  final $Res Function(_SnapdSystemVolumeKeySlot) _then;

  /// Create a copy of SnapdSystemVolumeKeySlot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? roles = freezed,
    Object? platformName = freezed,
    Object? authMode = freezed,
  }) {
    return _then(_SnapdSystemVolumeKeySlot(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as SnapdSystemVolumeKeySlotType,
      roles: freezed == roles
          ? _self._roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      platformName: freezed == platformName
          ? _self.platformName
          : platformName // ignore: cast_nullable_to_non_nullable
              as String?,
      authMode: freezed == authMode
          ? _self.authMode
          : authMode // ignore: cast_nullable_to_non_nullable
              as SnapdSystemVolumeAuthMode?,
    ));
  }
}

/// @nodoc
mixin _$SnapdSystemVolumesResponse {
  Map<String, SnapdSystemVolume> get byContainerRole;

  /// Create a copy of SnapdSystemVolumesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SnapdSystemVolumesResponseCopyWith<SnapdSystemVolumesResponse>
      get copyWith =>
          _$SnapdSystemVolumesResponseCopyWithImpl<SnapdSystemVolumesResponse>(
              this as SnapdSystemVolumesResponse, _$identity);

  /// Serializes this SnapdSystemVolumesResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as SnapdSystemVolumesResponse;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SnapdSystemVolumesResponse &&
            const DeepCollectionEquality()
                .equals(other.byContainerRole, _this.byContainerRole));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as SnapdSystemVolumesResponse;
    return Object.hash(runtimeType,
        const DeepCollectionEquality().hash(_this.byContainerRole));
  }

  @override
  String toString() {
    final _this = this as SnapdSystemVolumesResponse;
    return 'SnapdSystemVolumesResponse(byContainerRole: ${_this.byContainerRole})';
  }
}

/// @nodoc
abstract mixin class $SnapdSystemVolumesResponseCopyWith<$Res> {
  factory $SnapdSystemVolumesResponseCopyWith(SnapdSystemVolumesResponse value,
          $Res Function(SnapdSystemVolumesResponse) _then) =
      _$SnapdSystemVolumesResponseCopyWithImpl;
  @useResult
  $Res call({Map<String, SnapdSystemVolume> byContainerRole});
}

/// @nodoc
class _$SnapdSystemVolumesResponseCopyWithImpl<$Res>
    implements $SnapdSystemVolumesResponseCopyWith<$Res> {
  _$SnapdSystemVolumesResponseCopyWithImpl(this._self, this._then);

  final SnapdSystemVolumesResponse _self;
  final $Res Function(SnapdSystemVolumesResponse) _then;

  /// Create a copy of SnapdSystemVolumesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? byContainerRole = null,
  }) {
    return _then(SnapdSystemVolumesResponse(
      byContainerRole: null == byContainerRole
          ? _self.byContainerRole
          : byContainerRole // ignore: cast_nullable_to_non_nullable
              as Map<String, SnapdSystemVolume>,
    ));
  }
}

/// Adds pattern-matching-related methods to [SnapdSystemVolumesResponse].
extension SnapdSystemVolumesResponsePatterns on SnapdSystemVolumesResponse {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SnapdSystemVolumesResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapdSystemVolumesResponse() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SnapdSystemVolumesResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdSystemVolumesResponse():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SnapdSystemVolumesResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdSystemVolumesResponse() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Map<String, SnapdSystemVolume> byContainerRole)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapdSystemVolumesResponse() when $default != null:
        return $default(_that.byContainerRole);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Map<String, SnapdSystemVolume> byContainerRole) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdSystemVolumesResponse():
        return $default(_that.byContainerRole);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Map<String, SnapdSystemVolume> byContainerRole)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdSystemVolumesResponse() when $default != null:
        return $default(_that.byContainerRole);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SnapdSystemVolumesResponse implements SnapdSystemVolumesResponse {
  const _SnapdSystemVolumesResponse(
      {Map<String, SnapdSystemVolume> byContainerRole = const {}})
      : _byContainerRole = byContainerRole;
  factory _SnapdSystemVolumesResponse.fromJson(Map<String, dynamic> json) =>
      _$SnapdSystemVolumesResponseFromJson(json);

  final Map<String, SnapdSystemVolume> _byContainerRole;
  @override
  @JsonKey()
  Map<String, SnapdSystemVolume> get byContainerRole {
    if (_byContainerRole is EqualUnmodifiableMapView) return _byContainerRole;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_byContainerRole);
  }

  /// Create a copy of SnapdSystemVolumesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SnapdSystemVolumesResponseCopyWith<_SnapdSystemVolumesResponse>
      get copyWith => __$SnapdSystemVolumesResponseCopyWithImpl<
          _SnapdSystemVolumesResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SnapdSystemVolumesResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SnapdSystemVolumesResponse &&
            const DeepCollectionEquality()
                .equals(other.byContainerRole, _byContainerRole));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(
        runtimeType, const DeepCollectionEquality().hash(_byContainerRole));
  }

  @override
  String toString() {
    return 'SnapdSystemVolumesResponse(byContainerRole: $byContainerRole)';
  }
}

/// @nodoc
abstract mixin class _$SnapdSystemVolumesResponseCopyWith<$Res>
    implements $SnapdSystemVolumesResponseCopyWith<$Res> {
  factory _$SnapdSystemVolumesResponseCopyWith(
          _SnapdSystemVolumesResponse value,
          $Res Function(_SnapdSystemVolumesResponse) _then) =
      __$SnapdSystemVolumesResponseCopyWithImpl;
  @override
  @useResult
  $Res call({Map<String, SnapdSystemVolume> byContainerRole});
}

/// @nodoc
class __$SnapdSystemVolumesResponseCopyWithImpl<$Res>
    implements _$SnapdSystemVolumesResponseCopyWith<$Res> {
  __$SnapdSystemVolumesResponseCopyWithImpl(this._self, this._then);

  final _SnapdSystemVolumesResponse _self;
  final $Res Function(_SnapdSystemVolumesResponse) _then;

  /// Create a copy of SnapdSystemVolumesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? byContainerRole = null,
  }) {
    return _then(_SnapdSystemVolumesResponse(
      byContainerRole: null == byContainerRole
          ? _self._byContainerRole
          : byContainerRole // ignore: cast_nullable_to_non_nullable
              as Map<String, SnapdSystemVolume>,
    ));
  }
}

/// @nodoc
mixin _$SnapdEntropyResponse {
  int get entropyBits;
  int get minEntropyBits;
  int get optimalEntropyBits;

  /// Create a copy of SnapdEntropyResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SnapdEntropyResponseCopyWith<SnapdEntropyResponse> get copyWith =>
      _$SnapdEntropyResponseCopyWithImpl<SnapdEntropyResponse>(
          this as SnapdEntropyResponse, _$identity);

  /// Serializes this SnapdEntropyResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as SnapdEntropyResponse;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SnapdEntropyResponse &&
            (identical(other.entropyBits, _this.entropyBits) ||
                other.entropyBits == _this.entropyBits) &&
            (identical(other.minEntropyBits, _this.minEntropyBits) ||
                other.minEntropyBits == _this.minEntropyBits) &&
            (identical(other.optimalEntropyBits, _this.optimalEntropyBits) ||
                other.optimalEntropyBits == _this.optimalEntropyBits));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as SnapdEntropyResponse;
    return Object.hash(runtimeType, _this.entropyBits, _this.minEntropyBits,
        _this.optimalEntropyBits);
  }

  @override
  String toString() {
    final _this = this as SnapdEntropyResponse;
    return 'SnapdEntropyResponse(entropyBits: ${_this.entropyBits}, minEntropyBits: ${_this.minEntropyBits}, optimalEntropyBits: ${_this.optimalEntropyBits})';
  }
}

/// @nodoc
abstract mixin class $SnapdEntropyResponseCopyWith<$Res> {
  factory $SnapdEntropyResponseCopyWith(SnapdEntropyResponse value,
          $Res Function(SnapdEntropyResponse) _then) =
      _$SnapdEntropyResponseCopyWithImpl;
  @useResult
  $Res call({int entropyBits, int minEntropyBits, int optimalEntropyBits});
}

/// @nodoc
class _$SnapdEntropyResponseCopyWithImpl<$Res>
    implements $SnapdEntropyResponseCopyWith<$Res> {
  _$SnapdEntropyResponseCopyWithImpl(this._self, this._then);

  final SnapdEntropyResponse _self;
  final $Res Function(SnapdEntropyResponse) _then;

  /// Create a copy of SnapdEntropyResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entropyBits = null,
    Object? minEntropyBits = null,
    Object? optimalEntropyBits = null,
  }) {
    return _then(SnapdEntropyResponse(
      entropyBits: null == entropyBits
          ? _self.entropyBits
          : entropyBits // ignore: cast_nullable_to_non_nullable
              as int,
      minEntropyBits: null == minEntropyBits
          ? _self.minEntropyBits
          : minEntropyBits // ignore: cast_nullable_to_non_nullable
              as int,
      optimalEntropyBits: null == optimalEntropyBits
          ? _self.optimalEntropyBits
          : optimalEntropyBits // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [SnapdEntropyResponse].
extension SnapdEntropyResponsePatterns on SnapdEntropyResponse {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SnapdEntropyResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapdEntropyResponse() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SnapdEntropyResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdEntropyResponse():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SnapdEntropyResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdEntropyResponse() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int entropyBits, int minEntropyBits, int optimalEntropyBits)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapdEntropyResponse() when $default != null:
        return $default(
            _that.entropyBits, _that.minEntropyBits, _that.optimalEntropyBits);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int entropyBits, int minEntropyBits, int optimalEntropyBits)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdEntropyResponse():
        return $default(
            _that.entropyBits, _that.minEntropyBits, _that.optimalEntropyBits);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            int entropyBits, int minEntropyBits, int optimalEntropyBits)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdEntropyResponse() when $default != null:
        return $default(
            _that.entropyBits, _that.minEntropyBits, _that.optimalEntropyBits);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SnapdEntropyResponse implements SnapdEntropyResponse {
  const _SnapdEntropyResponse(
      {required this.entropyBits,
      required this.minEntropyBits,
      required this.optimalEntropyBits});
  factory _SnapdEntropyResponse.fromJson(Map<String, dynamic> json) =>
      _$SnapdEntropyResponseFromJson(json);

  @override
  final int entropyBits;
  @override
  final int minEntropyBits;
  @override
  final int optimalEntropyBits;

  /// Create a copy of SnapdEntropyResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SnapdEntropyResponseCopyWith<_SnapdEntropyResponse> get copyWith =>
      __$SnapdEntropyResponseCopyWithImpl<_SnapdEntropyResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SnapdEntropyResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SnapdEntropyResponse &&
            (identical(other.entropyBits, entropyBits) ||
                other.entropyBits == entropyBits) &&
            (identical(other.minEntropyBits, minEntropyBits) ||
                other.minEntropyBits == minEntropyBits) &&
            (identical(other.optimalEntropyBits, optimalEntropyBits) ||
                other.optimalEntropyBits == optimalEntropyBits));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(
        runtimeType, entropyBits, minEntropyBits, optimalEntropyBits);
  }

  @override
  String toString() {
    return 'SnapdEntropyResponse(entropyBits: $entropyBits, minEntropyBits: $minEntropyBits, optimalEntropyBits: $optimalEntropyBits)';
  }
}

/// @nodoc
abstract mixin class _$SnapdEntropyResponseCopyWith<$Res>
    implements $SnapdEntropyResponseCopyWith<$Res> {
  factory _$SnapdEntropyResponseCopyWith(_SnapdEntropyResponse value,
          $Res Function(_SnapdEntropyResponse) _then) =
      __$SnapdEntropyResponseCopyWithImpl;
  @override
  @useResult
  $Res call({int entropyBits, int minEntropyBits, int optimalEntropyBits});
}

/// @nodoc
class __$SnapdEntropyResponseCopyWithImpl<$Res>
    implements _$SnapdEntropyResponseCopyWith<$Res> {
  __$SnapdEntropyResponseCopyWithImpl(this._self, this._then);

  final _SnapdEntropyResponse _self;
  final $Res Function(_SnapdEntropyResponse) _then;

  /// Create a copy of SnapdEntropyResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? entropyBits = null,
    Object? minEntropyBits = null,
    Object? optimalEntropyBits = null,
  }) {
    return _then(_SnapdEntropyResponse(
      entropyBits: null == entropyBits
          ? _self.entropyBits
          : entropyBits // ignore: cast_nullable_to_non_nullable
              as int,
      minEntropyBits: null == minEntropyBits
          ? _self.minEntropyBits
          : minEntropyBits // ignore: cast_nullable_to_non_nullable
              as int,
      optimalEntropyBits: null == optimalEntropyBits
          ? _self.optimalEntropyBits
          : optimalEntropyBits // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$SnapdStorageEncryptedResponse {
  SnapdStorageEncryptionStatus get status;
  SnapdAutoRepairResult? get autoRepairResult;
  List<SnapdRecommendedRemedialAction> get recommendations;

  /// Create a copy of SnapdStorageEncryptedResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SnapdStorageEncryptedResponseCopyWith<SnapdStorageEncryptedResponse>
      get copyWith => _$SnapdStorageEncryptedResponseCopyWithImpl<
              SnapdStorageEncryptedResponse>(
          this as SnapdStorageEncryptedResponse, _$identity);

  /// Serializes this SnapdStorageEncryptedResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as SnapdStorageEncryptedResponse;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SnapdStorageEncryptedResponse &&
            (identical(other.status, _this.status) ||
                other.status == _this.status) &&
            (identical(other.autoRepairResult, _this.autoRepairResult) ||
                other.autoRepairResult == _this.autoRepairResult) &&
            const DeepCollectionEquality()
                .equals(other.recommendations, _this.recommendations));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as SnapdStorageEncryptedResponse;
    return Object.hash(runtimeType, _this.status, _this.autoRepairResult,
        const DeepCollectionEquality().hash(_this.recommendations));
  }

  @override
  String toString() {
    final _this = this as SnapdStorageEncryptedResponse;
    return 'SnapdStorageEncryptedResponse(status: ${_this.status}, autoRepairResult: ${_this.autoRepairResult}, recommendations: ${_this.recommendations})';
  }
}

/// @nodoc
abstract mixin class $SnapdStorageEncryptedResponseCopyWith<$Res> {
  factory $SnapdStorageEncryptedResponseCopyWith(
          SnapdStorageEncryptedResponse value,
          $Res Function(SnapdStorageEncryptedResponse) _then) =
      _$SnapdStorageEncryptedResponseCopyWithImpl;
  @useResult
  $Res call(
      {SnapdStorageEncryptionStatus status,
      SnapdAutoRepairResult? autoRepairResult,
      List<SnapdRecommendedRemedialAction> recommendations});
}

/// @nodoc
class _$SnapdStorageEncryptedResponseCopyWithImpl<$Res>
    implements $SnapdStorageEncryptedResponseCopyWith<$Res> {
  _$SnapdStorageEncryptedResponseCopyWithImpl(this._self, this._then);

  final SnapdStorageEncryptedResponse _self;
  final $Res Function(SnapdStorageEncryptedResponse) _then;

  /// Create a copy of SnapdStorageEncryptedResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? autoRepairResult = freezed,
    Object? recommendations = null,
  }) {
    return _then(SnapdStorageEncryptedResponse(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as SnapdStorageEncryptionStatus,
      autoRepairResult: freezed == autoRepairResult
          ? _self.autoRepairResult
          : autoRepairResult // ignore: cast_nullable_to_non_nullable
              as SnapdAutoRepairResult?,
      recommendations: null == recommendations
          ? _self.recommendations
          : recommendations // ignore: cast_nullable_to_non_nullable
              as List<SnapdRecommendedRemedialAction>,
    ));
  }
}

/// Adds pattern-matching-related methods to [SnapdStorageEncryptedResponse].
extension SnapdStorageEncryptedResponsePatterns
    on SnapdStorageEncryptedResponse {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SnapdStorageEncryptedResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapdStorageEncryptedResponse() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SnapdStorageEncryptedResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdStorageEncryptedResponse():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SnapdStorageEncryptedResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdStorageEncryptedResponse() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            SnapdStorageEncryptionStatus status,
            SnapdAutoRepairResult? autoRepairResult,
            List<SnapdRecommendedRemedialAction> recommendations)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapdStorageEncryptedResponse() when $default != null:
        return $default(
            _that.status, _that.autoRepairResult, _that.recommendations);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            SnapdStorageEncryptionStatus status,
            SnapdAutoRepairResult? autoRepairResult,
            List<SnapdRecommendedRemedialAction> recommendations)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdStorageEncryptedResponse():
        return $default(
            _that.status, _that.autoRepairResult, _that.recommendations);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            SnapdStorageEncryptionStatus status,
            SnapdAutoRepairResult? autoRepairResult,
            List<SnapdRecommendedRemedialAction> recommendations)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdStorageEncryptedResponse() when $default != null:
        return $default(
            _that.status, _that.autoRepairResult, _that.recommendations);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SnapdStorageEncryptedResponse implements SnapdStorageEncryptedResponse {
  const _SnapdStorageEncryptedResponse(
      {required this.status,
      this.autoRepairResult,
      List<SnapdRecommendedRemedialAction> recommendations = const []})
      : _recommendations = recommendations;
  factory _SnapdStorageEncryptedResponse.fromJson(Map<String, dynamic> json) =>
      _$SnapdStorageEncryptedResponseFromJson(json);

  @override
  final SnapdStorageEncryptionStatus status;
  @override
  final SnapdAutoRepairResult? autoRepairResult;
  final List<SnapdRecommendedRemedialAction> _recommendations;
  @override
  @JsonKey()
  List<SnapdRecommendedRemedialAction> get recommendations {
    if (_recommendations is EqualUnmodifiableListView) return _recommendations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recommendations);
  }

  /// Create a copy of SnapdStorageEncryptedResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SnapdStorageEncryptedResponseCopyWith<_SnapdStorageEncryptedResponse>
      get copyWith => __$SnapdStorageEncryptedResponseCopyWithImpl<
          _SnapdStorageEncryptedResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SnapdStorageEncryptedResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SnapdStorageEncryptedResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.autoRepairResult, autoRepairResult) ||
                other.autoRepairResult == autoRepairResult) &&
            const DeepCollectionEquality()
                .equals(other.recommendations, _recommendations));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, status, autoRepairResult,
        const DeepCollectionEquality().hash(_recommendations));
  }

  @override
  String toString() {
    return 'SnapdStorageEncryptedResponse(status: $status, autoRepairResult: $autoRepairResult, recommendations: $recommendations)';
  }
}

/// @nodoc
abstract mixin class _$SnapdStorageEncryptedResponseCopyWith<$Res>
    implements $SnapdStorageEncryptedResponseCopyWith<$Res> {
  factory _$SnapdStorageEncryptedResponseCopyWith(
          _SnapdStorageEncryptedResponse value,
          $Res Function(_SnapdStorageEncryptedResponse) _then) =
      __$SnapdStorageEncryptedResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {SnapdStorageEncryptionStatus status,
      SnapdAutoRepairResult? autoRepairResult,
      List<SnapdRecommendedRemedialAction> recommendations});
}

/// @nodoc
class __$SnapdStorageEncryptedResponseCopyWithImpl<$Res>
    implements _$SnapdStorageEncryptedResponseCopyWith<$Res> {
  __$SnapdStorageEncryptedResponseCopyWithImpl(this._self, this._then);

  final _SnapdStorageEncryptedResponse _self;
  final $Res Function(_SnapdStorageEncryptedResponse) _then;

  /// Create a copy of SnapdStorageEncryptedResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? autoRepairResult = freezed,
    Object? recommendations = null,
  }) {
    return _then(_SnapdStorageEncryptedResponse(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as SnapdStorageEncryptionStatus,
      autoRepairResult: freezed == autoRepairResult
          ? _self.autoRepairResult
          : autoRepairResult // ignore: cast_nullable_to_non_nullable
              as SnapdAutoRepairResult?,
      recommendations: null == recommendations
          ? _self._recommendations
          : recommendations // ignore: cast_nullable_to_non_nullable
              as List<SnapdRecommendedRemedialAction>,
    ));
  }
}

/// @nodoc
mixin _$SnapdAvailabilityCheckError {
  SnapdAvailabilityCheckErrorKind get kind;
  String get message;
  Map<String, dynamic>? get args;
  List<SnapdFixAction> get actions;

  /// Create a copy of SnapdAvailabilityCheckError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SnapdAvailabilityCheckErrorCopyWith<SnapdAvailabilityCheckError>
      get copyWith => _$SnapdAvailabilityCheckErrorCopyWithImpl<
              SnapdAvailabilityCheckError>(
          this as SnapdAvailabilityCheckError, _$identity);

  /// Serializes this SnapdAvailabilityCheckError to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as SnapdAvailabilityCheckError;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SnapdAvailabilityCheckError &&
            (identical(other.kind, _this.kind) || other.kind == _this.kind) &&
            (identical(other.message, _this.message) ||
                other.message == _this.message) &&
            const DeepCollectionEquality().equals(other.args, _this.args) &&
            const DeepCollectionEquality()
                .equals(other.actions, _this.actions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as SnapdAvailabilityCheckError;
    return Object.hash(
        runtimeType,
        _this.kind,
        _this.message,
        const DeepCollectionEquality().hash(_this.args),
        const DeepCollectionEquality().hash(_this.actions));
  }

  @override
  String toString() {
    final _this = this as SnapdAvailabilityCheckError;
    return 'SnapdAvailabilityCheckError(kind: ${_this.kind}, message: ${_this.message}, args: ${_this.args}, actions: ${_this.actions})';
  }
}

/// @nodoc
abstract mixin class $SnapdAvailabilityCheckErrorCopyWith<$Res> {
  factory $SnapdAvailabilityCheckErrorCopyWith(
          SnapdAvailabilityCheckError value,
          $Res Function(SnapdAvailabilityCheckError) _then) =
      _$SnapdAvailabilityCheckErrorCopyWithImpl;
  @useResult
  $Res call(
      {SnapdAvailabilityCheckErrorKind kind,
      String message,
      Map<String, dynamic>? args,
      List<SnapdFixAction> actions});
}

/// @nodoc
class _$SnapdAvailabilityCheckErrorCopyWithImpl<$Res>
    implements $SnapdAvailabilityCheckErrorCopyWith<$Res> {
  _$SnapdAvailabilityCheckErrorCopyWithImpl(this._self, this._then);

  final SnapdAvailabilityCheckError _self;
  final $Res Function(SnapdAvailabilityCheckError) _then;

  /// Create a copy of SnapdAvailabilityCheckError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = null,
    Object? message = null,
    Object? args = freezed,
    Object? actions = null,
  }) {
    return _then(SnapdAvailabilityCheckError(
      kind: null == kind
          ? _self.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as SnapdAvailabilityCheckErrorKind,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      args: freezed == args
          ? _self.args
          : args // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      actions: null == actions
          ? _self.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<SnapdFixAction>,
    ));
  }
}

/// Adds pattern-matching-related methods to [SnapdAvailabilityCheckError].
extension SnapdAvailabilityCheckErrorPatterns on SnapdAvailabilityCheckError {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SnapdAvailabilityCheckError value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapdAvailabilityCheckError() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SnapdAvailabilityCheckError value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdAvailabilityCheckError():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SnapdAvailabilityCheckError value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdAvailabilityCheckError() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(SnapdAvailabilityCheckErrorKind kind, String message,
            Map<String, dynamic>? args, List<SnapdFixAction> actions)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapdAvailabilityCheckError() when $default != null:
        return $default(_that.kind, _that.message, _that.args, _that.actions);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(SnapdAvailabilityCheckErrorKind kind, String message,
            Map<String, dynamic>? args, List<SnapdFixAction> actions)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdAvailabilityCheckError():
        return $default(_that.kind, _that.message, _that.args, _that.actions);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(SnapdAvailabilityCheckErrorKind kind, String message,
            Map<String, dynamic>? args, List<SnapdFixAction> actions)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdAvailabilityCheckError() when $default != null:
        return $default(_that.kind, _that.message, _that.args, _that.actions);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SnapdAvailabilityCheckError implements SnapdAvailabilityCheckError {
  const _SnapdAvailabilityCheckError(
      {required this.kind,
      required this.message,
      Map<String, dynamic>? args,
      List<SnapdFixAction> actions = const []})
      : _args = args,
        _actions = actions;
  factory _SnapdAvailabilityCheckError.fromJson(Map<String, dynamic> json) =>
      _$SnapdAvailabilityCheckErrorFromJson(json);

  @override
  final SnapdAvailabilityCheckErrorKind kind;
  @override
  final String message;
  final Map<String, dynamic>? _args;
  @override
  Map<String, dynamic>? get args {
    final value = _args;
    if (value == null) return null;
    if (_args is EqualUnmodifiableMapView) return _args;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<SnapdFixAction> _actions;
  @override
  @JsonKey()
  List<SnapdFixAction> get actions {
    if (_actions is EqualUnmodifiableListView) return _actions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_actions);
  }

  /// Create a copy of SnapdAvailabilityCheckError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SnapdAvailabilityCheckErrorCopyWith<_SnapdAvailabilityCheckError>
      get copyWith => __$SnapdAvailabilityCheckErrorCopyWithImpl<
          _SnapdAvailabilityCheckError>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SnapdAvailabilityCheckErrorToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SnapdAvailabilityCheckError &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.args, _args) &&
            const DeepCollectionEquality().equals(other.actions, _actions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(
        runtimeType,
        kind,
        message,
        const DeepCollectionEquality().hash(_args),
        const DeepCollectionEquality().hash(_actions));
  }

  @override
  String toString() {
    return 'SnapdAvailabilityCheckError(kind: $kind, message: $message, args: $args, actions: $actions)';
  }
}

/// @nodoc
abstract mixin class _$SnapdAvailabilityCheckErrorCopyWith<$Res>
    implements $SnapdAvailabilityCheckErrorCopyWith<$Res> {
  factory _$SnapdAvailabilityCheckErrorCopyWith(
          _SnapdAvailabilityCheckError value,
          $Res Function(_SnapdAvailabilityCheckError) _then) =
      __$SnapdAvailabilityCheckErrorCopyWithImpl;
  @override
  @useResult
  $Res call(
      {SnapdAvailabilityCheckErrorKind kind,
      String message,
      Map<String, dynamic>? args,
      List<SnapdFixAction> actions});
}

/// @nodoc
class __$SnapdAvailabilityCheckErrorCopyWithImpl<$Res>
    implements _$SnapdAvailabilityCheckErrorCopyWith<$Res> {
  __$SnapdAvailabilityCheckErrorCopyWithImpl(this._self, this._then);

  final _SnapdAvailabilityCheckError _self;
  final $Res Function(_SnapdAvailabilityCheckError) _then;

  /// Create a copy of SnapdAvailabilityCheckError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? kind = null,
    Object? message = null,
    Object? args = freezed,
    Object? actions = null,
  }) {
    return _then(_SnapdAvailabilityCheckError(
      kind: null == kind
          ? _self.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as SnapdAvailabilityCheckErrorKind,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      args: freezed == args
          ? _self._args
          : args // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      actions: null == actions
          ? _self._actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<SnapdFixAction>,
    ));
  }
}

/// @nodoc
mixin _$SnapdStorageEncryption {
  SnapdStorageEncryptionSupport get support;
  String? get unavailableReason;
  List<SnapdAvailabilityCheckError> get availabilityCheckErrors;
  List<SnapdStorageEncryptionFeature> get features;
  List<SnapdStorageEncryptionRequirement> get requirements;

  /// Create a copy of SnapdStorageEncryption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SnapdStorageEncryptionCopyWith<SnapdStorageEncryption> get copyWith =>
      _$SnapdStorageEncryptionCopyWithImpl<SnapdStorageEncryption>(
          this as SnapdStorageEncryption, _$identity);

  /// Serializes this SnapdStorageEncryption to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as SnapdStorageEncryption;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SnapdStorageEncryption &&
            (identical(other.support, _this.support) ||
                other.support == _this.support) &&
            (identical(other.unavailableReason, _this.unavailableReason) ||
                other.unavailableReason == _this.unavailableReason) &&
            const DeepCollectionEquality().equals(
                other.availabilityCheckErrors, _this.availabilityCheckErrors) &&
            const DeepCollectionEquality()
                .equals(other.features, _this.features) &&
            const DeepCollectionEquality()
                .equals(other.requirements, _this.requirements));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as SnapdStorageEncryption;
    return Object.hash(
        runtimeType,
        _this.support,
        _this.unavailableReason,
        const DeepCollectionEquality().hash(_this.availabilityCheckErrors),
        const DeepCollectionEquality().hash(_this.features),
        const DeepCollectionEquality().hash(_this.requirements));
  }

  @override
  String toString() {
    final _this = this as SnapdStorageEncryption;
    return 'SnapdStorageEncryption(support: ${_this.support}, unavailableReason: ${_this.unavailableReason}, availabilityCheckErrors: ${_this.availabilityCheckErrors}, features: ${_this.features}, requirements: ${_this.requirements})';
  }
}

/// @nodoc
abstract mixin class $SnapdStorageEncryptionCopyWith<$Res> {
  factory $SnapdStorageEncryptionCopyWith(SnapdStorageEncryption value,
          $Res Function(SnapdStorageEncryption) _then) =
      _$SnapdStorageEncryptionCopyWithImpl;
  @useResult
  $Res call(
      {SnapdStorageEncryptionSupport support,
      String? unavailableReason,
      List<SnapdAvailabilityCheckError> availabilityCheckErrors,
      List<SnapdStorageEncryptionFeature> features,
      List<SnapdStorageEncryptionRequirement> requirements});
}

/// @nodoc
class _$SnapdStorageEncryptionCopyWithImpl<$Res>
    implements $SnapdStorageEncryptionCopyWith<$Res> {
  _$SnapdStorageEncryptionCopyWithImpl(this._self, this._then);

  final SnapdStorageEncryption _self;
  final $Res Function(SnapdStorageEncryption) _then;

  /// Create a copy of SnapdStorageEncryption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? support = null,
    Object? unavailableReason = freezed,
    Object? availabilityCheckErrors = null,
    Object? features = null,
    Object? requirements = null,
  }) {
    return _then(SnapdStorageEncryption(
      support: null == support
          ? _self.support
          : support // ignore: cast_nullable_to_non_nullable
              as SnapdStorageEncryptionSupport,
      unavailableReason: freezed == unavailableReason
          ? _self.unavailableReason
          : unavailableReason // ignore: cast_nullable_to_non_nullable
              as String?,
      availabilityCheckErrors: null == availabilityCheckErrors
          ? _self.availabilityCheckErrors
          : availabilityCheckErrors // ignore: cast_nullable_to_non_nullable
              as List<SnapdAvailabilityCheckError>,
      features: null == features
          ? _self.features
          : features // ignore: cast_nullable_to_non_nullable
              as List<SnapdStorageEncryptionFeature>,
      requirements: null == requirements
          ? _self.requirements
          : requirements // ignore: cast_nullable_to_non_nullable
              as List<SnapdStorageEncryptionRequirement>,
    ));
  }
}

/// Adds pattern-matching-related methods to [SnapdStorageEncryption].
extension SnapdStorageEncryptionPatterns on SnapdStorageEncryption {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SnapdStorageEncryption value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapdStorageEncryption() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SnapdStorageEncryption value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdStorageEncryption():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SnapdStorageEncryption value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdStorageEncryption() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            SnapdStorageEncryptionSupport support,
            String? unavailableReason,
            List<SnapdAvailabilityCheckError> availabilityCheckErrors,
            List<SnapdStorageEncryptionFeature> features,
            List<SnapdStorageEncryptionRequirement> requirements)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapdStorageEncryption() when $default != null:
        return $default(_that.support, _that.unavailableReason,
            _that.availabilityCheckErrors, _that.features, _that.requirements);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            SnapdStorageEncryptionSupport support,
            String? unavailableReason,
            List<SnapdAvailabilityCheckError> availabilityCheckErrors,
            List<SnapdStorageEncryptionFeature> features,
            List<SnapdStorageEncryptionRequirement> requirements)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdStorageEncryption():
        return $default(_that.support, _that.unavailableReason,
            _that.availabilityCheckErrors, _that.features, _that.requirements);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            SnapdStorageEncryptionSupport support,
            String? unavailableReason,
            List<SnapdAvailabilityCheckError> availabilityCheckErrors,
            List<SnapdStorageEncryptionFeature> features,
            List<SnapdStorageEncryptionRequirement> requirements)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdStorageEncryption() when $default != null:
        return $default(_that.support, _that.unavailableReason,
            _that.availabilityCheckErrors, _that.features, _that.requirements);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SnapdStorageEncryption implements SnapdStorageEncryption {
  const _SnapdStorageEncryption(
      {required this.support,
      this.unavailableReason,
      List<SnapdAvailabilityCheckError> availabilityCheckErrors = const [],
      List<SnapdStorageEncryptionFeature> features = const [],
      List<SnapdStorageEncryptionRequirement> requirements = const []})
      : _availabilityCheckErrors = availabilityCheckErrors,
        _features = features,
        _requirements = requirements;
  factory _SnapdStorageEncryption.fromJson(Map<String, dynamic> json) =>
      _$SnapdStorageEncryptionFromJson(json);

  @override
  final SnapdStorageEncryptionSupport support;
  @override
  final String? unavailableReason;
  final List<SnapdAvailabilityCheckError> _availabilityCheckErrors;
  @override
  @JsonKey()
  List<SnapdAvailabilityCheckError> get availabilityCheckErrors {
    if (_availabilityCheckErrors is EqualUnmodifiableListView)
      return _availabilityCheckErrors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availabilityCheckErrors);
  }

  final List<SnapdStorageEncryptionFeature> _features;
  @override
  @JsonKey()
  List<SnapdStorageEncryptionFeature> get features {
    if (_features is EqualUnmodifiableListView) return _features;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_features);
  }

  final List<SnapdStorageEncryptionRequirement> _requirements;
  @override
  @JsonKey()
  List<SnapdStorageEncryptionRequirement> get requirements {
    if (_requirements is EqualUnmodifiableListView) return _requirements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_requirements);
  }

  /// Create a copy of SnapdStorageEncryption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SnapdStorageEncryptionCopyWith<_SnapdStorageEncryption> get copyWith =>
      __$SnapdStorageEncryptionCopyWithImpl<_SnapdStorageEncryption>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SnapdStorageEncryptionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SnapdStorageEncryption &&
            (identical(other.support, support) || other.support == support) &&
            (identical(other.unavailableReason, unavailableReason) ||
                other.unavailableReason == unavailableReason) &&
            const DeepCollectionEquality().equals(
                other.availabilityCheckErrors, _availabilityCheckErrors) &&
            const DeepCollectionEquality().equals(other.features, _features) &&
            const DeepCollectionEquality()
                .equals(other.requirements, _requirements));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(
        runtimeType,
        support,
        unavailableReason,
        const DeepCollectionEquality().hash(_availabilityCheckErrors),
        const DeepCollectionEquality().hash(_features),
        const DeepCollectionEquality().hash(_requirements));
  }

  @override
  String toString() {
    return 'SnapdStorageEncryption(support: $support, unavailableReason: $unavailableReason, availabilityCheckErrors: $availabilityCheckErrors, features: $features, requirements: $requirements)';
  }
}

/// @nodoc
abstract mixin class _$SnapdStorageEncryptionCopyWith<$Res>
    implements $SnapdStorageEncryptionCopyWith<$Res> {
  factory _$SnapdStorageEncryptionCopyWith(_SnapdStorageEncryption value,
          $Res Function(_SnapdStorageEncryption) _then) =
      __$SnapdStorageEncryptionCopyWithImpl;
  @override
  @useResult
  $Res call(
      {SnapdStorageEncryptionSupport support,
      String? unavailableReason,
      List<SnapdAvailabilityCheckError> availabilityCheckErrors,
      List<SnapdStorageEncryptionFeature> features,
      List<SnapdStorageEncryptionRequirement> requirements});
}

/// @nodoc
class __$SnapdStorageEncryptionCopyWithImpl<$Res>
    implements _$SnapdStorageEncryptionCopyWith<$Res> {
  __$SnapdStorageEncryptionCopyWithImpl(this._self, this._then);

  final _SnapdStorageEncryption _self;
  final $Res Function(_SnapdStorageEncryption) _then;

  /// Create a copy of SnapdStorageEncryption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? support = null,
    Object? unavailableReason = freezed,
    Object? availabilityCheckErrors = null,
    Object? features = null,
    Object? requirements = null,
  }) {
    return _then(_SnapdStorageEncryption(
      support: null == support
          ? _self.support
          : support // ignore: cast_nullable_to_non_nullable
              as SnapdStorageEncryptionSupport,
      unavailableReason: freezed == unavailableReason
          ? _self.unavailableReason
          : unavailableReason // ignore: cast_nullable_to_non_nullable
              as String?,
      availabilityCheckErrors: null == availabilityCheckErrors
          ? _self._availabilityCheckErrors
          : availabilityCheckErrors // ignore: cast_nullable_to_non_nullable
              as List<SnapdAvailabilityCheckError>,
      features: null == features
          ? _self._features
          : features // ignore: cast_nullable_to_non_nullable
              as List<SnapdStorageEncryptionFeature>,
      requirements: null == requirements
          ? _self._requirements
          : requirements // ignore: cast_nullable_to_non_nullable
              as List<SnapdStorageEncryptionRequirement>,
    ));
  }
}

/// @nodoc
mixin _$SnapdSystemsResponse {
  SnapdStorageEncryption get storageEncryption;

  /// Create a copy of SnapdSystemsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SnapdSystemsResponseCopyWith<SnapdSystemsResponse> get copyWith =>
      _$SnapdSystemsResponseCopyWithImpl<SnapdSystemsResponse>(
          this as SnapdSystemsResponse, _$identity);

  /// Serializes this SnapdSystemsResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as SnapdSystemsResponse;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SnapdSystemsResponse &&
            (identical(other.storageEncryption, _this.storageEncryption) ||
                other.storageEncryption == _this.storageEncryption));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as SnapdSystemsResponse;
    return Object.hash(runtimeType, _this.storageEncryption);
  }

  @override
  String toString() {
    final _this = this as SnapdSystemsResponse;
    return 'SnapdSystemsResponse(storageEncryption: ${_this.storageEncryption})';
  }
}

/// @nodoc
abstract mixin class $SnapdSystemsResponseCopyWith<$Res> {
  factory $SnapdSystemsResponseCopyWith(SnapdSystemsResponse value,
          $Res Function(SnapdSystemsResponse) _then) =
      _$SnapdSystemsResponseCopyWithImpl;
  @useResult
  $Res call({SnapdStorageEncryption storageEncryption});

  $SnapdStorageEncryptionCopyWith<$Res> get storageEncryption;
}

/// @nodoc
class _$SnapdSystemsResponseCopyWithImpl<$Res>
    implements $SnapdSystemsResponseCopyWith<$Res> {
  _$SnapdSystemsResponseCopyWithImpl(this._self, this._then);

  final SnapdSystemsResponse _self;
  final $Res Function(SnapdSystemsResponse) _then;

  /// Create a copy of SnapdSystemsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storageEncryption = null,
  }) {
    return _then(SnapdSystemsResponse(
      storageEncryption: null == storageEncryption
          ? _self.storageEncryption
          : storageEncryption // ignore: cast_nullable_to_non_nullable
              as SnapdStorageEncryption,
    ));
  }

  /// Create a copy of SnapdSystemsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SnapdStorageEncryptionCopyWith<$Res> get storageEncryption {
    return $SnapdStorageEncryptionCopyWith<$Res>(_self.storageEncryption,
        (value) {
      return _then(_self.copyWith(storageEncryption: value));
    });
  }
}

/// Adds pattern-matching-related methods to [SnapdSystemsResponse].
extension SnapdSystemsResponsePatterns on SnapdSystemsResponse {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SnapdSystemsResponse value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapdSystemsResponse() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SnapdSystemsResponse value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdSystemsResponse():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SnapdSystemsResponse value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdSystemsResponse() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(SnapdStorageEncryption storageEncryption)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapdSystemsResponse() when $default != null:
        return $default(_that.storageEncryption);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(SnapdStorageEncryption storageEncryption) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdSystemsResponse():
        return $default(_that.storageEncryption);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(SnapdStorageEncryption storageEncryption)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdSystemsResponse() when $default != null:
        return $default(_that.storageEncryption);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SnapdSystemsResponse implements SnapdSystemsResponse {
  const _SnapdSystemsResponse({required this.storageEncryption});
  factory _SnapdSystemsResponse.fromJson(Map<String, dynamic> json) =>
      _$SnapdSystemsResponseFromJson(json);

  @override
  final SnapdStorageEncryption storageEncryption;

  /// Create a copy of SnapdSystemsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SnapdSystemsResponseCopyWith<_SnapdSystemsResponse> get copyWith =>
      __$SnapdSystemsResponseCopyWithImpl<_SnapdSystemsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SnapdSystemsResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SnapdSystemsResponse &&
            (identical(other.storageEncryption, storageEncryption) ||
                other.storageEncryption == storageEncryption));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, storageEncryption);
  }

  @override
  String toString() {
    return 'SnapdSystemsResponse(storageEncryption: $storageEncryption)';
  }
}

/// @nodoc
abstract mixin class _$SnapdSystemsResponseCopyWith<$Res>
    implements $SnapdSystemsResponseCopyWith<$Res> {
  factory _$SnapdSystemsResponseCopyWith(_SnapdSystemsResponse value,
          $Res Function(_SnapdSystemsResponse) _then) =
      __$SnapdSystemsResponseCopyWithImpl;
  @override
  @useResult
  $Res call({SnapdStorageEncryption storageEncryption});

  @override
  $SnapdStorageEncryptionCopyWith<$Res> get storageEncryption;
}

/// @nodoc
class __$SnapdSystemsResponseCopyWithImpl<$Res>
    implements _$SnapdSystemsResponseCopyWith<$Res> {
  __$SnapdSystemsResponseCopyWithImpl(this._self, this._then);

  final _SnapdSystemsResponse _self;
  final $Res Function(_SnapdSystemsResponse) _then;

  /// Create a copy of SnapdSystemsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? storageEncryption = null,
  }) {
    return _then(_SnapdSystemsResponse(
      storageEncryption: null == storageEncryption
          ? _self.storageEncryption
          : storageEncryption // ignore: cast_nullable_to_non_nullable
              as SnapdStorageEncryption,
    ));
  }

  /// Create a copy of SnapdSystemsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SnapdStorageEncryptionCopyWith<$Res> get storageEncryption {
    return $SnapdStorageEncryptionCopyWith<$Res>(_self.storageEncryption,
        (value) {
      return _then(_self.copyWith(storageEncryption: value));
    });
  }
}

/// @nodoc
mixin _$SnapdGenerateReprovisionRecoveryKeyResponse {
  String get recoveryKey;

  /// Create a copy of SnapdGenerateReprovisionRecoveryKeyResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SnapdGenerateReprovisionRecoveryKeyResponseCopyWith<
          SnapdGenerateReprovisionRecoveryKeyResponse>
      get copyWith => _$SnapdGenerateReprovisionRecoveryKeyResponseCopyWithImpl<
              SnapdGenerateReprovisionRecoveryKeyResponse>(
          this as SnapdGenerateReprovisionRecoveryKeyResponse, _$identity);

  /// Serializes this SnapdGenerateReprovisionRecoveryKeyResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as SnapdGenerateReprovisionRecoveryKeyResponse;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SnapdGenerateReprovisionRecoveryKeyResponse &&
            (identical(other.recoveryKey, _this.recoveryKey) ||
                other.recoveryKey == _this.recoveryKey));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as SnapdGenerateReprovisionRecoveryKeyResponse;
    return Object.hash(runtimeType, _this.recoveryKey);
  }
}

/// @nodoc
abstract mixin class $SnapdGenerateReprovisionRecoveryKeyResponseCopyWith<
    $Res> {
  factory $SnapdGenerateReprovisionRecoveryKeyResponseCopyWith(
          SnapdGenerateReprovisionRecoveryKeyResponse value,
          $Res Function(SnapdGenerateReprovisionRecoveryKeyResponse) _then) =
      _$SnapdGenerateReprovisionRecoveryKeyResponseCopyWithImpl;
  @useResult
  $Res call({String recoveryKey});
}

/// @nodoc
class _$SnapdGenerateReprovisionRecoveryKeyResponseCopyWithImpl<$Res>
    implements $SnapdGenerateReprovisionRecoveryKeyResponseCopyWith<$Res> {
  _$SnapdGenerateReprovisionRecoveryKeyResponseCopyWithImpl(
      this._self, this._then);

  final SnapdGenerateReprovisionRecoveryKeyResponse _self;
  final $Res Function(SnapdGenerateReprovisionRecoveryKeyResponse) _then;

  /// Create a copy of SnapdGenerateReprovisionRecoveryKeyResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recoveryKey = null,
  }) {
    return _then(SnapdGenerateReprovisionRecoveryKeyResponse(
      recoveryKey: null == recoveryKey
          ? _self.recoveryKey
          : recoveryKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [SnapdGenerateReprovisionRecoveryKeyResponse].
extension SnapdGenerateReprovisionRecoveryKeyResponsePatterns
    on SnapdGenerateReprovisionRecoveryKeyResponse {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SnapdGenerateReprovisionRecoveryKeyResponse value)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapdGenerateReprovisionRecoveryKeyResponse() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SnapdGenerateReprovisionRecoveryKeyResponse value)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdGenerateReprovisionRecoveryKeyResponse():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SnapdGenerateReprovisionRecoveryKeyResponse value)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdGenerateReprovisionRecoveryKeyResponse() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String recoveryKey)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnapdGenerateReprovisionRecoveryKeyResponse() when $default != null:
        return $default(_that.recoveryKey);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String recoveryKey) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdGenerateReprovisionRecoveryKeyResponse():
        return $default(_that.recoveryKey);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String recoveryKey)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnapdGenerateReprovisionRecoveryKeyResponse() when $default != null:
        return $default(_that.recoveryKey);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SnapdGenerateReprovisionRecoveryKeyResponse
    extends SnapdGenerateReprovisionRecoveryKeyResponse {
  const _SnapdGenerateReprovisionRecoveryKeyResponse(
      {required this.recoveryKey})
      : super._();
  factory _SnapdGenerateReprovisionRecoveryKeyResponse.fromJson(
          Map<String, dynamic> json) =>
      _$SnapdGenerateReprovisionRecoveryKeyResponseFromJson(json);

  @override
  final String recoveryKey;

  /// Create a copy of SnapdGenerateReprovisionRecoveryKeyResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SnapdGenerateReprovisionRecoveryKeyResponseCopyWith<
          _SnapdGenerateReprovisionRecoveryKeyResponse>
      get copyWith =>
          __$SnapdGenerateReprovisionRecoveryKeyResponseCopyWithImpl<
              _SnapdGenerateReprovisionRecoveryKeyResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SnapdGenerateReprovisionRecoveryKeyResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SnapdGenerateReprovisionRecoveryKeyResponse &&
            (identical(other.recoveryKey, recoveryKey) ||
                other.recoveryKey == recoveryKey));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, recoveryKey);
  }
}

/// @nodoc
abstract mixin class _$SnapdGenerateReprovisionRecoveryKeyResponseCopyWith<$Res>
    implements $SnapdGenerateReprovisionRecoveryKeyResponseCopyWith<$Res> {
  factory _$SnapdGenerateReprovisionRecoveryKeyResponseCopyWith(
          _SnapdGenerateReprovisionRecoveryKeyResponse value,
          $Res Function(_SnapdGenerateReprovisionRecoveryKeyResponse) _then) =
      __$SnapdGenerateReprovisionRecoveryKeyResponseCopyWithImpl;
  @override
  @useResult
  $Res call({String recoveryKey});
}

/// @nodoc
class __$SnapdGenerateReprovisionRecoveryKeyResponseCopyWithImpl<$Res>
    implements _$SnapdGenerateReprovisionRecoveryKeyResponseCopyWith<$Res> {
  __$SnapdGenerateReprovisionRecoveryKeyResponseCopyWithImpl(
      this._self, this._then);

  final _SnapdGenerateReprovisionRecoveryKeyResponse _self;
  final $Res Function(_SnapdGenerateReprovisionRecoveryKeyResponse) _then;

  /// Create a copy of SnapdGenerateReprovisionRecoveryKeyResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? recoveryKey = null,
  }) {
    return _then(_SnapdGenerateReprovisionRecoveryKeyResponse(
      recoveryKey: null == recoveryKey
          ? _self.recoveryKey
          : recoveryKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$RefreshInhibit {
  @_SnapdDateTimeConverter()
  DateTime get proceedTime;

  /// Create a copy of RefreshInhibit
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RefreshInhibitCopyWith<RefreshInhibit> get copyWith =>
      _$RefreshInhibitCopyWithImpl<RefreshInhibit>(
          this as RefreshInhibit, _$identity);

  /// Serializes this RefreshInhibit to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as RefreshInhibit;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RefreshInhibit &&
            (identical(other.proceedTime, _this.proceedTime) ||
                other.proceedTime == _this.proceedTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as RefreshInhibit;
    return Object.hash(runtimeType, _this.proceedTime);
  }

  @override
  String toString() {
    final _this = this as RefreshInhibit;
    return 'RefreshInhibit(proceedTime: ${_this.proceedTime})';
  }
}

/// @nodoc
abstract mixin class $RefreshInhibitCopyWith<$Res> {
  factory $RefreshInhibitCopyWith(
          RefreshInhibit value, $Res Function(RefreshInhibit) _then) =
      _$RefreshInhibitCopyWithImpl;
  @useResult
  $Res call({@_SnapdDateTimeConverter() DateTime proceedTime});
}

/// @nodoc
class _$RefreshInhibitCopyWithImpl<$Res>
    implements $RefreshInhibitCopyWith<$Res> {
  _$RefreshInhibitCopyWithImpl(this._self, this._then);

  final RefreshInhibit _self;
  final $Res Function(RefreshInhibit) _then;

  /// Create a copy of RefreshInhibit
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? proceedTime = null,
  }) {
    return _then(RefreshInhibit(
      proceedTime: null == proceedTime
          ? _self.proceedTime
          : proceedTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// Adds pattern-matching-related methods to [RefreshInhibit].
extension RefreshInhibitPatterns on RefreshInhibit {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_RefreshInhibit value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RefreshInhibit() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_RefreshInhibit value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RefreshInhibit():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_RefreshInhibit value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RefreshInhibit() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(@_SnapdDateTimeConverter() DateTime proceedTime)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RefreshInhibit() when $default != null:
        return $default(_that.proceedTime);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(@_SnapdDateTimeConverter() DateTime proceedTime) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RefreshInhibit():
        return $default(_that.proceedTime);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(@_SnapdDateTimeConverter() DateTime proceedTime)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RefreshInhibit() when $default != null:
        return $default(_that.proceedTime);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _RefreshInhibit implements RefreshInhibit {
  const _RefreshInhibit({@_SnapdDateTimeConverter() required this.proceedTime});
  factory _RefreshInhibit.fromJson(Map<String, dynamic> json) =>
      _$RefreshInhibitFromJson(json);

  @override
  @_SnapdDateTimeConverter()
  final DateTime proceedTime;

  /// Create a copy of RefreshInhibit
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RefreshInhibitCopyWith<_RefreshInhibit> get copyWith =>
      __$RefreshInhibitCopyWithImpl<_RefreshInhibit>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RefreshInhibitToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RefreshInhibit &&
            (identical(other.proceedTime, proceedTime) ||
                other.proceedTime == proceedTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, proceedTime);
  }

  @override
  String toString() {
    return 'RefreshInhibit(proceedTime: $proceedTime)';
  }
}

/// @nodoc
abstract mixin class _$RefreshInhibitCopyWith<$Res>
    implements $RefreshInhibitCopyWith<$Res> {
  factory _$RefreshInhibitCopyWith(
          _RefreshInhibit value, $Res Function(_RefreshInhibit) _then) =
      __$RefreshInhibitCopyWithImpl;
  @override
  @useResult
  $Res call({@_SnapdDateTimeConverter() DateTime proceedTime});
}

/// @nodoc
class __$RefreshInhibitCopyWithImpl<$Res>
    implements _$RefreshInhibitCopyWith<$Res> {
  __$RefreshInhibitCopyWithImpl(this._self, this._then);

  final _RefreshInhibit _self;
  final $Res Function(_RefreshInhibit) _then;

  /// Create a copy of RefreshInhibit
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? proceedTime = null,
  }) {
    return _then(_RefreshInhibit(
      proceedTime: null == proceedTime
          ? _self.proceedTime
          : proceedTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

// dart format on
