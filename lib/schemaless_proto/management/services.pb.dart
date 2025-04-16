//
//  Generated code. Do not modify.
//  source: management/services.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../google/protobuf/duration.pb.dart' as $7;
import '../google/protobuf/timestamp.pb.dart' as $6;
import '../types/entity.pb.dart' as $4;
import '../types/login.pbenum.dart' as $2;
import 'services.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'services.pbenum.dart';

class CumulativeHealthResponse extends $pb.GeneratedMessage {
  factory CumulativeHealthResponse({
    $core.bool? dB,
    $core.bool? pubSub,
    $core.bool? cache,
    $7.Duration? uptime,
    $6.Timestamp? currentTime,
    $core.String? hostname,
  }) {
    final $result = create();
    if (dB != null) {
      $result.dB = dB;
    }
    if (pubSub != null) {
      $result.pubSub = pubSub;
    }
    if (cache != null) {
      $result.cache = cache;
    }
    if (uptime != null) {
      $result.uptime = uptime;
    }
    if (currentTime != null) {
      $result.currentTime = currentTime;
    }
    if (hostname != null) {
      $result.hostname = hostname;
    }
    return $result;
  }
  CumulativeHealthResponse._() : super();
  factory CumulativeHealthResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CumulativeHealthResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CumulativeHealthResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'management_services'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'DB', protoName: 'DB')
    ..aOB(2, _omitFieldNames ? '' : 'PubSub', protoName: 'PubSub')
    ..aOB(3, _omitFieldNames ? '' : 'Cache', protoName: 'Cache')
    ..aOM<$7.Duration>(4, _omitFieldNames ? '' : 'Uptime', protoName: 'Uptime', subBuilder: $7.Duration.create)
    ..aOM<$6.Timestamp>(5, _omitFieldNames ? '' : 'CurrentTime', protoName: 'CurrentTime', subBuilder: $6.Timestamp.create)
    ..aOS(6, _omitFieldNames ? '' : 'Hostname', protoName: 'Hostname')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CumulativeHealthResponse clone() => CumulativeHealthResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CumulativeHealthResponse copyWith(void Function(CumulativeHealthResponse) updates) => super.copyWith((message) => updates(message as CumulativeHealthResponse)) as CumulativeHealthResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CumulativeHealthResponse create() => CumulativeHealthResponse._();
  CumulativeHealthResponse createEmptyInstance() => create();
  static $pb.PbList<CumulativeHealthResponse> createRepeated() => $pb.PbList<CumulativeHealthResponse>();
  @$core.pragma('dart2js:noInline')
  static CumulativeHealthResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CumulativeHealthResponse>(create);
  static CumulativeHealthResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get dB => $_getBF(0);
  @$pb.TagNumber(1)
  set dB($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDB() => $_has(0);
  @$pb.TagNumber(1)
  void clearDB() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get pubSub => $_getBF(1);
  @$pb.TagNumber(2)
  set pubSub($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPubSub() => $_has(1);
  @$pb.TagNumber(2)
  void clearPubSub() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get cache => $_getBF(2);
  @$pb.TagNumber(3)
  set cache($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCache() => $_has(2);
  @$pb.TagNumber(3)
  void clearCache() => $_clearField(3);

  @$pb.TagNumber(4)
  $7.Duration get uptime => $_getN(3);
  @$pb.TagNumber(4)
  set uptime($7.Duration v) { $_setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasUptime() => $_has(3);
  @$pb.TagNumber(4)
  void clearUptime() => $_clearField(4);
  @$pb.TagNumber(4)
  $7.Duration ensureUptime() => $_ensure(3);

  @$pb.TagNumber(5)
  $6.Timestamp get currentTime => $_getN(4);
  @$pb.TagNumber(5)
  set currentTime($6.Timestamp v) { $_setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasCurrentTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearCurrentTime() => $_clearField(5);
  @$pb.TagNumber(5)
  $6.Timestamp ensureCurrentTime() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.String get hostname => $_getSZ(5);
  @$pb.TagNumber(6)
  set hostname($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasHostname() => $_has(5);
  @$pb.TagNumber(6)
  void clearHostname() => $_clearField(6);
}

class RegisterResponse extends $pb.GeneratedMessage {
  factory RegisterResponse({
    $core.String? iD,
    $core.bool? isAdmin,
  }) {
    final $result = create();
    if (iD != null) {
      $result.iD = iD;
    }
    if (isAdmin != null) {
      $result.isAdmin = isAdmin;
    }
    return $result;
  }
  RegisterResponse._() : super();
  factory RegisterResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegisterResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RegisterResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'management_services'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ID', protoName: 'ID')
    ..aOB(2, _omitFieldNames ? '' : 'IsAdmin', protoName: 'IsAdmin')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RegisterResponse clone() => RegisterResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RegisterResponse copyWith(void Function(RegisterResponse) updates) => super.copyWith((message) => updates(message as RegisterResponse)) as RegisterResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegisterResponse create() => RegisterResponse._();
  RegisterResponse createEmptyInstance() => create();
  static $pb.PbList<RegisterResponse> createRepeated() => $pb.PbList<RegisterResponse>();
  @$core.pragma('dart2js:noInline')
  static RegisterResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegisterResponse>(create);
  static RegisterResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get iD => $_getSZ(0);
  @$pb.TagNumber(1)
  set iD($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasID() => $_has(0);
  @$pb.TagNumber(1)
  void clearID() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get isAdmin => $_getBF(1);
  @$pb.TagNumber(2)
  set isAdmin($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsAdmin() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsAdmin() => $_clearField(2);
}

class InitializedResponse extends $pb.GeneratedMessage {
  factory InitializedResponse({
    $core.bool? initialized,
  }) {
    final $result = create();
    if (initialized != null) {
      $result.initialized = initialized;
    }
    return $result;
  }
  InitializedResponse._() : super();
  factory InitializedResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InitializedResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'InitializedResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'management_services'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'Initialized', protoName: 'Initialized')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InitializedResponse clone() => InitializedResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InitializedResponse copyWith(void Function(InitializedResponse) updates) => super.copyWith((message) => updates(message as InitializedResponse)) as InitializedResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InitializedResponse create() => InitializedResponse._();
  InitializedResponse createEmptyInstance() => create();
  static $pb.PbList<InitializedResponse> createRepeated() => $pb.PbList<InitializedResponse>();
  @$core.pragma('dart2js:noInline')
  static InitializedResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InitializedResponse>(create);
  static InitializedResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get initialized => $_getBF(0);
  @$pb.TagNumber(1)
  set initialized($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasInitialized() => $_has(0);
  @$pb.TagNumber(1)
  void clearInitialized() => $_clearField(1);
}

class VerifyUserResponse extends $pb.GeneratedMessage {
  factory VerifyUserResponse({
    $core.String? iD,
    $core.bool? isAdmin,
  }) {
    final $result = create();
    if (iD != null) {
      $result.iD = iD;
    }
    if (isAdmin != null) {
      $result.isAdmin = isAdmin;
    }
    return $result;
  }
  VerifyUserResponse._() : super();
  factory VerifyUserResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VerifyUserResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VerifyUserResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'management_services'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ID', protoName: 'ID')
    ..aOB(2, _omitFieldNames ? '' : 'IsAdmin', protoName: 'IsAdmin')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VerifyUserResponse clone() => VerifyUserResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VerifyUserResponse copyWith(void Function(VerifyUserResponse) updates) => super.copyWith((message) => updates(message as VerifyUserResponse)) as VerifyUserResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VerifyUserResponse create() => VerifyUserResponse._();
  VerifyUserResponse createEmptyInstance() => create();
  static $pb.PbList<VerifyUserResponse> createRepeated() => $pb.PbList<VerifyUserResponse>();
  @$core.pragma('dart2js:noInline')
  static VerifyUserResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VerifyUserResponse>(create);
  static VerifyUserResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get iD => $_getSZ(0);
  @$pb.TagNumber(1)
  set iD($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasID() => $_has(0);
  @$pb.TagNumber(1)
  void clearID() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get isAdmin => $_getBF(1);
  @$pb.TagNumber(2)
  set isAdmin($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsAdmin() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsAdmin() => $_clearField(2);
}

class ListManagementUsersRequest extends $pb.GeneratedMessage {
  factory ListManagementUsersRequest({
    $core.int? limit,
    $core.int? page,
  }) {
    final $result = create();
    if (limit != null) {
      $result.limit = limit;
    }
    if (page != null) {
      $result.page = page;
    }
    return $result;
  }
  ListManagementUsersRequest._() : super();
  factory ListManagementUsersRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListManagementUsersRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListManagementUsersRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'management_services'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'Limit', $pb.PbFieldType.O3, protoName: 'Limit')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'Page', $pb.PbFieldType.O3, protoName: 'Page')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListManagementUsersRequest clone() => ListManagementUsersRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListManagementUsersRequest copyWith(void Function(ListManagementUsersRequest) updates) => super.copyWith((message) => updates(message as ListManagementUsersRequest)) as ListManagementUsersRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListManagementUsersRequest create() => ListManagementUsersRequest._();
  ListManagementUsersRequest createEmptyInstance() => create();
  static $pb.PbList<ListManagementUsersRequest> createRepeated() => $pb.PbList<ListManagementUsersRequest>();
  @$core.pragma('dart2js:noInline')
  static ListManagementUsersRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListManagementUsersRequest>(create);
  static ListManagementUsersRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get limit => $_getIZ(0);
  @$pb.TagNumber(1)
  set limit($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLimit() => $_has(0);
  @$pb.TagNumber(1)
  void clearLimit() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get page => $_getIZ(1);
  @$pb.TagNumber(2)
  set page($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPage() => $_has(1);
  @$pb.TagNumber(2)
  void clearPage() => $_clearField(2);
}

class ListManagementUsersResponse extends $pb.GeneratedMessage {
  factory ListManagementUsersResponse({
    $core.Iterable<ManagementUser>? users,
    $core.int? count,
  }) {
    final $result = create();
    if (users != null) {
      $result.users.addAll(users);
    }
    if (count != null) {
      $result.count = count;
    }
    return $result;
  }
  ListManagementUsersResponse._() : super();
  factory ListManagementUsersResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListManagementUsersResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListManagementUsersResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'management_services'), createEmptyInstance: create)
    ..pc<ManagementUser>(1, _omitFieldNames ? '' : 'Users', $pb.PbFieldType.PM, protoName: 'Users', subBuilder: ManagementUser.create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'Count', $pb.PbFieldType.O3, protoName: 'Count')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListManagementUsersResponse clone() => ListManagementUsersResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListManagementUsersResponse copyWith(void Function(ListManagementUsersResponse) updates) => super.copyWith((message) => updates(message as ListManagementUsersResponse)) as ListManagementUsersResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListManagementUsersResponse create() => ListManagementUsersResponse._();
  ListManagementUsersResponse createEmptyInstance() => create();
  static $pb.PbList<ListManagementUsersResponse> createRepeated() => $pb.PbList<ListManagementUsersResponse>();
  @$core.pragma('dart2js:noInline')
  static ListManagementUsersResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListManagementUsersResponse>(create);
  static ListManagementUsersResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<ManagementUser> get users => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get count => $_getIZ(1);
  @$pb.TagNumber(2)
  set count($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearCount() => $_clearField(2);
}

class ManagementUser extends $pb.GeneratedMessage {
  factory ManagementUser({
    $core.String? iD,
    $6.Timestamp? createdAt,
    $6.Timestamp? updatedAt,
    $core.String? email,
    $2.UserStatus? status,
    $core.bool? isAdmin,
  }) {
    final $result = create();
    if (iD != null) {
      $result.iD = iD;
    }
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      $result.updatedAt = updatedAt;
    }
    if (email != null) {
      $result.email = email;
    }
    if (status != null) {
      $result.status = status;
    }
    if (isAdmin != null) {
      $result.isAdmin = isAdmin;
    }
    return $result;
  }
  ManagementUser._() : super();
  factory ManagementUser.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ManagementUser.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ManagementUser', package: const $pb.PackageName(_omitMessageNames ? '' : 'management_services'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ID', protoName: 'ID')
    ..aOM<$6.Timestamp>(2, _omitFieldNames ? '' : 'CreatedAt', protoName: 'CreatedAt', subBuilder: $6.Timestamp.create)
    ..aOM<$6.Timestamp>(3, _omitFieldNames ? '' : 'UpdatedAt', protoName: 'UpdatedAt', subBuilder: $6.Timestamp.create)
    ..aOS(4, _omitFieldNames ? '' : 'Email', protoName: 'Email')
    ..e<$2.UserStatus>(5, _omitFieldNames ? '' : 'Status', $pb.PbFieldType.OE, protoName: 'Status', defaultOrMaker: $2.UserStatus.UserActivated, valueOf: $2.UserStatus.valueOf, enumValues: $2.UserStatus.values)
    ..aOB(6, _omitFieldNames ? '' : 'IsAdmin', protoName: 'IsAdmin')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ManagementUser clone() => ManagementUser()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ManagementUser copyWith(void Function(ManagementUser) updates) => super.copyWith((message) => updates(message as ManagementUser)) as ManagementUser;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ManagementUser create() => ManagementUser._();
  ManagementUser createEmptyInstance() => create();
  static $pb.PbList<ManagementUser> createRepeated() => $pb.PbList<ManagementUser>();
  @$core.pragma('dart2js:noInline')
  static ManagementUser getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ManagementUser>(create);
  static ManagementUser? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get iD => $_getSZ(0);
  @$pb.TagNumber(1)
  set iD($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasID() => $_has(0);
  @$pb.TagNumber(1)
  void clearID() => $_clearField(1);

  @$pb.TagNumber(2)
  $6.Timestamp get createdAt => $_getN(1);
  @$pb.TagNumber(2)
  set createdAt($6.Timestamp v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreatedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreatedAt() => $_clearField(2);
  @$pb.TagNumber(2)
  $6.Timestamp ensureCreatedAt() => $_ensure(1);

  @$pb.TagNumber(3)
  $6.Timestamp get updatedAt => $_getN(2);
  @$pb.TagNumber(3)
  set updatedAt($6.Timestamp v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasUpdatedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdatedAt() => $_clearField(3);
  @$pb.TagNumber(3)
  $6.Timestamp ensureUpdatedAt() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get email => $_getSZ(3);
  @$pb.TagNumber(4)
  set email($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEmail() => $_has(3);
  @$pb.TagNumber(4)
  void clearEmail() => $_clearField(4);

  @$pb.TagNumber(5)
  $2.UserStatus get status => $_getN(4);
  @$pb.TagNumber(5)
  set status($2.UserStatus v) { $_setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasStatus() => $_has(4);
  @$pb.TagNumber(5)
  void clearStatus() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.bool get isAdmin => $_getBF(5);
  @$pb.TagNumber(6)
  set isAdmin($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasIsAdmin() => $_has(5);
  @$pb.TagNumber(6)
  void clearIsAdmin() => $_clearField(6);
}

class ToggleUserApprovalRequest extends $pb.GeneratedMessage {
  factory ToggleUserApprovalRequest({
    $core.String? iD,
    $core.bool? approve,
  }) {
    final $result = create();
    if (iD != null) {
      $result.iD = iD;
    }
    if (approve != null) {
      $result.approve = approve;
    }
    return $result;
  }
  ToggleUserApprovalRequest._() : super();
  factory ToggleUserApprovalRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ToggleUserApprovalRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ToggleUserApprovalRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'management_services'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ID', protoName: 'ID')
    ..aOB(2, _omitFieldNames ? '' : 'Approve', protoName: 'Approve')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ToggleUserApprovalRequest clone() => ToggleUserApprovalRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ToggleUserApprovalRequest copyWith(void Function(ToggleUserApprovalRequest) updates) => super.copyWith((message) => updates(message as ToggleUserApprovalRequest)) as ToggleUserApprovalRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ToggleUserApprovalRequest create() => ToggleUserApprovalRequest._();
  ToggleUserApprovalRequest createEmptyInstance() => create();
  static $pb.PbList<ToggleUserApprovalRequest> createRepeated() => $pb.PbList<ToggleUserApprovalRequest>();
  @$core.pragma('dart2js:noInline')
  static ToggleUserApprovalRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ToggleUserApprovalRequest>(create);
  static ToggleUserApprovalRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get iD => $_getSZ(0);
  @$pb.TagNumber(1)
  set iD($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasID() => $_has(0);
  @$pb.TagNumber(1)
  void clearID() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get approve => $_getBF(1);
  @$pb.TagNumber(2)
  set approve($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasApprove() => $_has(1);
  @$pb.TagNumber(2)
  void clearApprove() => $_clearField(2);
}

class DeleteUserRequest extends $pb.GeneratedMessage {
  factory DeleteUserRequest({
    $core.String? iD,
  }) {
    final $result = create();
    if (iD != null) {
      $result.iD = iD;
    }
    return $result;
  }
  DeleteUserRequest._() : super();
  factory DeleteUserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteUserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteUserRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'management_services'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ID', protoName: 'ID')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteUserRequest clone() => DeleteUserRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteUserRequest copyWith(void Function(DeleteUserRequest) updates) => super.copyWith((message) => updates(message as DeleteUserRequest)) as DeleteUserRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteUserRequest create() => DeleteUserRequest._();
  DeleteUserRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteUserRequest> createRepeated() => $pb.PbList<DeleteUserRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteUserRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteUserRequest>(create);
  static DeleteUserRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get iD => $_getSZ(0);
  @$pb.TagNumber(1)
  set iD($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasID() => $_has(0);
  @$pb.TagNumber(1)
  void clearID() => $_clearField(1);
}

class ListApplicationsRequest extends $pb.GeneratedMessage {
  factory ListApplicationsRequest({
    $core.int? limit,
    $core.int? page,
  }) {
    final $result = create();
    if (limit != null) {
      $result.limit = limit;
    }
    if (page != null) {
      $result.page = page;
    }
    return $result;
  }
  ListApplicationsRequest._() : super();
  factory ListApplicationsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListApplicationsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListApplicationsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'management_services'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'Limit', $pb.PbFieldType.O3, protoName: 'Limit')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'Page', $pb.PbFieldType.O3, protoName: 'Page')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListApplicationsRequest clone() => ListApplicationsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListApplicationsRequest copyWith(void Function(ListApplicationsRequest) updates) => super.copyWith((message) => updates(message as ListApplicationsRequest)) as ListApplicationsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListApplicationsRequest create() => ListApplicationsRequest._();
  ListApplicationsRequest createEmptyInstance() => create();
  static $pb.PbList<ListApplicationsRequest> createRepeated() => $pb.PbList<ListApplicationsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListApplicationsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListApplicationsRequest>(create);
  static ListApplicationsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get limit => $_getIZ(0);
  @$pb.TagNumber(1)
  set limit($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLimit() => $_has(0);
  @$pb.TagNumber(1)
  void clearLimit() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get page => $_getIZ(1);
  @$pb.TagNumber(2)
  set page($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPage() => $_has(1);
  @$pb.TagNumber(2)
  void clearPage() => $_clearField(2);
}

class ListApplicationsResponse extends $pb.GeneratedMessage {
  factory ListApplicationsResponse({
    $core.Iterable<Application>? applications,
    $core.int? count,
  }) {
    final $result = create();
    if (applications != null) {
      $result.applications.addAll(applications);
    }
    if (count != null) {
      $result.count = count;
    }
    return $result;
  }
  ListApplicationsResponse._() : super();
  factory ListApplicationsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListApplicationsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListApplicationsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'management_services'), createEmptyInstance: create)
    ..pc<Application>(1, _omitFieldNames ? '' : 'Applications', $pb.PbFieldType.PM, protoName: 'Applications', subBuilder: Application.create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'Count', $pb.PbFieldType.O3, protoName: 'Count')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListApplicationsResponse clone() => ListApplicationsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListApplicationsResponse copyWith(void Function(ListApplicationsResponse) updates) => super.copyWith((message) => updates(message as ListApplicationsResponse)) as ListApplicationsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListApplicationsResponse create() => ListApplicationsResponse._();
  ListApplicationsResponse createEmptyInstance() => create();
  static $pb.PbList<ListApplicationsResponse> createRepeated() => $pb.PbList<ListApplicationsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListApplicationsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListApplicationsResponse>(create);
  static ListApplicationsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Application> get applications => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get count => $_getIZ(1);
  @$pb.TagNumber(2)
  set count($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearCount() => $_clearField(2);
}

class Application extends $pb.GeneratedMessage {
  factory Application({
    $core.String? iD,
    $6.Timestamp? createdAt,
    $6.Timestamp? updatedAt,
    $core.String? name,
  }) {
    final $result = create();
    if (iD != null) {
      $result.iD = iD;
    }
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      $result.updatedAt = updatedAt;
    }
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  Application._() : super();
  factory Application.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Application.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Application', package: const $pb.PackageName(_omitMessageNames ? '' : 'management_services'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ID', protoName: 'ID')
    ..aOM<$6.Timestamp>(2, _omitFieldNames ? '' : 'CreatedAt', protoName: 'CreatedAt', subBuilder: $6.Timestamp.create)
    ..aOM<$6.Timestamp>(3, _omitFieldNames ? '' : 'UpdatedAt', protoName: 'UpdatedAt', subBuilder: $6.Timestamp.create)
    ..aOS(4, _omitFieldNames ? '' : 'Name', protoName: 'Name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Application clone() => Application()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Application copyWith(void Function(Application) updates) => super.copyWith((message) => updates(message as Application)) as Application;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Application create() => Application._();
  Application createEmptyInstance() => create();
  static $pb.PbList<Application> createRepeated() => $pb.PbList<Application>();
  @$core.pragma('dart2js:noInline')
  static Application getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Application>(create);
  static Application? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get iD => $_getSZ(0);
  @$pb.TagNumber(1)
  set iD($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasID() => $_has(0);
  @$pb.TagNumber(1)
  void clearID() => $_clearField(1);

  @$pb.TagNumber(2)
  $6.Timestamp get createdAt => $_getN(1);
  @$pb.TagNumber(2)
  set createdAt($6.Timestamp v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreatedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreatedAt() => $_clearField(2);
  @$pb.TagNumber(2)
  $6.Timestamp ensureCreatedAt() => $_ensure(1);

  @$pb.TagNumber(3)
  $6.Timestamp get updatedAt => $_getN(2);
  @$pb.TagNumber(3)
  set updatedAt($6.Timestamp v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasUpdatedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdatedAt() => $_clearField(3);
  @$pb.TagNumber(3)
  $6.Timestamp ensureUpdatedAt() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get name => $_getSZ(3);
  @$pb.TagNumber(4)
  set name($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasName() => $_has(3);
  @$pb.TagNumber(4)
  void clearName() => $_clearField(4);
}

class CreateApplicationRequest extends $pb.GeneratedMessage {
  factory CreateApplicationRequest({
    $core.String? name,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  CreateApplicationRequest._() : super();
  factory CreateApplicationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateApplicationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateApplicationRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'management_services'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'Name', protoName: 'Name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateApplicationRequest clone() => CreateApplicationRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateApplicationRequest copyWith(void Function(CreateApplicationRequest) updates) => super.copyWith((message) => updates(message as CreateApplicationRequest)) as CreateApplicationRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateApplicationRequest create() => CreateApplicationRequest._();
  CreateApplicationRequest createEmptyInstance() => create();
  static $pb.PbList<CreateApplicationRequest> createRepeated() => $pb.PbList<CreateApplicationRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateApplicationRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateApplicationRequest>(create);
  static CreateApplicationRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);
}

class CreateApplicationResponse extends $pb.GeneratedMessage {
  factory CreateApplicationResponse({
    $core.String? iD,
  }) {
    final $result = create();
    if (iD != null) {
      $result.iD = iD;
    }
    return $result;
  }
  CreateApplicationResponse._() : super();
  factory CreateApplicationResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateApplicationResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateApplicationResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'management_services'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ID', protoName: 'ID')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateApplicationResponse clone() => CreateApplicationResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateApplicationResponse copyWith(void Function(CreateApplicationResponse) updates) => super.copyWith((message) => updates(message as CreateApplicationResponse)) as CreateApplicationResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateApplicationResponse create() => CreateApplicationResponse._();
  CreateApplicationResponse createEmptyInstance() => create();
  static $pb.PbList<CreateApplicationResponse> createRepeated() => $pb.PbList<CreateApplicationResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateApplicationResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateApplicationResponse>(create);
  static CreateApplicationResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get iD => $_getSZ(0);
  @$pb.TagNumber(1)
  set iD($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasID() => $_has(0);
  @$pb.TagNumber(1)
  void clearID() => $_clearField(1);
}

class DeleteApplicationRequest extends $pb.GeneratedMessage {
  factory DeleteApplicationRequest({
    $core.String? iD,
  }) {
    final $result = create();
    if (iD != null) {
      $result.iD = iD;
    }
    return $result;
  }
  DeleteApplicationRequest._() : super();
  factory DeleteApplicationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteApplicationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteApplicationRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'management_services'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ID', protoName: 'ID')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteApplicationRequest clone() => DeleteApplicationRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteApplicationRequest copyWith(void Function(DeleteApplicationRequest) updates) => super.copyWith((message) => updates(message as DeleteApplicationRequest)) as DeleteApplicationRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteApplicationRequest create() => DeleteApplicationRequest._();
  DeleteApplicationRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteApplicationRequest> createRepeated() => $pb.PbList<DeleteApplicationRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteApplicationRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteApplicationRequest>(create);
  static DeleteApplicationRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get iD => $_getSZ(0);
  @$pb.TagNumber(1)
  set iD($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasID() => $_has(0);
  @$pb.TagNumber(1)
  void clearID() => $_clearField(1);
}

class GetApplicationRequest extends $pb.GeneratedMessage {
  factory GetApplicationRequest({
    $core.String? applicationID,
  }) {
    final $result = create();
    if (applicationID != null) {
      $result.applicationID = applicationID;
    }
    return $result;
  }
  GetApplicationRequest._() : super();
  factory GetApplicationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetApplicationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetApplicationRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'management_services'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ApplicationID', protoName: 'ApplicationID')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetApplicationRequest clone() => GetApplicationRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetApplicationRequest copyWith(void Function(GetApplicationRequest) updates) => super.copyWith((message) => updates(message as GetApplicationRequest)) as GetApplicationRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetApplicationRequest create() => GetApplicationRequest._();
  GetApplicationRequest createEmptyInstance() => create();
  static $pb.PbList<GetApplicationRequest> createRepeated() => $pb.PbList<GetApplicationRequest>();
  @$core.pragma('dart2js:noInline')
  static GetApplicationRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetApplicationRequest>(create);
  static GetApplicationRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get applicationID => $_getSZ(0);
  @$pb.TagNumber(1)
  set applicationID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasApplicationID() => $_has(0);
  @$pb.TagNumber(1)
  void clearApplicationID() => $_clearField(1);
}

class ListApplicationDomainRequest extends $pb.GeneratedMessage {
  factory ListApplicationDomainRequest({
    $core.int? limit,
    $core.int? page,
    $core.String? applicationID,
  }) {
    final $result = create();
    if (limit != null) {
      $result.limit = limit;
    }
    if (page != null) {
      $result.page = page;
    }
    if (applicationID != null) {
      $result.applicationID = applicationID;
    }
    return $result;
  }
  ListApplicationDomainRequest._() : super();
  factory ListApplicationDomainRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListApplicationDomainRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListApplicationDomainRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'management_services'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'Limit', $pb.PbFieldType.O3, protoName: 'Limit')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'Page', $pb.PbFieldType.O3, protoName: 'Page')
    ..aOS(3, _omitFieldNames ? '' : 'ApplicationID', protoName: 'ApplicationID')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListApplicationDomainRequest clone() => ListApplicationDomainRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListApplicationDomainRequest copyWith(void Function(ListApplicationDomainRequest) updates) => super.copyWith((message) => updates(message as ListApplicationDomainRequest)) as ListApplicationDomainRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListApplicationDomainRequest create() => ListApplicationDomainRequest._();
  ListApplicationDomainRequest createEmptyInstance() => create();
  static $pb.PbList<ListApplicationDomainRequest> createRepeated() => $pb.PbList<ListApplicationDomainRequest>();
  @$core.pragma('dart2js:noInline')
  static ListApplicationDomainRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListApplicationDomainRequest>(create);
  static ListApplicationDomainRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get limit => $_getIZ(0);
  @$pb.TagNumber(1)
  set limit($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLimit() => $_has(0);
  @$pb.TagNumber(1)
  void clearLimit() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get page => $_getIZ(1);
  @$pb.TagNumber(2)
  set page($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPage() => $_has(1);
  @$pb.TagNumber(2)
  void clearPage() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get applicationID => $_getSZ(2);
  @$pb.TagNumber(3)
  set applicationID($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasApplicationID() => $_has(2);
  @$pb.TagNumber(3)
  void clearApplicationID() => $_clearField(3);
}

class ListApplicationDomainResponse extends $pb.GeneratedMessage {
  factory ListApplicationDomainResponse({
    $core.Iterable<Domain>? domains,
    $core.int? count,
  }) {
    final $result = create();
    if (domains != null) {
      $result.domains.addAll(domains);
    }
    if (count != null) {
      $result.count = count;
    }
    return $result;
  }
  ListApplicationDomainResponse._() : super();
  factory ListApplicationDomainResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListApplicationDomainResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListApplicationDomainResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'management_services'), createEmptyInstance: create)
    ..pc<Domain>(1, _omitFieldNames ? '' : 'Domains', $pb.PbFieldType.PM, protoName: 'Domains', subBuilder: Domain.create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'Count', $pb.PbFieldType.O3, protoName: 'Count')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListApplicationDomainResponse clone() => ListApplicationDomainResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListApplicationDomainResponse copyWith(void Function(ListApplicationDomainResponse) updates) => super.copyWith((message) => updates(message as ListApplicationDomainResponse)) as ListApplicationDomainResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListApplicationDomainResponse create() => ListApplicationDomainResponse._();
  ListApplicationDomainResponse createEmptyInstance() => create();
  static $pb.PbList<ListApplicationDomainResponse> createRepeated() => $pb.PbList<ListApplicationDomainResponse>();
  @$core.pragma('dart2js:noInline')
  static ListApplicationDomainResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListApplicationDomainResponse>(create);
  static ListApplicationDomainResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Domain> get domains => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get count => $_getIZ(1);
  @$pb.TagNumber(2)
  set count($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearCount() => $_clearField(2);
}

class StreamApplicationDomainRequest extends $pb.GeneratedMessage {
  factory StreamApplicationDomainRequest({
    $core.String? applicationID,
  }) {
    final $result = create();
    if (applicationID != null) {
      $result.applicationID = applicationID;
    }
    return $result;
  }
  StreamApplicationDomainRequest._() : super();
  factory StreamApplicationDomainRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StreamApplicationDomainRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StreamApplicationDomainRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'management_services'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ApplicationID', protoName: 'ApplicationID')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StreamApplicationDomainRequest clone() => StreamApplicationDomainRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StreamApplicationDomainRequest copyWith(void Function(StreamApplicationDomainRequest) updates) => super.copyWith((message) => updates(message as StreamApplicationDomainRequest)) as StreamApplicationDomainRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamApplicationDomainRequest create() => StreamApplicationDomainRequest._();
  StreamApplicationDomainRequest createEmptyInstance() => create();
  static $pb.PbList<StreamApplicationDomainRequest> createRepeated() => $pb.PbList<StreamApplicationDomainRequest>();
  @$core.pragma('dart2js:noInline')
  static StreamApplicationDomainRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StreamApplicationDomainRequest>(create);
  static StreamApplicationDomainRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get applicationID => $_getSZ(0);
  @$pb.TagNumber(1)
  set applicationID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasApplicationID() => $_has(0);
  @$pb.TagNumber(1)
  void clearApplicationID() => $_clearField(1);
}

class Domain extends $pb.GeneratedMessage {
  factory Domain({
    $core.String? iD,
    $6.Timestamp? createdAt,
    $6.Timestamp? updatedAt,
    $core.String? domainName,
    $core.String? soaEmail,
    $core.String? txtRecord,
    DomainStatus? status,
  }) {
    final $result = create();
    if (iD != null) {
      $result.iD = iD;
    }
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      $result.updatedAt = updatedAt;
    }
    if (domainName != null) {
      $result.domainName = domainName;
    }
    if (soaEmail != null) {
      $result.soaEmail = soaEmail;
    }
    if (txtRecord != null) {
      $result.txtRecord = txtRecord;
    }
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  Domain._() : super();
  factory Domain.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Domain.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Domain', package: const $pb.PackageName(_omitMessageNames ? '' : 'management_services'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ID', protoName: 'ID')
    ..aOM<$6.Timestamp>(2, _omitFieldNames ? '' : 'CreatedAt', protoName: 'CreatedAt', subBuilder: $6.Timestamp.create)
    ..aOM<$6.Timestamp>(3, _omitFieldNames ? '' : 'UpdatedAt', protoName: 'UpdatedAt', subBuilder: $6.Timestamp.create)
    ..aOS(4, _omitFieldNames ? '' : 'DomainName', protoName: 'DomainName')
    ..aOS(5, _omitFieldNames ? '' : 'SoaEmail', protoName: 'SoaEmail')
    ..aOS(6, _omitFieldNames ? '' : 'TxtRecord', protoName: 'TxtRecord')
    ..e<DomainStatus>(7, _omitFieldNames ? '' : 'Status', $pb.PbFieldType.OE, protoName: 'Status', defaultOrMaker: DomainStatus.DomainActivated, valueOf: DomainStatus.valueOf, enumValues: DomainStatus.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Domain clone() => Domain()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Domain copyWith(void Function(Domain) updates) => super.copyWith((message) => updates(message as Domain)) as Domain;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Domain create() => Domain._();
  Domain createEmptyInstance() => create();
  static $pb.PbList<Domain> createRepeated() => $pb.PbList<Domain>();
  @$core.pragma('dart2js:noInline')
  static Domain getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Domain>(create);
  static Domain? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get iD => $_getSZ(0);
  @$pb.TagNumber(1)
  set iD($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasID() => $_has(0);
  @$pb.TagNumber(1)
  void clearID() => $_clearField(1);

  @$pb.TagNumber(2)
  $6.Timestamp get createdAt => $_getN(1);
  @$pb.TagNumber(2)
  set createdAt($6.Timestamp v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreatedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreatedAt() => $_clearField(2);
  @$pb.TagNumber(2)
  $6.Timestamp ensureCreatedAt() => $_ensure(1);

  @$pb.TagNumber(3)
  $6.Timestamp get updatedAt => $_getN(2);
  @$pb.TagNumber(3)
  set updatedAt($6.Timestamp v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasUpdatedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdatedAt() => $_clearField(3);
  @$pb.TagNumber(3)
  $6.Timestamp ensureUpdatedAt() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get domainName => $_getSZ(3);
  @$pb.TagNumber(4)
  set domainName($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDomainName() => $_has(3);
  @$pb.TagNumber(4)
  void clearDomainName() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get soaEmail => $_getSZ(4);
  @$pb.TagNumber(5)
  set soaEmail($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSoaEmail() => $_has(4);
  @$pb.TagNumber(5)
  void clearSoaEmail() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get txtRecord => $_getSZ(5);
  @$pb.TagNumber(6)
  set txtRecord($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTxtRecord() => $_has(5);
  @$pb.TagNumber(6)
  void clearTxtRecord() => $_clearField(6);

  @$pb.TagNumber(7)
  DomainStatus get status => $_getN(6);
  @$pb.TagNumber(7)
  set status(DomainStatus v) { $_setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasStatus() => $_has(6);
  @$pb.TagNumber(7)
  void clearStatus() => $_clearField(7);
}

class CreateDomainRequest extends $pb.GeneratedMessage {
  factory CreateDomainRequest({
    $core.String? applicationID,
    $core.String? domainName,
    $core.String? soaEmail,
  }) {
    final $result = create();
    if (applicationID != null) {
      $result.applicationID = applicationID;
    }
    if (domainName != null) {
      $result.domainName = domainName;
    }
    if (soaEmail != null) {
      $result.soaEmail = soaEmail;
    }
    return $result;
  }
  CreateDomainRequest._() : super();
  factory CreateDomainRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateDomainRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateDomainRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'management_services'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ApplicationID', protoName: 'ApplicationID')
    ..aOS(2, _omitFieldNames ? '' : 'DomainName', protoName: 'DomainName')
    ..aOS(3, _omitFieldNames ? '' : 'SoaEmail', protoName: 'SoaEmail')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateDomainRequest clone() => CreateDomainRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateDomainRequest copyWith(void Function(CreateDomainRequest) updates) => super.copyWith((message) => updates(message as CreateDomainRequest)) as CreateDomainRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateDomainRequest create() => CreateDomainRequest._();
  CreateDomainRequest createEmptyInstance() => create();
  static $pb.PbList<CreateDomainRequest> createRepeated() => $pb.PbList<CreateDomainRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateDomainRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateDomainRequest>(create);
  static CreateDomainRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get applicationID => $_getSZ(0);
  @$pb.TagNumber(1)
  set applicationID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasApplicationID() => $_has(0);
  @$pb.TagNumber(1)
  void clearApplicationID() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get domainName => $_getSZ(1);
  @$pb.TagNumber(2)
  set domainName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDomainName() => $_has(1);
  @$pb.TagNumber(2)
  void clearDomainName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get soaEmail => $_getSZ(2);
  @$pb.TagNumber(3)
  set soaEmail($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSoaEmail() => $_has(2);
  @$pb.TagNumber(3)
  void clearSoaEmail() => $_clearField(3);
}

class UpdateDomainRequest extends $pb.GeneratedMessage {
  factory UpdateDomainRequest({
    $core.String? domainID,
    $core.String? domainName,
    $core.String? soaEmail,
  }) {
    final $result = create();
    if (domainID != null) {
      $result.domainID = domainID;
    }
    if (domainName != null) {
      $result.domainName = domainName;
    }
    if (soaEmail != null) {
      $result.soaEmail = soaEmail;
    }
    return $result;
  }
  UpdateDomainRequest._() : super();
  factory UpdateDomainRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateDomainRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateDomainRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'management_services'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'DomainID', protoName: 'DomainID')
    ..aOS(2, _omitFieldNames ? '' : 'DomainName', protoName: 'DomainName')
    ..aOS(3, _omitFieldNames ? '' : 'SoaEmail', protoName: 'SoaEmail')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateDomainRequest clone() => UpdateDomainRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateDomainRequest copyWith(void Function(UpdateDomainRequest) updates) => super.copyWith((message) => updates(message as UpdateDomainRequest)) as UpdateDomainRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateDomainRequest create() => UpdateDomainRequest._();
  UpdateDomainRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateDomainRequest> createRepeated() => $pb.PbList<UpdateDomainRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateDomainRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateDomainRequest>(create);
  static UpdateDomainRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get domainID => $_getSZ(0);
  @$pb.TagNumber(1)
  set domainID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDomainID() => $_has(0);
  @$pb.TagNumber(1)
  void clearDomainID() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get domainName => $_getSZ(1);
  @$pb.TagNumber(2)
  set domainName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDomainName() => $_has(1);
  @$pb.TagNumber(2)
  void clearDomainName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get soaEmail => $_getSZ(2);
  @$pb.TagNumber(3)
  set soaEmail($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSoaEmail() => $_has(2);
  @$pb.TagNumber(3)
  void clearSoaEmail() => $_clearField(3);
}

class GetDomainRequest extends $pb.GeneratedMessage {
  factory GetDomainRequest({
    $core.String? domainID,
  }) {
    final $result = create();
    if (domainID != null) {
      $result.domainID = domainID;
    }
    return $result;
  }
  GetDomainRequest._() : super();
  factory GetDomainRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetDomainRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetDomainRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'management_services'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'DomainID', protoName: 'DomainID')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetDomainRequest clone() => GetDomainRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetDomainRequest copyWith(void Function(GetDomainRequest) updates) => super.copyWith((message) => updates(message as GetDomainRequest)) as GetDomainRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetDomainRequest create() => GetDomainRequest._();
  GetDomainRequest createEmptyInstance() => create();
  static $pb.PbList<GetDomainRequest> createRepeated() => $pb.PbList<GetDomainRequest>();
  @$core.pragma('dart2js:noInline')
  static GetDomainRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetDomainRequest>(create);
  static GetDomainRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get domainID => $_getSZ(0);
  @$pb.TagNumber(1)
  set domainID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDomainID() => $_has(0);
  @$pb.TagNumber(1)
  void clearDomainID() => $_clearField(1);
}

class ListApplicationUsersRequest extends $pb.GeneratedMessage {
  factory ListApplicationUsersRequest({
    $core.int? limit,
    $core.int? page,
    $core.String? applicationID,
  }) {
    final $result = create();
    if (limit != null) {
      $result.limit = limit;
    }
    if (page != null) {
      $result.page = page;
    }
    if (applicationID != null) {
      $result.applicationID = applicationID;
    }
    return $result;
  }
  ListApplicationUsersRequest._() : super();
  factory ListApplicationUsersRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListApplicationUsersRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListApplicationUsersRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'management_services'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'Limit', $pb.PbFieldType.O3, protoName: 'Limit')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'Page', $pb.PbFieldType.O3, protoName: 'Page')
    ..aOS(3, _omitFieldNames ? '' : 'ApplicationID', protoName: 'ApplicationID')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListApplicationUsersRequest clone() => ListApplicationUsersRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListApplicationUsersRequest copyWith(void Function(ListApplicationUsersRequest) updates) => super.copyWith((message) => updates(message as ListApplicationUsersRequest)) as ListApplicationUsersRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListApplicationUsersRequest create() => ListApplicationUsersRequest._();
  ListApplicationUsersRequest createEmptyInstance() => create();
  static $pb.PbList<ListApplicationUsersRequest> createRepeated() => $pb.PbList<ListApplicationUsersRequest>();
  @$core.pragma('dart2js:noInline')
  static ListApplicationUsersRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListApplicationUsersRequest>(create);
  static ListApplicationUsersRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get limit => $_getIZ(0);
  @$pb.TagNumber(1)
  set limit($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLimit() => $_has(0);
  @$pb.TagNumber(1)
  void clearLimit() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get page => $_getIZ(1);
  @$pb.TagNumber(2)
  set page($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPage() => $_has(1);
  @$pb.TagNumber(2)
  void clearPage() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get applicationID => $_getSZ(2);
  @$pb.TagNumber(3)
  set applicationID($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasApplicationID() => $_has(2);
  @$pb.TagNumber(3)
  void clearApplicationID() => $_clearField(3);
}

class ListApplicationUsersResponse extends $pb.GeneratedMessage {
  factory ListApplicationUsersResponse({
    $core.Iterable<ApplicationUser>? applicationUsers,
    $core.int? count,
  }) {
    final $result = create();
    if (applicationUsers != null) {
      $result.applicationUsers.addAll(applicationUsers);
    }
    if (count != null) {
      $result.count = count;
    }
    return $result;
  }
  ListApplicationUsersResponse._() : super();
  factory ListApplicationUsersResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListApplicationUsersResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListApplicationUsersResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'management_services'), createEmptyInstance: create)
    ..pc<ApplicationUser>(1, _omitFieldNames ? '' : 'ApplicationUsers', $pb.PbFieldType.PM, protoName: 'ApplicationUsers', subBuilder: ApplicationUser.create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'Count', $pb.PbFieldType.O3, protoName: 'Count')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListApplicationUsersResponse clone() => ListApplicationUsersResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListApplicationUsersResponse copyWith(void Function(ListApplicationUsersResponse) updates) => super.copyWith((message) => updates(message as ListApplicationUsersResponse)) as ListApplicationUsersResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListApplicationUsersResponse create() => ListApplicationUsersResponse._();
  ListApplicationUsersResponse createEmptyInstance() => create();
  static $pb.PbList<ListApplicationUsersResponse> createRepeated() => $pb.PbList<ListApplicationUsersResponse>();
  @$core.pragma('dart2js:noInline')
  static ListApplicationUsersResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListApplicationUsersResponse>(create);
  static ListApplicationUsersResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<ApplicationUser> get applicationUsers => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get count => $_getIZ(1);
  @$pb.TagNumber(2)
  set count($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearCount() => $_clearField(2);
}

class StreamUsersRequest extends $pb.GeneratedMessage {
  factory StreamUsersRequest({
    $core.String? applicationID,
  }) {
    final $result = create();
    if (applicationID != null) {
      $result.applicationID = applicationID;
    }
    return $result;
  }
  StreamUsersRequest._() : super();
  factory StreamUsersRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StreamUsersRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StreamUsersRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'management_services'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ApplicationID', protoName: 'ApplicationID')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StreamUsersRequest clone() => StreamUsersRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StreamUsersRequest copyWith(void Function(StreamUsersRequest) updates) => super.copyWith((message) => updates(message as StreamUsersRequest)) as StreamUsersRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamUsersRequest create() => StreamUsersRequest._();
  StreamUsersRequest createEmptyInstance() => create();
  static $pb.PbList<StreamUsersRequest> createRepeated() => $pb.PbList<StreamUsersRequest>();
  @$core.pragma('dart2js:noInline')
  static StreamUsersRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StreamUsersRequest>(create);
  static StreamUsersRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get applicationID => $_getSZ(0);
  @$pb.TagNumber(1)
  set applicationID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasApplicationID() => $_has(0);
  @$pb.TagNumber(1)
  void clearApplicationID() => $_clearField(1);
}

class ApplicationToggleUserApprovalRequest extends $pb.GeneratedMessage {
  factory ApplicationToggleUserApprovalRequest({
    $core.String? applicationID,
    $core.String? iD,
    $core.bool? approve,
  }) {
    final $result = create();
    if (applicationID != null) {
      $result.applicationID = applicationID;
    }
    if (iD != null) {
      $result.iD = iD;
    }
    if (approve != null) {
      $result.approve = approve;
    }
    return $result;
  }
  ApplicationToggleUserApprovalRequest._() : super();
  factory ApplicationToggleUserApprovalRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApplicationToggleUserApprovalRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ApplicationToggleUserApprovalRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'management_services'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ApplicationID', protoName: 'ApplicationID')
    ..aOS(2, _omitFieldNames ? '' : 'ID', protoName: 'ID')
    ..aOB(3, _omitFieldNames ? '' : 'Approve', protoName: 'Approve')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ApplicationToggleUserApprovalRequest clone() => ApplicationToggleUserApprovalRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ApplicationToggleUserApprovalRequest copyWith(void Function(ApplicationToggleUserApprovalRequest) updates) => super.copyWith((message) => updates(message as ApplicationToggleUserApprovalRequest)) as ApplicationToggleUserApprovalRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ApplicationToggleUserApprovalRequest create() => ApplicationToggleUserApprovalRequest._();
  ApplicationToggleUserApprovalRequest createEmptyInstance() => create();
  static $pb.PbList<ApplicationToggleUserApprovalRequest> createRepeated() => $pb.PbList<ApplicationToggleUserApprovalRequest>();
  @$core.pragma('dart2js:noInline')
  static ApplicationToggleUserApprovalRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApplicationToggleUserApprovalRequest>(create);
  static ApplicationToggleUserApprovalRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get applicationID => $_getSZ(0);
  @$pb.TagNumber(1)
  set applicationID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasApplicationID() => $_has(0);
  @$pb.TagNumber(1)
  void clearApplicationID() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get iD => $_getSZ(1);
  @$pb.TagNumber(2)
  set iD($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasID() => $_has(1);
  @$pb.TagNumber(2)
  void clearID() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get approve => $_getBF(2);
  @$pb.TagNumber(3)
  set approve($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasApprove() => $_has(2);
  @$pb.TagNumber(3)
  void clearApprove() => $_clearField(3);
}

class ApplicationUser extends $pb.GeneratedMessage {
  factory ApplicationUser({
    $core.String? iD,
    $6.Timestamp? createdAt,
    $6.Timestamp? updatedAt,
    $core.String? email,
    $2.UserStatus? status,
  }) {
    final $result = create();
    if (iD != null) {
      $result.iD = iD;
    }
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      $result.updatedAt = updatedAt;
    }
    if (email != null) {
      $result.email = email;
    }
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  ApplicationUser._() : super();
  factory ApplicationUser.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApplicationUser.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ApplicationUser', package: const $pb.PackageName(_omitMessageNames ? '' : 'management_services'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ID', protoName: 'ID')
    ..aOM<$6.Timestamp>(2, _omitFieldNames ? '' : 'CreatedAt', protoName: 'CreatedAt', subBuilder: $6.Timestamp.create)
    ..aOM<$6.Timestamp>(3, _omitFieldNames ? '' : 'UpdatedAt', protoName: 'UpdatedAt', subBuilder: $6.Timestamp.create)
    ..aOS(4, _omitFieldNames ? '' : 'Email', protoName: 'Email')
    ..e<$2.UserStatus>(5, _omitFieldNames ? '' : 'Status', $pb.PbFieldType.OE, protoName: 'Status', defaultOrMaker: $2.UserStatus.UserActivated, valueOf: $2.UserStatus.valueOf, enumValues: $2.UserStatus.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ApplicationUser clone() => ApplicationUser()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ApplicationUser copyWith(void Function(ApplicationUser) updates) => super.copyWith((message) => updates(message as ApplicationUser)) as ApplicationUser;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ApplicationUser create() => ApplicationUser._();
  ApplicationUser createEmptyInstance() => create();
  static $pb.PbList<ApplicationUser> createRepeated() => $pb.PbList<ApplicationUser>();
  @$core.pragma('dart2js:noInline')
  static ApplicationUser getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApplicationUser>(create);
  static ApplicationUser? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get iD => $_getSZ(0);
  @$pb.TagNumber(1)
  set iD($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasID() => $_has(0);
  @$pb.TagNumber(1)
  void clearID() => $_clearField(1);

  @$pb.TagNumber(2)
  $6.Timestamp get createdAt => $_getN(1);
  @$pb.TagNumber(2)
  set createdAt($6.Timestamp v) { $_setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreatedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreatedAt() => $_clearField(2);
  @$pb.TagNumber(2)
  $6.Timestamp ensureCreatedAt() => $_ensure(1);

  @$pb.TagNumber(3)
  $6.Timestamp get updatedAt => $_getN(2);
  @$pb.TagNumber(3)
  set updatedAt($6.Timestamp v) { $_setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasUpdatedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdatedAt() => $_clearField(3);
  @$pb.TagNumber(3)
  $6.Timestamp ensureUpdatedAt() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get email => $_getSZ(3);
  @$pb.TagNumber(4)
  set email($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEmail() => $_has(3);
  @$pb.TagNumber(4)
  void clearEmail() => $_clearField(4);

  @$pb.TagNumber(5)
  $2.UserStatus get status => $_getN(4);
  @$pb.TagNumber(5)
  set status($2.UserStatus v) { $_setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasStatus() => $_has(4);
  @$pb.TagNumber(5)
  void clearStatus() => $_clearField(5);
}

class ApplicationUserRegisterRequest extends $pb.GeneratedMessage {
  factory ApplicationUserRegisterRequest({
    $core.String? applicationID,
    $core.String? email,
    $core.String? password,
  }) {
    final $result = create();
    if (applicationID != null) {
      $result.applicationID = applicationID;
    }
    if (email != null) {
      $result.email = email;
    }
    if (password != null) {
      $result.password = password;
    }
    return $result;
  }
  ApplicationUserRegisterRequest._() : super();
  factory ApplicationUserRegisterRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApplicationUserRegisterRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ApplicationUserRegisterRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'management_services'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ApplicationID', protoName: 'ApplicationID')
    ..aOS(2, _omitFieldNames ? '' : 'Email', protoName: 'Email')
    ..aOS(3, _omitFieldNames ? '' : 'Password', protoName: 'Password')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ApplicationUserRegisterRequest clone() => ApplicationUserRegisterRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ApplicationUserRegisterRequest copyWith(void Function(ApplicationUserRegisterRequest) updates) => super.copyWith((message) => updates(message as ApplicationUserRegisterRequest)) as ApplicationUserRegisterRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ApplicationUserRegisterRequest create() => ApplicationUserRegisterRequest._();
  ApplicationUserRegisterRequest createEmptyInstance() => create();
  static $pb.PbList<ApplicationUserRegisterRequest> createRepeated() => $pb.PbList<ApplicationUserRegisterRequest>();
  @$core.pragma('dart2js:noInline')
  static ApplicationUserRegisterRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApplicationUserRegisterRequest>(create);
  static ApplicationUserRegisterRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get applicationID => $_getSZ(0);
  @$pb.TagNumber(1)
  set applicationID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasApplicationID() => $_has(0);
  @$pb.TagNumber(1)
  void clearApplicationID() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get email => $_getSZ(1);
  @$pb.TagNumber(2)
  set email($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEmail() => $_has(1);
  @$pb.TagNumber(2)
  void clearEmail() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get password => $_getSZ(2);
  @$pb.TagNumber(3)
  set password($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPassword() => $_has(2);
  @$pb.TagNumber(3)
  void clearPassword() => $_clearField(3);
}

class ApplicationUserRegisterResponse extends $pb.GeneratedMessage {
  factory ApplicationUserRegisterResponse({
    $core.String? iD,
  }) {
    final $result = create();
    if (iD != null) {
      $result.iD = iD;
    }
    return $result;
  }
  ApplicationUserRegisterResponse._() : super();
  factory ApplicationUserRegisterResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApplicationUserRegisterResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ApplicationUserRegisterResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'management_services'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ID', protoName: 'ID')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ApplicationUserRegisterResponse clone() => ApplicationUserRegisterResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ApplicationUserRegisterResponse copyWith(void Function(ApplicationUserRegisterResponse) updates) => super.copyWith((message) => updates(message as ApplicationUserRegisterResponse)) as ApplicationUserRegisterResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ApplicationUserRegisterResponse create() => ApplicationUserRegisterResponse._();
  ApplicationUserRegisterResponse createEmptyInstance() => create();
  static $pb.PbList<ApplicationUserRegisterResponse> createRepeated() => $pb.PbList<ApplicationUserRegisterResponse>();
  @$core.pragma('dart2js:noInline')
  static ApplicationUserRegisterResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApplicationUserRegisterResponse>(create);
  static ApplicationUserRegisterResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get iD => $_getSZ(0);
  @$pb.TagNumber(1)
  set iD($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasID() => $_has(0);
  @$pb.TagNumber(1)
  void clearID() => $_clearField(1);
}

class ApplicationUserGetRequest extends $pb.GeneratedMessage {
  factory ApplicationUserGetRequest({
    $core.String? applicationID,
    $core.String? iD,
  }) {
    final $result = create();
    if (applicationID != null) {
      $result.applicationID = applicationID;
    }
    if (iD != null) {
      $result.iD = iD;
    }
    return $result;
  }
  ApplicationUserGetRequest._() : super();
  factory ApplicationUserGetRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApplicationUserGetRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ApplicationUserGetRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'management_services'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ApplicationID', protoName: 'ApplicationID')
    ..aOS(2, _omitFieldNames ? '' : 'ID', protoName: 'ID')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ApplicationUserGetRequest clone() => ApplicationUserGetRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ApplicationUserGetRequest copyWith(void Function(ApplicationUserGetRequest) updates) => super.copyWith((message) => updates(message as ApplicationUserGetRequest)) as ApplicationUserGetRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ApplicationUserGetRequest create() => ApplicationUserGetRequest._();
  ApplicationUserGetRequest createEmptyInstance() => create();
  static $pb.PbList<ApplicationUserGetRequest> createRepeated() => $pb.PbList<ApplicationUserGetRequest>();
  @$core.pragma('dart2js:noInline')
  static ApplicationUserGetRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApplicationUserGetRequest>(create);
  static ApplicationUserGetRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get applicationID => $_getSZ(0);
  @$pb.TagNumber(1)
  set applicationID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasApplicationID() => $_has(0);
  @$pb.TagNumber(1)
  void clearApplicationID() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get iD => $_getSZ(1);
  @$pb.TagNumber(2)
  set iD($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasID() => $_has(1);
  @$pb.TagNumber(2)
  void clearID() => $_clearField(2);
}

class ListEntityTypesRequest extends $pb.GeneratedMessage {
  factory ListEntityTypesRequest({
    $core.String? applicationID,
    $core.String? appUserID,
  }) {
    final $result = create();
    if (applicationID != null) {
      $result.applicationID = applicationID;
    }
    if (appUserID != null) {
      $result.appUserID = appUserID;
    }
    return $result;
  }
  ListEntityTypesRequest._() : super();
  factory ListEntityTypesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListEntityTypesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListEntityTypesRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'management_services'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ApplicationID', protoName: 'ApplicationID')
    ..aOS(2, _omitFieldNames ? '' : 'AppUserID', protoName: 'AppUserID')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListEntityTypesRequest clone() => ListEntityTypesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListEntityTypesRequest copyWith(void Function(ListEntityTypesRequest) updates) => super.copyWith((message) => updates(message as ListEntityTypesRequest)) as ListEntityTypesRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListEntityTypesRequest create() => ListEntityTypesRequest._();
  ListEntityTypesRequest createEmptyInstance() => create();
  static $pb.PbList<ListEntityTypesRequest> createRepeated() => $pb.PbList<ListEntityTypesRequest>();
  @$core.pragma('dart2js:noInline')
  static ListEntityTypesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListEntityTypesRequest>(create);
  static ListEntityTypesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get applicationID => $_getSZ(0);
  @$pb.TagNumber(1)
  set applicationID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasApplicationID() => $_has(0);
  @$pb.TagNumber(1)
  void clearApplicationID() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get appUserID => $_getSZ(1);
  @$pb.TagNumber(2)
  set appUserID($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAppUserID() => $_has(1);
  @$pb.TagNumber(2)
  void clearAppUserID() => $_clearField(2);
}

class AppUserStreamEntityHistoryRequest extends $pb.GeneratedMessage {
  factory AppUserStreamEntityHistoryRequest({
    $4.SearchEntityHistoryRequest? searchEntityHistoryRequest,
    $core.String? applicationID,
    $core.String? appUserID,
  }) {
    final $result = create();
    if (searchEntityHistoryRequest != null) {
      $result.searchEntityHistoryRequest = searchEntityHistoryRequest;
    }
    if (applicationID != null) {
      $result.applicationID = applicationID;
    }
    if (appUserID != null) {
      $result.appUserID = appUserID;
    }
    return $result;
  }
  AppUserStreamEntityHistoryRequest._() : super();
  factory AppUserStreamEntityHistoryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AppUserStreamEntityHistoryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AppUserStreamEntityHistoryRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'management_services'), createEmptyInstance: create)
    ..aOM<$4.SearchEntityHistoryRequest>(1, _omitFieldNames ? '' : 'SearchEntityHistoryRequest', protoName: 'SearchEntityHistoryRequest', subBuilder: $4.SearchEntityHistoryRequest.create)
    ..aOS(2, _omitFieldNames ? '' : 'ApplicationID', protoName: 'ApplicationID')
    ..aOS(3, _omitFieldNames ? '' : 'AppUserID', protoName: 'AppUserID')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AppUserStreamEntityHistoryRequest clone() => AppUserStreamEntityHistoryRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AppUserStreamEntityHistoryRequest copyWith(void Function(AppUserStreamEntityHistoryRequest) updates) => super.copyWith((message) => updates(message as AppUserStreamEntityHistoryRequest)) as AppUserStreamEntityHistoryRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AppUserStreamEntityHistoryRequest create() => AppUserStreamEntityHistoryRequest._();
  AppUserStreamEntityHistoryRequest createEmptyInstance() => create();
  static $pb.PbList<AppUserStreamEntityHistoryRequest> createRepeated() => $pb.PbList<AppUserStreamEntityHistoryRequest>();
  @$core.pragma('dart2js:noInline')
  static AppUserStreamEntityHistoryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AppUserStreamEntityHistoryRequest>(create);
  static AppUserStreamEntityHistoryRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $4.SearchEntityHistoryRequest get searchEntityHistoryRequest => $_getN(0);
  @$pb.TagNumber(1)
  set searchEntityHistoryRequest($4.SearchEntityHistoryRequest v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSearchEntityHistoryRequest() => $_has(0);
  @$pb.TagNumber(1)
  void clearSearchEntityHistoryRequest() => $_clearField(1);
  @$pb.TagNumber(1)
  $4.SearchEntityHistoryRequest ensureSearchEntityHistoryRequest() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get applicationID => $_getSZ(1);
  @$pb.TagNumber(2)
  set applicationID($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasApplicationID() => $_has(1);
  @$pb.TagNumber(2)
  void clearApplicationID() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get appUserID => $_getSZ(2);
  @$pb.TagNumber(3)
  set appUserID($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAppUserID() => $_has(2);
  @$pb.TagNumber(3)
  void clearAppUserID() => $_clearField(3);
}

class AppUserEntityActionRequest extends $pb.GeneratedMessage {
  factory AppUserEntityActionRequest({
    $4.EntityActionRequest? entityActionRequest,
    $core.String? applicationID,
    $core.String? appUserID,
  }) {
    final $result = create();
    if (entityActionRequest != null) {
      $result.entityActionRequest = entityActionRequest;
    }
    if (applicationID != null) {
      $result.applicationID = applicationID;
    }
    if (appUserID != null) {
      $result.appUserID = appUserID;
    }
    return $result;
  }
  AppUserEntityActionRequest._() : super();
  factory AppUserEntityActionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AppUserEntityActionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AppUserEntityActionRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'management_services'), createEmptyInstance: create)
    ..aOM<$4.EntityActionRequest>(1, _omitFieldNames ? '' : 'EntityActionRequest', protoName: 'EntityActionRequest', subBuilder: $4.EntityActionRequest.create)
    ..aOS(2, _omitFieldNames ? '' : 'ApplicationID', protoName: 'ApplicationID')
    ..aOS(3, _omitFieldNames ? '' : 'AppUserID', protoName: 'AppUserID')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AppUserEntityActionRequest clone() => AppUserEntityActionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AppUserEntityActionRequest copyWith(void Function(AppUserEntityActionRequest) updates) => super.copyWith((message) => updates(message as AppUserEntityActionRequest)) as AppUserEntityActionRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AppUserEntityActionRequest create() => AppUserEntityActionRequest._();
  AppUserEntityActionRequest createEmptyInstance() => create();
  static $pb.PbList<AppUserEntityActionRequest> createRepeated() => $pb.PbList<AppUserEntityActionRequest>();
  @$core.pragma('dart2js:noInline')
  static AppUserEntityActionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AppUserEntityActionRequest>(create);
  static AppUserEntityActionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $4.EntityActionRequest get entityActionRequest => $_getN(0);
  @$pb.TagNumber(1)
  set entityActionRequest($4.EntityActionRequest v) { $_setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEntityActionRequest() => $_has(0);
  @$pb.TagNumber(1)
  void clearEntityActionRequest() => $_clearField(1);
  @$pb.TagNumber(1)
  $4.EntityActionRequest ensureEntityActionRequest() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get applicationID => $_getSZ(1);
  @$pb.TagNumber(2)
  set applicationID($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasApplicationID() => $_has(1);
  @$pb.TagNumber(2)
  void clearApplicationID() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get appUserID => $_getSZ(2);
  @$pb.TagNumber(3)
  set appUserID($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAppUserID() => $_has(2);
  @$pb.TagNumber(3)
  void clearAppUserID() => $_clearField(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
