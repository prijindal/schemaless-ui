// This is a generated file - do not edit.
//
// Generated from management/services.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../google/protobuf/duration.pb.dart' as $4;
import '../google/protobuf/timestamp.pb.dart' as $5;
import '../types/login.pbenum.dart' as $3;
import 'services.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'services.pbenum.dart';

class CumulativeHealthResponse extends $pb.GeneratedMessage {
  factory CumulativeHealthResponse({
    $core.bool? dB,
    $core.bool? pubSub,
    $core.bool? cache,
    $4.Duration? uptime,
    $5.Timestamp? currentTime,
    $core.String? hostname,
  }) {
    final result = create();
    if (dB != null) result.dB = dB;
    if (pubSub != null) result.pubSub = pubSub;
    if (cache != null) result.cache = cache;
    if (uptime != null) result.uptime = uptime;
    if (currentTime != null) result.currentTime = currentTime;
    if (hostname != null) result.hostname = hostname;
    return result;
  }

  CumulativeHealthResponse._();

  factory CumulativeHealthResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CumulativeHealthResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CumulativeHealthResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'management_services'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'DB', protoName: 'DB')
    ..aOB(2, _omitFieldNames ? '' : 'PubSub', protoName: 'PubSub')
    ..aOB(3, _omitFieldNames ? '' : 'Cache', protoName: 'Cache')
    ..aOM<$4.Duration>(4, _omitFieldNames ? '' : 'Uptime',
        protoName: 'Uptime', subBuilder: $4.Duration.create)
    ..aOM<$5.Timestamp>(5, _omitFieldNames ? '' : 'CurrentTime',
        protoName: 'CurrentTime', subBuilder: $5.Timestamp.create)
    ..aOS(6, _omitFieldNames ? '' : 'Hostname', protoName: 'Hostname')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CumulativeHealthResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CumulativeHealthResponse copyWith(
          void Function(CumulativeHealthResponse) updates) =>
      super.copyWith((message) => updates(message as CumulativeHealthResponse))
          as CumulativeHealthResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CumulativeHealthResponse create() => CumulativeHealthResponse._();
  @$core.override
  CumulativeHealthResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CumulativeHealthResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CumulativeHealthResponse>(create);
  static CumulativeHealthResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get dB => $_getBF(0);
  @$pb.TagNumber(1)
  set dB($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDB() => $_has(0);
  @$pb.TagNumber(1)
  void clearDB() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get pubSub => $_getBF(1);
  @$pb.TagNumber(2)
  set pubSub($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPubSub() => $_has(1);
  @$pb.TagNumber(2)
  void clearPubSub() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get cache => $_getBF(2);
  @$pb.TagNumber(3)
  set cache($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCache() => $_has(2);
  @$pb.TagNumber(3)
  void clearCache() => $_clearField(3);

  @$pb.TagNumber(4)
  $4.Duration get uptime => $_getN(3);
  @$pb.TagNumber(4)
  set uptime($4.Duration value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasUptime() => $_has(3);
  @$pb.TagNumber(4)
  void clearUptime() => $_clearField(4);
  @$pb.TagNumber(4)
  $4.Duration ensureUptime() => $_ensure(3);

  @$pb.TagNumber(5)
  $5.Timestamp get currentTime => $_getN(4);
  @$pb.TagNumber(5)
  set currentTime($5.Timestamp value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasCurrentTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearCurrentTime() => $_clearField(5);
  @$pb.TagNumber(5)
  $5.Timestamp ensureCurrentTime() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.String get hostname => $_getSZ(5);
  @$pb.TagNumber(6)
  set hostname($core.String value) => $_setString(5, value);
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
    final result = create();
    if (iD != null) result.iD = iD;
    if (isAdmin != null) result.isAdmin = isAdmin;
    return result;
  }

  RegisterResponse._();

  factory RegisterResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RegisterResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RegisterResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'management_services'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ID', protoName: 'ID')
    ..aOB(2, _omitFieldNames ? '' : 'IsAdmin', protoName: 'IsAdmin')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RegisterResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RegisterResponse copyWith(void Function(RegisterResponse) updates) =>
      super.copyWith((message) => updates(message as RegisterResponse))
          as RegisterResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegisterResponse create() => RegisterResponse._();
  @$core.override
  RegisterResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RegisterResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RegisterResponse>(create);
  static RegisterResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get iD => $_getSZ(0);
  @$pb.TagNumber(1)
  set iD($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasID() => $_has(0);
  @$pb.TagNumber(1)
  void clearID() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get isAdmin => $_getBF(1);
  @$pb.TagNumber(2)
  set isAdmin($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIsAdmin() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsAdmin() => $_clearField(2);
}

class InitializedResponse extends $pb.GeneratedMessage {
  factory InitializedResponse({
    $core.bool? initialized,
  }) {
    final result = create();
    if (initialized != null) result.initialized = initialized;
    return result;
  }

  InitializedResponse._();

  factory InitializedResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory InitializedResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'InitializedResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'management_services'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'Initialized', protoName: 'Initialized')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  InitializedResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  InitializedResponse copyWith(void Function(InitializedResponse) updates) =>
      super.copyWith((message) => updates(message as InitializedResponse))
          as InitializedResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InitializedResponse create() => InitializedResponse._();
  @$core.override
  InitializedResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static InitializedResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<InitializedResponse>(create);
  static InitializedResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get initialized => $_getBF(0);
  @$pb.TagNumber(1)
  set initialized($core.bool value) => $_setBool(0, value);
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
    final result = create();
    if (iD != null) result.iD = iD;
    if (isAdmin != null) result.isAdmin = isAdmin;
    return result;
  }

  VerifyUserResponse._();

  factory VerifyUserResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory VerifyUserResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VerifyUserResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'management_services'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ID', protoName: 'ID')
    ..aOB(2, _omitFieldNames ? '' : 'IsAdmin', protoName: 'IsAdmin')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VerifyUserResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VerifyUserResponse copyWith(void Function(VerifyUserResponse) updates) =>
      super.copyWith((message) => updates(message as VerifyUserResponse))
          as VerifyUserResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VerifyUserResponse create() => VerifyUserResponse._();
  @$core.override
  VerifyUserResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static VerifyUserResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VerifyUserResponse>(create);
  static VerifyUserResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get iD => $_getSZ(0);
  @$pb.TagNumber(1)
  set iD($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasID() => $_has(0);
  @$pb.TagNumber(1)
  void clearID() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get isAdmin => $_getBF(1);
  @$pb.TagNumber(2)
  set isAdmin($core.bool value) => $_setBool(1, value);
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
    final result = create();
    if (limit != null) result.limit = limit;
    if (page != null) result.page = page;
    return result;
  }

  ListManagementUsersRequest._();

  factory ListManagementUsersRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListManagementUsersRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListManagementUsersRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'management_services'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'Limit', protoName: 'Limit')
    ..aI(2, _omitFieldNames ? '' : 'Page', protoName: 'Page')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListManagementUsersRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListManagementUsersRequest copyWith(
          void Function(ListManagementUsersRequest) updates) =>
      super.copyWith(
              (message) => updates(message as ListManagementUsersRequest))
          as ListManagementUsersRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListManagementUsersRequest create() => ListManagementUsersRequest._();
  @$core.override
  ListManagementUsersRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListManagementUsersRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListManagementUsersRequest>(create);
  static ListManagementUsersRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get limit => $_getIZ(0);
  @$pb.TagNumber(1)
  set limit($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLimit() => $_has(0);
  @$pb.TagNumber(1)
  void clearLimit() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get page => $_getIZ(1);
  @$pb.TagNumber(2)
  set page($core.int value) => $_setSignedInt32(1, value);
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
    final result = create();
    if (users != null) result.users.addAll(users);
    if (count != null) result.count = count;
    return result;
  }

  ListManagementUsersResponse._();

  factory ListManagementUsersResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListManagementUsersResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListManagementUsersResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'management_services'),
      createEmptyInstance: create)
    ..pPM<ManagementUser>(1, _omitFieldNames ? '' : 'Users',
        protoName: 'Users', subBuilder: ManagementUser.create)
    ..aI(2, _omitFieldNames ? '' : 'Count', protoName: 'Count')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListManagementUsersResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListManagementUsersResponse copyWith(
          void Function(ListManagementUsersResponse) updates) =>
      super.copyWith(
              (message) => updates(message as ListManagementUsersResponse))
          as ListManagementUsersResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListManagementUsersResponse create() =>
      ListManagementUsersResponse._();
  @$core.override
  ListManagementUsersResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListManagementUsersResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListManagementUsersResponse>(create);
  static ListManagementUsersResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<ManagementUser> get users => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get count => $_getIZ(1);
  @$pb.TagNumber(2)
  set count($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearCount() => $_clearField(2);
}

class ManagementUser extends $pb.GeneratedMessage {
  factory ManagementUser({
    $core.String? iD,
    $5.Timestamp? createdAt,
    $5.Timestamp? updatedAt,
    $core.String? email,
    $3.UserStatus? status,
    $core.bool? isAdmin,
  }) {
    final result = create();
    if (iD != null) result.iD = iD;
    if (createdAt != null) result.createdAt = createdAt;
    if (updatedAt != null) result.updatedAt = updatedAt;
    if (email != null) result.email = email;
    if (status != null) result.status = status;
    if (isAdmin != null) result.isAdmin = isAdmin;
    return result;
  }

  ManagementUser._();

  factory ManagementUser.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ManagementUser.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ManagementUser',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'management_services'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ID', protoName: 'ID')
    ..aOM<$5.Timestamp>(2, _omitFieldNames ? '' : 'CreatedAt',
        protoName: 'CreatedAt', subBuilder: $5.Timestamp.create)
    ..aOM<$5.Timestamp>(3, _omitFieldNames ? '' : 'UpdatedAt',
        protoName: 'UpdatedAt', subBuilder: $5.Timestamp.create)
    ..aOS(4, _omitFieldNames ? '' : 'Email', protoName: 'Email')
    ..aE<$3.UserStatus>(5, _omitFieldNames ? '' : 'Status',
        protoName: 'Status', enumValues: $3.UserStatus.values)
    ..aOB(6, _omitFieldNames ? '' : 'IsAdmin', protoName: 'IsAdmin')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ManagementUser clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ManagementUser copyWith(void Function(ManagementUser) updates) =>
      super.copyWith((message) => updates(message as ManagementUser))
          as ManagementUser;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ManagementUser create() => ManagementUser._();
  @$core.override
  ManagementUser createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ManagementUser getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ManagementUser>(create);
  static ManagementUser? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get iD => $_getSZ(0);
  @$pb.TagNumber(1)
  set iD($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasID() => $_has(0);
  @$pb.TagNumber(1)
  void clearID() => $_clearField(1);

  @$pb.TagNumber(2)
  $5.Timestamp get createdAt => $_getN(1);
  @$pb.TagNumber(2)
  set createdAt($5.Timestamp value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasCreatedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreatedAt() => $_clearField(2);
  @$pb.TagNumber(2)
  $5.Timestamp ensureCreatedAt() => $_ensure(1);

  @$pb.TagNumber(3)
  $5.Timestamp get updatedAt => $_getN(2);
  @$pb.TagNumber(3)
  set updatedAt($5.Timestamp value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasUpdatedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdatedAt() => $_clearField(3);
  @$pb.TagNumber(3)
  $5.Timestamp ensureUpdatedAt() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get email => $_getSZ(3);
  @$pb.TagNumber(4)
  set email($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasEmail() => $_has(3);
  @$pb.TagNumber(4)
  void clearEmail() => $_clearField(4);

  @$pb.TagNumber(5)
  $3.UserStatus get status => $_getN(4);
  @$pb.TagNumber(5)
  set status($3.UserStatus value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasStatus() => $_has(4);
  @$pb.TagNumber(5)
  void clearStatus() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.bool get isAdmin => $_getBF(5);
  @$pb.TagNumber(6)
  set isAdmin($core.bool value) => $_setBool(5, value);
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
    final result = create();
    if (iD != null) result.iD = iD;
    if (approve != null) result.approve = approve;
    return result;
  }

  ToggleUserApprovalRequest._();

  factory ToggleUserApprovalRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ToggleUserApprovalRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ToggleUserApprovalRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'management_services'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ID', protoName: 'ID')
    ..aOB(2, _omitFieldNames ? '' : 'Approve', protoName: 'Approve')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ToggleUserApprovalRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ToggleUserApprovalRequest copyWith(
          void Function(ToggleUserApprovalRequest) updates) =>
      super.copyWith((message) => updates(message as ToggleUserApprovalRequest))
          as ToggleUserApprovalRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ToggleUserApprovalRequest create() => ToggleUserApprovalRequest._();
  @$core.override
  ToggleUserApprovalRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ToggleUserApprovalRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ToggleUserApprovalRequest>(create);
  static ToggleUserApprovalRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get iD => $_getSZ(0);
  @$pb.TagNumber(1)
  set iD($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasID() => $_has(0);
  @$pb.TagNumber(1)
  void clearID() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get approve => $_getBF(1);
  @$pb.TagNumber(2)
  set approve($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasApprove() => $_has(1);
  @$pb.TagNumber(2)
  void clearApprove() => $_clearField(2);
}

class DeleteUserRequest extends $pb.GeneratedMessage {
  factory DeleteUserRequest({
    $core.String? iD,
  }) {
    final result = create();
    if (iD != null) result.iD = iD;
    return result;
  }

  DeleteUserRequest._();

  factory DeleteUserRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeleteUserRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeleteUserRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'management_services'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ID', protoName: 'ID')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteUserRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteUserRequest copyWith(void Function(DeleteUserRequest) updates) =>
      super.copyWith((message) => updates(message as DeleteUserRequest))
          as DeleteUserRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteUserRequest create() => DeleteUserRequest._();
  @$core.override
  DeleteUserRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DeleteUserRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteUserRequest>(create);
  static DeleteUserRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get iD => $_getSZ(0);
  @$pb.TagNumber(1)
  set iD($core.String value) => $_setString(0, value);
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
    final result = create();
    if (limit != null) result.limit = limit;
    if (page != null) result.page = page;
    return result;
  }

  ListApplicationsRequest._();

  factory ListApplicationsRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListApplicationsRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListApplicationsRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'management_services'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'Limit', protoName: 'Limit')
    ..aI(2, _omitFieldNames ? '' : 'Page', protoName: 'Page')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListApplicationsRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListApplicationsRequest copyWith(
          void Function(ListApplicationsRequest) updates) =>
      super.copyWith((message) => updates(message as ListApplicationsRequest))
          as ListApplicationsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListApplicationsRequest create() => ListApplicationsRequest._();
  @$core.override
  ListApplicationsRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListApplicationsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListApplicationsRequest>(create);
  static ListApplicationsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get limit => $_getIZ(0);
  @$pb.TagNumber(1)
  set limit($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLimit() => $_has(0);
  @$pb.TagNumber(1)
  void clearLimit() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get page => $_getIZ(1);
  @$pb.TagNumber(2)
  set page($core.int value) => $_setSignedInt32(1, value);
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
    final result = create();
    if (applications != null) result.applications.addAll(applications);
    if (count != null) result.count = count;
    return result;
  }

  ListApplicationsResponse._();

  factory ListApplicationsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListApplicationsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListApplicationsResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'management_services'),
      createEmptyInstance: create)
    ..pPM<Application>(1, _omitFieldNames ? '' : 'Applications',
        protoName: 'Applications', subBuilder: Application.create)
    ..aI(2, _omitFieldNames ? '' : 'Count', protoName: 'Count')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListApplicationsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListApplicationsResponse copyWith(
          void Function(ListApplicationsResponse) updates) =>
      super.copyWith((message) => updates(message as ListApplicationsResponse))
          as ListApplicationsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListApplicationsResponse create() => ListApplicationsResponse._();
  @$core.override
  ListApplicationsResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListApplicationsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListApplicationsResponse>(create);
  static ListApplicationsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Application> get applications => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get count => $_getIZ(1);
  @$pb.TagNumber(2)
  set count($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearCount() => $_clearField(2);
}

class Application extends $pb.GeneratedMessage {
  factory Application({
    $core.String? iD,
    $5.Timestamp? createdAt,
    $5.Timestamp? updatedAt,
    $core.String? name,
  }) {
    final result = create();
    if (iD != null) result.iD = iD;
    if (createdAt != null) result.createdAt = createdAt;
    if (updatedAt != null) result.updatedAt = updatedAt;
    if (name != null) result.name = name;
    return result;
  }

  Application._();

  factory Application.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Application.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Application',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'management_services'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ID', protoName: 'ID')
    ..aOM<$5.Timestamp>(2, _omitFieldNames ? '' : 'CreatedAt',
        protoName: 'CreatedAt', subBuilder: $5.Timestamp.create)
    ..aOM<$5.Timestamp>(3, _omitFieldNames ? '' : 'UpdatedAt',
        protoName: 'UpdatedAt', subBuilder: $5.Timestamp.create)
    ..aOS(4, _omitFieldNames ? '' : 'Name', protoName: 'Name')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Application clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Application copyWith(void Function(Application) updates) =>
      super.copyWith((message) => updates(message as Application))
          as Application;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Application create() => Application._();
  @$core.override
  Application createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Application getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Application>(create);
  static Application? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get iD => $_getSZ(0);
  @$pb.TagNumber(1)
  set iD($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasID() => $_has(0);
  @$pb.TagNumber(1)
  void clearID() => $_clearField(1);

  @$pb.TagNumber(2)
  $5.Timestamp get createdAt => $_getN(1);
  @$pb.TagNumber(2)
  set createdAt($5.Timestamp value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasCreatedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreatedAt() => $_clearField(2);
  @$pb.TagNumber(2)
  $5.Timestamp ensureCreatedAt() => $_ensure(1);

  @$pb.TagNumber(3)
  $5.Timestamp get updatedAt => $_getN(2);
  @$pb.TagNumber(3)
  set updatedAt($5.Timestamp value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasUpdatedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdatedAt() => $_clearField(3);
  @$pb.TagNumber(3)
  $5.Timestamp ensureUpdatedAt() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get name => $_getSZ(3);
  @$pb.TagNumber(4)
  set name($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasName() => $_has(3);
  @$pb.TagNumber(4)
  void clearName() => $_clearField(4);
}

class CreateApplicationRequest extends $pb.GeneratedMessage {
  factory CreateApplicationRequest({
    $core.String? name,
  }) {
    final result = create();
    if (name != null) result.name = name;
    return result;
  }

  CreateApplicationRequest._();

  factory CreateApplicationRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CreateApplicationRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateApplicationRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'management_services'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'Name', protoName: 'Name')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateApplicationRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateApplicationRequest copyWith(
          void Function(CreateApplicationRequest) updates) =>
      super.copyWith((message) => updates(message as CreateApplicationRequest))
          as CreateApplicationRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateApplicationRequest create() => CreateApplicationRequest._();
  @$core.override
  CreateApplicationRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CreateApplicationRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateApplicationRequest>(create);
  static CreateApplicationRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);
}

class CreateApplicationResponse extends $pb.GeneratedMessage {
  factory CreateApplicationResponse({
    $core.String? iD,
  }) {
    final result = create();
    if (iD != null) result.iD = iD;
    return result;
  }

  CreateApplicationResponse._();

  factory CreateApplicationResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CreateApplicationResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateApplicationResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'management_services'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ID', protoName: 'ID')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateApplicationResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateApplicationResponse copyWith(
          void Function(CreateApplicationResponse) updates) =>
      super.copyWith((message) => updates(message as CreateApplicationResponse))
          as CreateApplicationResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateApplicationResponse create() => CreateApplicationResponse._();
  @$core.override
  CreateApplicationResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CreateApplicationResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateApplicationResponse>(create);
  static CreateApplicationResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get iD => $_getSZ(0);
  @$pb.TagNumber(1)
  set iD($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasID() => $_has(0);
  @$pb.TagNumber(1)
  void clearID() => $_clearField(1);
}

class DeleteApplicationRequest extends $pb.GeneratedMessage {
  factory DeleteApplicationRequest({
    $core.String? iD,
  }) {
    final result = create();
    if (iD != null) result.iD = iD;
    return result;
  }

  DeleteApplicationRequest._();

  factory DeleteApplicationRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeleteApplicationRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeleteApplicationRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'management_services'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ID', protoName: 'ID')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteApplicationRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteApplicationRequest copyWith(
          void Function(DeleteApplicationRequest) updates) =>
      super.copyWith((message) => updates(message as DeleteApplicationRequest))
          as DeleteApplicationRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteApplicationRequest create() => DeleteApplicationRequest._();
  @$core.override
  DeleteApplicationRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DeleteApplicationRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteApplicationRequest>(create);
  static DeleteApplicationRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get iD => $_getSZ(0);
  @$pb.TagNumber(1)
  set iD($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasID() => $_has(0);
  @$pb.TagNumber(1)
  void clearID() => $_clearField(1);
}

class GetApplicationRequest extends $pb.GeneratedMessage {
  factory GetApplicationRequest({
    $core.String? applicationID,
  }) {
    final result = create();
    if (applicationID != null) result.applicationID = applicationID;
    return result;
  }

  GetApplicationRequest._();

  factory GetApplicationRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetApplicationRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetApplicationRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'management_services'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ApplicationID', protoName: 'ApplicationID')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetApplicationRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetApplicationRequest copyWith(
          void Function(GetApplicationRequest) updates) =>
      super.copyWith((message) => updates(message as GetApplicationRequest))
          as GetApplicationRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetApplicationRequest create() => GetApplicationRequest._();
  @$core.override
  GetApplicationRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetApplicationRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetApplicationRequest>(create);
  static GetApplicationRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get applicationID => $_getSZ(0);
  @$pb.TagNumber(1)
  set applicationID($core.String value) => $_setString(0, value);
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
    final result = create();
    if (limit != null) result.limit = limit;
    if (page != null) result.page = page;
    if (applicationID != null) result.applicationID = applicationID;
    return result;
  }

  ListApplicationDomainRequest._();

  factory ListApplicationDomainRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListApplicationDomainRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListApplicationDomainRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'management_services'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'Limit', protoName: 'Limit')
    ..aI(2, _omitFieldNames ? '' : 'Page', protoName: 'Page')
    ..aOS(3, _omitFieldNames ? '' : 'ApplicationID', protoName: 'ApplicationID')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListApplicationDomainRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListApplicationDomainRequest copyWith(
          void Function(ListApplicationDomainRequest) updates) =>
      super.copyWith(
              (message) => updates(message as ListApplicationDomainRequest))
          as ListApplicationDomainRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListApplicationDomainRequest create() =>
      ListApplicationDomainRequest._();
  @$core.override
  ListApplicationDomainRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListApplicationDomainRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListApplicationDomainRequest>(create);
  static ListApplicationDomainRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get limit => $_getIZ(0);
  @$pb.TagNumber(1)
  set limit($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLimit() => $_has(0);
  @$pb.TagNumber(1)
  void clearLimit() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get page => $_getIZ(1);
  @$pb.TagNumber(2)
  set page($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPage() => $_has(1);
  @$pb.TagNumber(2)
  void clearPage() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get applicationID => $_getSZ(2);
  @$pb.TagNumber(3)
  set applicationID($core.String value) => $_setString(2, value);
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
    final result = create();
    if (domains != null) result.domains.addAll(domains);
    if (count != null) result.count = count;
    return result;
  }

  ListApplicationDomainResponse._();

  factory ListApplicationDomainResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListApplicationDomainResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListApplicationDomainResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'management_services'),
      createEmptyInstance: create)
    ..pPM<Domain>(1, _omitFieldNames ? '' : 'Domains',
        protoName: 'Domains', subBuilder: Domain.create)
    ..aI(2, _omitFieldNames ? '' : 'Count', protoName: 'Count')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListApplicationDomainResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListApplicationDomainResponse copyWith(
          void Function(ListApplicationDomainResponse) updates) =>
      super.copyWith(
              (message) => updates(message as ListApplicationDomainResponse))
          as ListApplicationDomainResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListApplicationDomainResponse create() =>
      ListApplicationDomainResponse._();
  @$core.override
  ListApplicationDomainResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListApplicationDomainResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListApplicationDomainResponse>(create);
  static ListApplicationDomainResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Domain> get domains => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get count => $_getIZ(1);
  @$pb.TagNumber(2)
  set count($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearCount() => $_clearField(2);
}

class StreamApplicationDomainRequest extends $pb.GeneratedMessage {
  factory StreamApplicationDomainRequest({
    $core.String? applicationID,
  }) {
    final result = create();
    if (applicationID != null) result.applicationID = applicationID;
    return result;
  }

  StreamApplicationDomainRequest._();

  factory StreamApplicationDomainRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StreamApplicationDomainRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StreamApplicationDomainRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'management_services'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ApplicationID', protoName: 'ApplicationID')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamApplicationDomainRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamApplicationDomainRequest copyWith(
          void Function(StreamApplicationDomainRequest) updates) =>
      super.copyWith(
              (message) => updates(message as StreamApplicationDomainRequest))
          as StreamApplicationDomainRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamApplicationDomainRequest create() =>
      StreamApplicationDomainRequest._();
  @$core.override
  StreamApplicationDomainRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StreamApplicationDomainRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StreamApplicationDomainRequest>(create);
  static StreamApplicationDomainRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get applicationID => $_getSZ(0);
  @$pb.TagNumber(1)
  set applicationID($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasApplicationID() => $_has(0);
  @$pb.TagNumber(1)
  void clearApplicationID() => $_clearField(1);
}

class Domain extends $pb.GeneratedMessage {
  factory Domain({
    $core.String? iD,
    $5.Timestamp? createdAt,
    $5.Timestamp? updatedAt,
    $core.String? domainName,
    $core.String? soaEmail,
    $core.String? txtRecord,
    DomainStatus? status,
  }) {
    final result = create();
    if (iD != null) result.iD = iD;
    if (createdAt != null) result.createdAt = createdAt;
    if (updatedAt != null) result.updatedAt = updatedAt;
    if (domainName != null) result.domainName = domainName;
    if (soaEmail != null) result.soaEmail = soaEmail;
    if (txtRecord != null) result.txtRecord = txtRecord;
    if (status != null) result.status = status;
    return result;
  }

  Domain._();

  factory Domain.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Domain.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Domain',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'management_services'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ID', protoName: 'ID')
    ..aOM<$5.Timestamp>(2, _omitFieldNames ? '' : 'CreatedAt',
        protoName: 'CreatedAt', subBuilder: $5.Timestamp.create)
    ..aOM<$5.Timestamp>(3, _omitFieldNames ? '' : 'UpdatedAt',
        protoName: 'UpdatedAt', subBuilder: $5.Timestamp.create)
    ..aOS(4, _omitFieldNames ? '' : 'DomainName', protoName: 'DomainName')
    ..aOS(5, _omitFieldNames ? '' : 'SoaEmail', protoName: 'SoaEmail')
    ..aOS(6, _omitFieldNames ? '' : 'TxtRecord', protoName: 'TxtRecord')
    ..aE<DomainStatus>(7, _omitFieldNames ? '' : 'Status',
        protoName: 'Status', enumValues: DomainStatus.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Domain clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Domain copyWith(void Function(Domain) updates) =>
      super.copyWith((message) => updates(message as Domain)) as Domain;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Domain create() => Domain._();
  @$core.override
  Domain createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Domain getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Domain>(create);
  static Domain? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get iD => $_getSZ(0);
  @$pb.TagNumber(1)
  set iD($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasID() => $_has(0);
  @$pb.TagNumber(1)
  void clearID() => $_clearField(1);

  @$pb.TagNumber(2)
  $5.Timestamp get createdAt => $_getN(1);
  @$pb.TagNumber(2)
  set createdAt($5.Timestamp value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasCreatedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreatedAt() => $_clearField(2);
  @$pb.TagNumber(2)
  $5.Timestamp ensureCreatedAt() => $_ensure(1);

  @$pb.TagNumber(3)
  $5.Timestamp get updatedAt => $_getN(2);
  @$pb.TagNumber(3)
  set updatedAt($5.Timestamp value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasUpdatedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdatedAt() => $_clearField(3);
  @$pb.TagNumber(3)
  $5.Timestamp ensureUpdatedAt() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get domainName => $_getSZ(3);
  @$pb.TagNumber(4)
  set domainName($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasDomainName() => $_has(3);
  @$pb.TagNumber(4)
  void clearDomainName() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get soaEmail => $_getSZ(4);
  @$pb.TagNumber(5)
  set soaEmail($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasSoaEmail() => $_has(4);
  @$pb.TagNumber(5)
  void clearSoaEmail() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get txtRecord => $_getSZ(5);
  @$pb.TagNumber(6)
  set txtRecord($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasTxtRecord() => $_has(5);
  @$pb.TagNumber(6)
  void clearTxtRecord() => $_clearField(6);

  @$pb.TagNumber(7)
  DomainStatus get status => $_getN(6);
  @$pb.TagNumber(7)
  set status(DomainStatus value) => $_setField(7, value);
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
    final result = create();
    if (applicationID != null) result.applicationID = applicationID;
    if (domainName != null) result.domainName = domainName;
    if (soaEmail != null) result.soaEmail = soaEmail;
    return result;
  }

  CreateDomainRequest._();

  factory CreateDomainRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CreateDomainRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateDomainRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'management_services'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ApplicationID', protoName: 'ApplicationID')
    ..aOS(2, _omitFieldNames ? '' : 'DomainName', protoName: 'DomainName')
    ..aOS(3, _omitFieldNames ? '' : 'SoaEmail', protoName: 'SoaEmail')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateDomainRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateDomainRequest copyWith(void Function(CreateDomainRequest) updates) =>
      super.copyWith((message) => updates(message as CreateDomainRequest))
          as CreateDomainRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateDomainRequest create() => CreateDomainRequest._();
  @$core.override
  CreateDomainRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CreateDomainRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateDomainRequest>(create);
  static CreateDomainRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get applicationID => $_getSZ(0);
  @$pb.TagNumber(1)
  set applicationID($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasApplicationID() => $_has(0);
  @$pb.TagNumber(1)
  void clearApplicationID() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get domainName => $_getSZ(1);
  @$pb.TagNumber(2)
  set domainName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDomainName() => $_has(1);
  @$pb.TagNumber(2)
  void clearDomainName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get soaEmail => $_getSZ(2);
  @$pb.TagNumber(3)
  set soaEmail($core.String value) => $_setString(2, value);
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
    final result = create();
    if (domainID != null) result.domainID = domainID;
    if (domainName != null) result.domainName = domainName;
    if (soaEmail != null) result.soaEmail = soaEmail;
    return result;
  }

  UpdateDomainRequest._();

  factory UpdateDomainRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UpdateDomainRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpdateDomainRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'management_services'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'DomainID', protoName: 'DomainID')
    ..aOS(2, _omitFieldNames ? '' : 'DomainName', protoName: 'DomainName')
    ..aOS(3, _omitFieldNames ? '' : 'SoaEmail', protoName: 'SoaEmail')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateDomainRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateDomainRequest copyWith(void Function(UpdateDomainRequest) updates) =>
      super.copyWith((message) => updates(message as UpdateDomainRequest))
          as UpdateDomainRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateDomainRequest create() => UpdateDomainRequest._();
  @$core.override
  UpdateDomainRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UpdateDomainRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateDomainRequest>(create);
  static UpdateDomainRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get domainID => $_getSZ(0);
  @$pb.TagNumber(1)
  set domainID($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDomainID() => $_has(0);
  @$pb.TagNumber(1)
  void clearDomainID() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get domainName => $_getSZ(1);
  @$pb.TagNumber(2)
  set domainName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDomainName() => $_has(1);
  @$pb.TagNumber(2)
  void clearDomainName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get soaEmail => $_getSZ(2);
  @$pb.TagNumber(3)
  set soaEmail($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSoaEmail() => $_has(2);
  @$pb.TagNumber(3)
  void clearSoaEmail() => $_clearField(3);
}

class GetDomainRequest extends $pb.GeneratedMessage {
  factory GetDomainRequest({
    $core.String? domainID,
  }) {
    final result = create();
    if (domainID != null) result.domainID = domainID;
    return result;
  }

  GetDomainRequest._();

  factory GetDomainRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetDomainRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetDomainRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'management_services'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'DomainID', protoName: 'DomainID')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetDomainRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetDomainRequest copyWith(void Function(GetDomainRequest) updates) =>
      super.copyWith((message) => updates(message as GetDomainRequest))
          as GetDomainRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetDomainRequest create() => GetDomainRequest._();
  @$core.override
  GetDomainRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetDomainRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetDomainRequest>(create);
  static GetDomainRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get domainID => $_getSZ(0);
  @$pb.TagNumber(1)
  set domainID($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDomainID() => $_has(0);
  @$pb.TagNumber(1)
  void clearDomainID() => $_clearField(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
