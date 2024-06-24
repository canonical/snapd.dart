// ignore_for_file: invalid_annotation_target

import 'dart:convert';
import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path/path.dart' as p;
import 'package:yaml/yaml.dart';

part 'snapd_client.g.dart';
part 'snapd_client.freezed.dart';

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
@freezed
class SnapApp with _$SnapApp {
  const factory SnapApp({
    required String? snap,
    required String name,
    String? desktopFile,
    String? daemon,
    @Default(true) bool enabled,
    @Default(true) bool active,
    String? commonId,
  }) = _SnapApp;

  factory SnapApp.fromJson(Map<String, dynamic> json) =>
      _$SnapAppFromJson(json);
}

/// Describes an category this snap is part of.
@freezed
class SnapCategory with _$SnapCategory {
  const factory SnapCategory({
    required String name,
    @Default(false) bool featured,
  }) = _SnapCategory;

  factory SnapCategory.fromJson(Map<String, dynamic> json) =>
      _$SnapCategoryFromJson(json);
}

/// Describes a snap category.
@freezed
class SnapCategoryDetails with _$SnapCategoryDetails {
  const factory SnapCategoryDetails({
    required String name,
  }) = _SnapCategoryDetails;

  factory SnapCategoryDetails.fromJson(Map<String, dynamic> json) =>
      _$SnapCategoryDetailsFromJson(json);
}

/// Describes a channel available for a snap.
@freezed
class SnapChannel with _$SnapChannel {
  const factory SnapChannel({
    required DateTime releasedAt,
    @JsonKey(unknownEnumValue: SnapConfinement.unknown)
    @Default(SnapConfinement.unknown)
    SnapConfinement confinement,
    @Default('') String revision,
    @Default(0) int size,
    @Default('') String version,
  }) = _SnapChannel;

  factory SnapChannel.fromJson(Map<String, dynamic> json) =>
      _$SnapChannelFromJson(json);
}

/// Describes a snap publisher.
@freezed
class SnapPublisher with _$SnapPublisher {
  const factory SnapPublisher({
    @Default('') String id,
    @Default('') String username,
    @Default('') String displayName,
    String? validation,
  }) = _SnapPublisher;

  factory SnapPublisher.fromJson(Map<String, dynamic> json) =>
      _$SnapPublisherFromJson(json);
}

/// Describes a piece of media associated with a snap.
@freezed
class SnapMedia with _$SnapMedia {
  const factory SnapMedia({
    required String type,
    required String url,
    int? width,
    int? height,
  }) = _SnapMedia;
  factory SnapMedia.fromJson(Map<String, dynamic> json) =>
      _$SnapMediaFromJson(json);
}

@freezed
class Snap with _$Snap {
  const factory Snap({
    required String name,
    @Default([]) List<SnapApp> apps,
    String? base,
    @Default([]) List<SnapCategory> categories,
    @Default('') String channel,
    @Default({}) Map<String, SnapChannel> channels,
    @Default([]) List<String> commonIds,
    @JsonKey(unknownEnumValue: SnapConfinement.unknown)
    @Default(SnapConfinement.unknown)
    SnapConfinement confinement,
    String? contact,
    @Default('') String description,
    @Default(false) bool devmode,
    int? downloadSize,
    DateTime? hold,
    @Default('') String id,
    DateTime? installDate,
    int? installedSize,
    @Default(false) bool jailmode,
    String? license,
    @Default([]) List<SnapMedia> media,
    String? mountedFrom,
    @Default(false) bool private,
    SnapPublisher? publisher,
    @Default('') String revision,
    @Default(SnapStatus.unknown) SnapStatus status,
    String? storeUrl,
    @Default('') String summary,
    String? title,
    String? trackingChannel,
    @Default([]) List<String> tracks,
    @Default('') String type,
    @Default('') String version,
    String? website,
  }) = _Snap;

  factory Snap.fromJson(Map<String, dynamic> json) => _$SnapFromJson(json);
}

/// Response received from snap-declaration assertions.
@freezed
class SnapDeclaration with _$SnapDeclaration {
  const factory SnapDeclaration({
    @Default('') String type,
    @Default('') String authorityId,
    @Default(0) int revision,
    @Default(0) int series,
    @Default('') String snapId,
    @Default('') String publisherId,
    @Default('') String snapName,
    @Default('') String timestamp,
    @Default('') String signKey,
  }) = _SnapDeclaration;

  factory SnapDeclaration.fromJson(Map<String, dynamic> json) =>
      _$SnapDeclarationFromJson(json);
}

/// Response received when getting system information.
@freezed
class SnapdSystemInfoResponse with _$SnapdSystemInfoResponse {
  const factory SnapdSystemInfoResponse({
    required SnapdSystemRefreshInfo refresh,
    @Default('') String architecture,
    @Default('') String buildId,
    @JsonKey(unknownEnumValue: SnapConfinement.unknown)
    @Default(SnapConfinement.unknown)
    SnapConfinement confinement,
    @Default('') String kernelVersion,
    @Default(false) bool managed,
    @Default(false) bool onClassic,
    @Default('') String series,
    @Default('') String systemMode,
    @Default('') String version,
  }) = _SnapdSystemInfoResponse;

  factory SnapdSystemInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$SnapdSystemInfoResponseFromJson(json);
}

/// Contains information about refreshes.
@freezed
class SnapdSystemRefreshInfo with _$SnapdSystemRefreshInfo {
  const factory SnapdSystemRefreshInfo({
    @_SnapdDateTimeConverter() required DateTime next,
    DateTime? last,
  }) = _SnapdSystemRefreshInfo;

  factory SnapdSystemRefreshInfo.fromJson(Map<String, dynamic> json) =>
      _$SnapdSystemRefreshInfoFromJson(json);
}

/// Response received when logging in.
@freezed
class SnapdLoginResponse with _$SnapdLoginResponse {
  const factory SnapdLoginResponse({
    required int id,
    String? username,
    String? email,
    String? macaroon,
    @Default([]) List<String> discharges,
    @Default([]) List<String> sshKeys,
  }) = _SnapdLoginResponse;

  factory SnapdLoginResponse.fromJson(Map<String, dynamic> json) =>
      _$SnapdLoginResponseFromJson(json);
}

/// Information on a snap plug.
@freezed
class SnapPlug with _$SnapPlug {
  const factory SnapPlug({
    required String snap,
    required String plug,
    @JsonKey(name: 'attrs') @Default({}) Map<String, dynamic> attributes,
    String? interface,
    @Default([]) List<SnapSlot> connections,
  }) = _SnapPlug;

  factory SnapPlug.fromJson(Map<String, dynamic> json) =>
      _$SnapPlugFromJson(json);
}

/// Information on a snap slot.
@freezed
class SnapSlot with _$SnapSlot {
  const factory SnapSlot({
    required String snap,
    required String slot,
    @JsonKey(name: 'attrs') @Default({}) Map<String, dynamic> attributes,
    String? interface,
    @Default([]) List<SnapPlug> connections,
  }) = _SnapSlot;

  factory SnapSlot.fromJson(Map<String, dynamic> json) =>
      _$SnapSlotFromJson(json);
}

/// Information on a connection between a snap plugs and slots.
@freezed
class SnapConnection with _$SnapConnection {
  const factory SnapConnection({
    required SnapSlot slot,
    required SnapPlug plug,
    required String interface,
    @JsonKey(name: 'slot-attrs')
    @Default({})
    Map<String, dynamic> slotAttributes,
    @JsonKey(name: 'plug-attrs')
    @Default({})
    Map<String, dynamic> plugAttributes,
    @Default(false) bool manual,
  }) = _SnapConnection;

  factory SnapConnection.fromJson(Map<String, dynamic> json) =>
      _$SnapConnectionFromJson(json);
}

/// Response received when getting connections.
@freezed
class SnapdConnectionsResponse with _$SnapdConnectionsResponse {
  const factory SnapdConnectionsResponse({
    @Default([]) List<SnapConnection> established,
    @Default([]) List<SnapPlug> plugs,
    @Default([]) List<SnapSlot> slots,
    @Default([]) List<SnapConnection> undesired,
  }) = _SnapdConnectionsResponse;

  factory SnapdConnectionsResponse.fromJson(Map<String, dynamic> json) =>
      _$SnapdConnectionsResponseFromJson(json);
}

/// Gives the state of an asynchronous operation.
@freezed
class SnapdChange with _$SnapdChange {
  const factory SnapdChange({
    DateTime? spawnTime,
    @Default('') String id,
    @Default('') String kind,
    @Default('') String summary,
    @Default('') String status,
    @Default(false) bool ready,
    DateTime? readyTime,
    String? err,
    @Default([]) List<SnapdTask> tasks,
    @JsonKey(
      name: 'data',
      toJson: SnapdChange._snapNamesToJson,
      fromJson: SnapdChange._snapNamesFromJson,
    )
    @Default([])
    List<String> snapNames,
  }) = _SnapdChange;

  factory SnapdChange.fromJson(Map<String, dynamic> json) =>
      _$SnapdChangeFromJson(json);

  static Map<String, dynamic> _snapNamesToJson(List<String> snapNames) {
    return {'snap-names': snapNames};
  }

  static List<String> _snapNamesFromJson(Map<String, dynamic> json) {
    return json['snap-names']?.cast<String>() as List<String>? ??
        const <String>[];
  }
}

/// Information about a task in a [SnapdChange].
@freezed
class SnapdTask with _$SnapdTask {
  const factory SnapdTask({
    DateTime? spawnTime,
    @Default('') String id,
    @Default('') String kind,
    @Default('') String summary,
    @Default('') String status,
    @Default(SnapdTaskProgress()) SnapdTaskProgress progress,
    DateTime? readyTime,
  }) = _SnapdTask;

  factory SnapdTask.fromJson(Map<String, dynamic> json) =>
      _$SnapdTaskFromJson(json);
}

/// Progress of a [SnapdTask].
@freezed
class SnapdTaskProgress with _$SnapdTaskProgress {
  const factory SnapdTaskProgress({
    @Default('') String label,
    @Default(0) int done,
    @Default(0) int total,
  }) = _SnapdTaskProgress;

  factory SnapdTaskProgress.fromJson(Map<String, dynamic> json) =>
      _$SnapdTaskProgressFromJson(json);
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
  _SnapdSyncResponse(Object? result, {super.statusCode, super.status})
      : _result = result;
  final Object? _result;

  @override
  Object? get result => _result;

  @override
  String get change => throw 'Result is sync';
}

/// Response retuned when an async request has been started.
class _SnapdAsyncResponse extends _SnapdResponse {
  const _SnapdAsyncResponse(
    this.change, {
    super.statusCode,
    super.status,
  });

  @override
  final String change;

  @override
  dynamic get result => throw 'Result is async';
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
  Future<List<SnapCategoryDetails>> getCategories() async {
    final result = await _getSyncList('/v2/categories');
    return result.map(SnapCategoryDetails.fromJson).toList();
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
    return List<Map<String, Object?>>.from(
      await _getSync(path, queryParameters),
    );
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
    if (type == 'sync') {
      return _SnapdSyncResponse(
        jsonResponse['result'],
        statusCode: statusCode,
        status: status,
      );
    } else if (type == 'async') {
      return _SnapdAsyncResponse(
        jsonResponse['change'] as String,
        statusCode: statusCode,
        status: status,
      );
    } else if (type == 'error') {
      final result = jsonResponse['result'];
      return _SnapdErrorResponse.fromJson(statusCode, status, result);
    } else {
      throw "Unknown snapd response '$type'";
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
