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

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../google/protobuf/duration.pb.dart' as $4;
import '../google/protobuf/timestamp.pb.dart' as $5;
import 'services.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'services.pbenum.dart';

class CumulativeHealthResponse extends $pb.GeneratedMessage {
  factory CumulativeHealthResponse({
    $core.bool? dB,
    $core.bool? pubSub,
    $core.bool? docker,
    $core.bool? cache,
    $4.Duration? uptime,
    $5.Timestamp? currentTime,
    $core.String? hostname,
  }) {
    final result = create();
    if (dB != null) result.dB = dB;
    if (pubSub != null) result.pubSub = pubSub;
    if (docker != null) result.docker = docker;
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
    ..aOB(3, _omitFieldNames ? '' : 'Docker', protoName: 'Docker')
    ..aOB(4, _omitFieldNames ? '' : 'Cache', protoName: 'Cache')
    ..aOM<$4.Duration>(5, _omitFieldNames ? '' : 'Uptime',
        protoName: 'Uptime', subBuilder: $4.Duration.create)
    ..aOM<$5.Timestamp>(6, _omitFieldNames ? '' : 'CurrentTime',
        protoName: 'CurrentTime', subBuilder: $5.Timestamp.create)
    ..aOS(7, _omitFieldNames ? '' : 'Hostname', protoName: 'Hostname')
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
  $core.bool get docker => $_getBF(2);
  @$pb.TagNumber(3)
  set docker($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDocker() => $_has(2);
  @$pb.TagNumber(3)
  void clearDocker() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.bool get cache => $_getBF(3);
  @$pb.TagNumber(4)
  set cache($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasCache() => $_has(3);
  @$pb.TagNumber(4)
  void clearCache() => $_clearField(4);

  @$pb.TagNumber(5)
  $4.Duration get uptime => $_getN(4);
  @$pb.TagNumber(5)
  set uptime($4.Duration value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasUptime() => $_has(4);
  @$pb.TagNumber(5)
  void clearUptime() => $_clearField(5);
  @$pb.TagNumber(5)
  $4.Duration ensureUptime() => $_ensure(4);

  @$pb.TagNumber(6)
  $5.Timestamp get currentTime => $_getN(5);
  @$pb.TagNumber(6)
  set currentTime($5.Timestamp value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasCurrentTime() => $_has(5);
  @$pb.TagNumber(6)
  void clearCurrentTime() => $_clearField(6);
  @$pb.TagNumber(6)
  $5.Timestamp ensureCurrentTime() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.String get hostname => $_getSZ(6);
  @$pb.TagNumber(7)
  set hostname($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasHostname() => $_has(6);
  @$pb.TagNumber(7)
  void clearHostname() => $_clearField(7);
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
    $fixnum.Int64? count,
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
    ..aInt64(2, _omitFieldNames ? '' : 'Count', protoName: 'Count')
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
  $fixnum.Int64 get count => $_getI64(1);
  @$pb.TagNumber(2)
  set count($fixnum.Int64 value) => $_setInt64(1, value);
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
    $core.String? openIdIssuerUrl,
    $core.Iterable<$core.String>? policyFilesContent,
  }) {
    final result = create();
    if (iD != null) result.iD = iD;
    if (createdAt != null) result.createdAt = createdAt;
    if (updatedAt != null) result.updatedAt = updatedAt;
    if (name != null) result.name = name;
    if (openIdIssuerUrl != null) result.openIdIssuerUrl = openIdIssuerUrl;
    if (policyFilesContent != null)
      result.policyFilesContent.addAll(policyFilesContent);
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
    ..aOS(5, _omitFieldNames ? '' : 'OpenIdIssuerUrl',
        protoName: 'OpenIdIssuerUrl')
    ..pPS(6, _omitFieldNames ? '' : 'PolicyFilesContent',
        protoName: 'PolicyFilesContent')
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

  @$pb.TagNumber(5)
  $core.String get openIdIssuerUrl => $_getSZ(4);
  @$pb.TagNumber(5)
  set openIdIssuerUrl($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasOpenIdIssuerUrl() => $_has(4);
  @$pb.TagNumber(5)
  void clearOpenIdIssuerUrl() => $_clearField(5);

  @$pb.TagNumber(6)
  $pb.PbList<$core.String> get policyFilesContent => $_getList(5);
}

class CreateApplicationRequest extends $pb.GeneratedMessage {
  factory CreateApplicationRequest({
    $core.String? name,
    $core.String? openIdIssuerUrl,
    $core.Iterable<$core.String>? policyFilesContent,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (openIdIssuerUrl != null) result.openIdIssuerUrl = openIdIssuerUrl;
    if (policyFilesContent != null)
      result.policyFilesContent.addAll(policyFilesContent);
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
    ..aOS(2, _omitFieldNames ? '' : 'OpenIdIssuerUrl',
        protoName: 'OpenIdIssuerUrl')
    ..pPS(3, _omitFieldNames ? '' : 'PolicyFilesContent',
        protoName: 'PolicyFilesContent')
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

  @$pb.TagNumber(2)
  $core.String get openIdIssuerUrl => $_getSZ(1);
  @$pb.TagNumber(2)
  set openIdIssuerUrl($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasOpenIdIssuerUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearOpenIdIssuerUrl() => $_clearField(2);

  @$pb.TagNumber(3)
  $pb.PbList<$core.String> get policyFilesContent => $_getList(2);
}

class UpdateApplicationRequest extends $pb.GeneratedMessage {
  factory UpdateApplicationRequest({
    $core.String? applicationID,
    $core.String? name,
    $core.String? openIdIssuerUrl,
    $core.Iterable<$core.String>? policyFilesContent,
  }) {
    final result = create();
    if (applicationID != null) result.applicationID = applicationID;
    if (name != null) result.name = name;
    if (openIdIssuerUrl != null) result.openIdIssuerUrl = openIdIssuerUrl;
    if (policyFilesContent != null)
      result.policyFilesContent.addAll(policyFilesContent);
    return result;
  }

  UpdateApplicationRequest._();

  factory UpdateApplicationRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UpdateApplicationRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpdateApplicationRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'management_services'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ApplicationID', protoName: 'ApplicationID')
    ..aOS(2, _omitFieldNames ? '' : 'Name', protoName: 'Name')
    ..aOS(3, _omitFieldNames ? '' : 'OpenIdIssuerUrl',
        protoName: 'OpenIdIssuerUrl')
    ..pPS(4, _omitFieldNames ? '' : 'PolicyFilesContent',
        protoName: 'PolicyFilesContent')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateApplicationRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateApplicationRequest copyWith(
          void Function(UpdateApplicationRequest) updates) =>
      super.copyWith((message) => updates(message as UpdateApplicationRequest))
          as UpdateApplicationRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateApplicationRequest create() => UpdateApplicationRequest._();
  @$core.override
  UpdateApplicationRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UpdateApplicationRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateApplicationRequest>(create);
  static UpdateApplicationRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get applicationID => $_getSZ(0);
  @$pb.TagNumber(1)
  set applicationID($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasApplicationID() => $_has(0);
  @$pb.TagNumber(1)
  void clearApplicationID() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get openIdIssuerUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set openIdIssuerUrl($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasOpenIdIssuerUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearOpenIdIssuerUrl() => $_clearField(3);

  @$pb.TagNumber(4)
  $pb.PbList<$core.String> get policyFilesContent => $_getList(3);
}

class DeployApplicationRequest extends $pb.GeneratedMessage {
  factory DeployApplicationRequest({
    $core.String? applicationID,
  }) {
    final result = create();
    if (applicationID != null) result.applicationID = applicationID;
    return result;
  }

  DeployApplicationRequest._();

  factory DeployApplicationRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeployApplicationRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeployApplicationRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'management_services'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ApplicationID', protoName: 'ApplicationID')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeployApplicationRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeployApplicationRequest copyWith(
          void Function(DeployApplicationRequest) updates) =>
      super.copyWith((message) => updates(message as DeployApplicationRequest))
          as DeployApplicationRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeployApplicationRequest create() => DeployApplicationRequest._();
  @$core.override
  DeployApplicationRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DeployApplicationRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeployApplicationRequest>(create);
  static DeployApplicationRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get applicationID => $_getSZ(0);
  @$pb.TagNumber(1)
  set applicationID($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasApplicationID() => $_has(0);
  @$pb.TagNumber(1)
  void clearApplicationID() => $_clearField(1);
}

class DeployApplicationResponse extends $pb.GeneratedMessage {
  factory DeployApplicationResponse({
    $core.String? iD,
  }) {
    final result = create();
    if (iD != null) result.iD = iD;
    return result;
  }

  DeployApplicationResponse._();

  factory DeployApplicationResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeployApplicationResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeployApplicationResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'management_services'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ID', protoName: 'ID')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeployApplicationResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeployApplicationResponse copyWith(
          void Function(DeployApplicationResponse) updates) =>
      super.copyWith((message) => updates(message as DeployApplicationResponse))
          as DeployApplicationResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeployApplicationResponse create() => DeployApplicationResponse._();
  @$core.override
  DeployApplicationResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DeployApplicationResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeployApplicationResponse>(create);
  static DeployApplicationResponse? _defaultInstance;

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
    $fixnum.Int64? count,
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
    ..aInt64(2, _omitFieldNames ? '' : 'Count', protoName: 'Count')
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
  $fixnum.Int64 get count => $_getI64(1);
  @$pb.TagNumber(2)
  set count($fixnum.Int64 value) => $_setInt64(1, value);
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
