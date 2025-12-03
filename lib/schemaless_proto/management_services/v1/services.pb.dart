// This is a generated file - do not edit.
//
// Generated from management_services/v1/services.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../google/protobuf/duration.pb.dart' as $3;
import '../../google/protobuf/timestamp.pb.dart' as $4;
import 'services.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'services.pbenum.dart';

class CumulativeHealthRequest extends $pb.GeneratedMessage {
  factory CumulativeHealthRequest() => create();

  CumulativeHealthRequest._();

  factory CumulativeHealthRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CumulativeHealthRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CumulativeHealthRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'management_services.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CumulativeHealthRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CumulativeHealthRequest copyWith(
          void Function(CumulativeHealthRequest) updates) =>
      super.copyWith((message) => updates(message as CumulativeHealthRequest))
          as CumulativeHealthRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CumulativeHealthRequest create() => CumulativeHealthRequest._();
  @$core.override
  CumulativeHealthRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CumulativeHealthRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CumulativeHealthRequest>(create);
  static CumulativeHealthRequest? _defaultInstance;
}

class CumulativeHealthResponse extends $pb.GeneratedMessage {
  factory CumulativeHealthResponse({
    $core.bool? db,
    $core.bool? pubSub,
    $core.bool? docker,
    $core.bool? cache,
    $3.Duration? uptime,
    $4.Timestamp? currentTime,
    $core.String? hostname,
  }) {
    final result = create();
    if (db != null) result.db = db;
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
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'management_services.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'db')
    ..aOB(2, _omitFieldNames ? '' : 'pubSub')
    ..aOB(3, _omitFieldNames ? '' : 'docker')
    ..aOB(4, _omitFieldNames ? '' : 'cache')
    ..aOM<$3.Duration>(5, _omitFieldNames ? '' : 'uptime',
        subBuilder: $3.Duration.create)
    ..aOM<$4.Timestamp>(6, _omitFieldNames ? '' : 'currentTime',
        subBuilder: $4.Timestamp.create)
    ..aOS(7, _omitFieldNames ? '' : 'hostname')
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
  $core.bool get db => $_getBF(0);
  @$pb.TagNumber(1)
  set db($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDb() => $_has(0);
  @$pb.TagNumber(1)
  void clearDb() => $_clearField(1);

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
  $3.Duration get uptime => $_getN(4);
  @$pb.TagNumber(5)
  set uptime($3.Duration value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasUptime() => $_has(4);
  @$pb.TagNumber(5)
  void clearUptime() => $_clearField(5);
  @$pb.TagNumber(5)
  $3.Duration ensureUptime() => $_ensure(4);

  @$pb.TagNumber(6)
  $4.Timestamp get currentTime => $_getN(5);
  @$pb.TagNumber(6)
  set currentTime($4.Timestamp value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasCurrentTime() => $_has(5);
  @$pb.TagNumber(6)
  void clearCurrentTime() => $_clearField(6);
  @$pb.TagNumber(6)
  $4.Timestamp ensureCurrentTime() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.String get hostname => $_getSZ(6);
  @$pb.TagNumber(7)
  set hostname($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasHostname() => $_has(6);
  @$pb.TagNumber(7)
  void clearHostname() => $_clearField(7);
}

class VerifyUserRequest extends $pb.GeneratedMessage {
  factory VerifyUserRequest() => create();

  VerifyUserRequest._();

  factory VerifyUserRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory VerifyUserRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VerifyUserRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'management_services.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VerifyUserRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VerifyUserRequest copyWith(void Function(VerifyUserRequest) updates) =>
      super.copyWith((message) => updates(message as VerifyUserRequest))
          as VerifyUserRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VerifyUserRequest create() => VerifyUserRequest._();
  @$core.override
  VerifyUserRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static VerifyUserRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VerifyUserRequest>(create);
  static VerifyUserRequest? _defaultInstance;
}

class VerifyUserResponse extends $pb.GeneratedMessage {
  factory VerifyUserResponse({
    $core.String? id,
    $core.bool? isAdmin,
  }) {
    final result = create();
    if (id != null) result.id = id;
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
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'management_services.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOB(2, _omitFieldNames ? '' : 'isAdmin')
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
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get isAdmin => $_getBF(1);
  @$pb.TagNumber(2)
  set isAdmin($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIsAdmin() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsAdmin() => $_clearField(2);
}

class StreamApplicationsRequest extends $pb.GeneratedMessage {
  factory StreamApplicationsRequest() => create();

  StreamApplicationsRequest._();

  factory StreamApplicationsRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StreamApplicationsRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StreamApplicationsRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'management_services.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamApplicationsRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamApplicationsRequest copyWith(
          void Function(StreamApplicationsRequest) updates) =>
      super.copyWith((message) => updates(message as StreamApplicationsRequest))
          as StreamApplicationsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamApplicationsRequest create() => StreamApplicationsRequest._();
  @$core.override
  StreamApplicationsRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StreamApplicationsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StreamApplicationsRequest>(create);
  static StreamApplicationsRequest? _defaultInstance;
}

class StreamApplicationsResponse extends $pb.GeneratedMessage {
  factory StreamApplicationsResponse({
    Application? application,
  }) {
    final result = create();
    if (application != null) result.application = application;
    return result;
  }

  StreamApplicationsResponse._();

  factory StreamApplicationsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StreamApplicationsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StreamApplicationsResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'management_services.v1'),
      createEmptyInstance: create)
    ..aOM<Application>(1, _omitFieldNames ? '' : 'application',
        subBuilder: Application.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamApplicationsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamApplicationsResponse copyWith(
          void Function(StreamApplicationsResponse) updates) =>
      super.copyWith(
              (message) => updates(message as StreamApplicationsResponse))
          as StreamApplicationsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamApplicationsResponse create() => StreamApplicationsResponse._();
  @$core.override
  StreamApplicationsResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StreamApplicationsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StreamApplicationsResponse>(create);
  static StreamApplicationsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Application get application => $_getN(0);
  @$pb.TagNumber(1)
  set application(Application value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasApplication() => $_has(0);
  @$pb.TagNumber(1)
  void clearApplication() => $_clearField(1);
  @$pb.TagNumber(1)
  Application ensureApplication() => $_ensure(0);
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
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'management_services.v1'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'limit')
    ..aI(2, _omitFieldNames ? '' : 'page')
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
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'management_services.v1'),
      createEmptyInstance: create)
    ..pPM<Application>(1, _omitFieldNames ? '' : 'applications',
        subBuilder: Application.create)
    ..aInt64(2, _omitFieldNames ? '' : 'count')
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
    $core.String? id,
    $4.Timestamp? createdAt,
    $4.Timestamp? updatedAt,
    $core.String? name,
    $core.String? openidIssuerUrl,
    $core.String? policyFileContent,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (createdAt != null) result.createdAt = createdAt;
    if (updatedAt != null) result.updatedAt = updatedAt;
    if (name != null) result.name = name;
    if (openidIssuerUrl != null) result.openidIssuerUrl = openidIssuerUrl;
    if (policyFileContent != null) result.policyFileContent = policyFileContent;
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
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'management_services.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOM<$4.Timestamp>(2, _omitFieldNames ? '' : 'createdAt',
        subBuilder: $4.Timestamp.create)
    ..aOM<$4.Timestamp>(3, _omitFieldNames ? '' : 'updatedAt',
        subBuilder: $4.Timestamp.create)
    ..aOS(4, _omitFieldNames ? '' : 'name')
    ..aOS(5, _omitFieldNames ? '' : 'openidIssuerUrl')
    ..aOS(6, _omitFieldNames ? '' : 'policyFileContent')
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
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $4.Timestamp get createdAt => $_getN(1);
  @$pb.TagNumber(2)
  set createdAt($4.Timestamp value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasCreatedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreatedAt() => $_clearField(2);
  @$pb.TagNumber(2)
  $4.Timestamp ensureCreatedAt() => $_ensure(1);

  @$pb.TagNumber(3)
  $4.Timestamp get updatedAt => $_getN(2);
  @$pb.TagNumber(3)
  set updatedAt($4.Timestamp value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasUpdatedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdatedAt() => $_clearField(3);
  @$pb.TagNumber(3)
  $4.Timestamp ensureUpdatedAt() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get name => $_getSZ(3);
  @$pb.TagNumber(4)
  set name($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasName() => $_has(3);
  @$pb.TagNumber(4)
  void clearName() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get openidIssuerUrl => $_getSZ(4);
  @$pb.TagNumber(5)
  set openidIssuerUrl($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasOpenidIssuerUrl() => $_has(4);
  @$pb.TagNumber(5)
  void clearOpenidIssuerUrl() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get policyFileContent => $_getSZ(5);
  @$pb.TagNumber(6)
  set policyFileContent($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasPolicyFileContent() => $_has(5);
  @$pb.TagNumber(6)
  void clearPolicyFileContent() => $_clearField(6);
}

class CreateApplicationRequest extends $pb.GeneratedMessage {
  factory CreateApplicationRequest({
    $core.String? name,
    $core.String? openidIssuerUrl,
    $core.String? policyFileContent,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (openidIssuerUrl != null) result.openidIssuerUrl = openidIssuerUrl;
    if (policyFileContent != null) result.policyFileContent = policyFileContent;
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
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'management_services.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'openidIssuerUrl')
    ..aOS(3, _omitFieldNames ? '' : 'policyFileContent')
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
  $core.String get openidIssuerUrl => $_getSZ(1);
  @$pb.TagNumber(2)
  set openidIssuerUrl($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasOpenidIssuerUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearOpenidIssuerUrl() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get policyFileContent => $_getSZ(2);
  @$pb.TagNumber(3)
  set policyFileContent($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPolicyFileContent() => $_has(2);
  @$pb.TagNumber(3)
  void clearPolicyFileContent() => $_clearField(3);
}

class CreateApplicationResponse extends $pb.GeneratedMessage {
  factory CreateApplicationResponse({
    Application? application,
  }) {
    final result = create();
    if (application != null) result.application = application;
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
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'management_services.v1'),
      createEmptyInstance: create)
    ..aOM<Application>(1, _omitFieldNames ? '' : 'application',
        subBuilder: Application.create)
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
  Application get application => $_getN(0);
  @$pb.TagNumber(1)
  set application(Application value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasApplication() => $_has(0);
  @$pb.TagNumber(1)
  void clearApplication() => $_clearField(1);
  @$pb.TagNumber(1)
  Application ensureApplication() => $_ensure(0);
}

class UpdateApplicationRequest extends $pb.GeneratedMessage {
  factory UpdateApplicationRequest({
    $core.String? applicationId,
    $core.String? name,
    $core.String? openidIssuerUrl,
    $core.String? policyFileContent,
  }) {
    final result = create();
    if (applicationId != null) result.applicationId = applicationId;
    if (name != null) result.name = name;
    if (openidIssuerUrl != null) result.openidIssuerUrl = openidIssuerUrl;
    if (policyFileContent != null) result.policyFileContent = policyFileContent;
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
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'management_services.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'applicationId')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'openidIssuerUrl')
    ..aOS(4, _omitFieldNames ? '' : 'policyFileContent')
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
  $core.String get applicationId => $_getSZ(0);
  @$pb.TagNumber(1)
  set applicationId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasApplicationId() => $_has(0);
  @$pb.TagNumber(1)
  void clearApplicationId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get openidIssuerUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set openidIssuerUrl($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasOpenidIssuerUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearOpenidIssuerUrl() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get policyFileContent => $_getSZ(3);
  @$pb.TagNumber(4)
  set policyFileContent($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasPolicyFileContent() => $_has(3);
  @$pb.TagNumber(4)
  void clearPolicyFileContent() => $_clearField(4);
}

class UpdateApplicationResponse extends $pb.GeneratedMessage {
  factory UpdateApplicationResponse({
    Application? application,
  }) {
    final result = create();
    if (application != null) result.application = application;
    return result;
  }

  UpdateApplicationResponse._();

  factory UpdateApplicationResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UpdateApplicationResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpdateApplicationResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'management_services.v1'),
      createEmptyInstance: create)
    ..aOM<Application>(1, _omitFieldNames ? '' : 'application',
        subBuilder: Application.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateApplicationResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateApplicationResponse copyWith(
          void Function(UpdateApplicationResponse) updates) =>
      super.copyWith((message) => updates(message as UpdateApplicationResponse))
          as UpdateApplicationResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateApplicationResponse create() => UpdateApplicationResponse._();
  @$core.override
  UpdateApplicationResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UpdateApplicationResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateApplicationResponse>(create);
  static UpdateApplicationResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Application get application => $_getN(0);
  @$pb.TagNumber(1)
  set application(Application value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasApplication() => $_has(0);
  @$pb.TagNumber(1)
  void clearApplication() => $_clearField(1);
  @$pb.TagNumber(1)
  Application ensureApplication() => $_ensure(0);
}

class DeployApplicationRequest extends $pb.GeneratedMessage {
  factory DeployApplicationRequest({
    $core.String? applicationId,
  }) {
    final result = create();
    if (applicationId != null) result.applicationId = applicationId;
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
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'management_services.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'applicationId')
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
  $core.String get applicationId => $_getSZ(0);
  @$pb.TagNumber(1)
  set applicationId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasApplicationId() => $_has(0);
  @$pb.TagNumber(1)
  void clearApplicationId() => $_clearField(1);
}

class DeployApplicationResponse extends $pb.GeneratedMessage {
  factory DeployApplicationResponse({
    $core.String? id,
  }) {
    final result = create();
    if (id != null) result.id = id;
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
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'management_services.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
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
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);
}

class DeleteApplicationRequest extends $pb.GeneratedMessage {
  factory DeleteApplicationRequest({
    $core.String? id,
  }) {
    final result = create();
    if (id != null) result.id = id;
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
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'management_services.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
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
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);
}

class DeleteApplicationResponse extends $pb.GeneratedMessage {
  factory DeleteApplicationResponse({
    $core.String? id,
  }) {
    final result = create();
    if (id != null) result.id = id;
    return result;
  }

  DeleteApplicationResponse._();

  factory DeleteApplicationResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeleteApplicationResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeleteApplicationResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'management_services.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteApplicationResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteApplicationResponse copyWith(
          void Function(DeleteApplicationResponse) updates) =>
      super.copyWith((message) => updates(message as DeleteApplicationResponse))
          as DeleteApplicationResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteApplicationResponse create() => DeleteApplicationResponse._();
  @$core.override
  DeleteApplicationResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DeleteApplicationResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteApplicationResponse>(create);
  static DeleteApplicationResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);
}

class GetApplicationRequest extends $pb.GeneratedMessage {
  factory GetApplicationRequest({
    $core.String? applicationId,
  }) {
    final result = create();
    if (applicationId != null) result.applicationId = applicationId;
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
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'management_services.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'applicationId')
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
  $core.String get applicationId => $_getSZ(0);
  @$pb.TagNumber(1)
  set applicationId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasApplicationId() => $_has(0);
  @$pb.TagNumber(1)
  void clearApplicationId() => $_clearField(1);
}

class GetApplicationResponse extends $pb.GeneratedMessage {
  factory GetApplicationResponse({
    Application? application,
  }) {
    final result = create();
    if (application != null) result.application = application;
    return result;
  }

  GetApplicationResponse._();

  factory GetApplicationResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetApplicationResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetApplicationResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'management_services.v1'),
      createEmptyInstance: create)
    ..aOM<Application>(1, _omitFieldNames ? '' : 'application',
        subBuilder: Application.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetApplicationResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetApplicationResponse copyWith(
          void Function(GetApplicationResponse) updates) =>
      super.copyWith((message) => updates(message as GetApplicationResponse))
          as GetApplicationResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetApplicationResponse create() => GetApplicationResponse._();
  @$core.override
  GetApplicationResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetApplicationResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetApplicationResponse>(create);
  static GetApplicationResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Application get application => $_getN(0);
  @$pb.TagNumber(1)
  set application(Application value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasApplication() => $_has(0);
  @$pb.TagNumber(1)
  void clearApplication() => $_clearField(1);
  @$pb.TagNumber(1)
  Application ensureApplication() => $_ensure(0);
}

class ListApplicationDomainsRequest extends $pb.GeneratedMessage {
  factory ListApplicationDomainsRequest({
    $core.int? limit,
    $core.int? page,
    $core.String? applicationId,
  }) {
    final result = create();
    if (limit != null) result.limit = limit;
    if (page != null) result.page = page;
    if (applicationId != null) result.applicationId = applicationId;
    return result;
  }

  ListApplicationDomainsRequest._();

  factory ListApplicationDomainsRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListApplicationDomainsRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListApplicationDomainsRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'management_services.v1'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'limit')
    ..aI(2, _omitFieldNames ? '' : 'page')
    ..aOS(3, _omitFieldNames ? '' : 'applicationId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListApplicationDomainsRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListApplicationDomainsRequest copyWith(
          void Function(ListApplicationDomainsRequest) updates) =>
      super.copyWith(
              (message) => updates(message as ListApplicationDomainsRequest))
          as ListApplicationDomainsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListApplicationDomainsRequest create() =>
      ListApplicationDomainsRequest._();
  @$core.override
  ListApplicationDomainsRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListApplicationDomainsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListApplicationDomainsRequest>(create);
  static ListApplicationDomainsRequest? _defaultInstance;

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
  $core.String get applicationId => $_getSZ(2);
  @$pb.TagNumber(3)
  set applicationId($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasApplicationId() => $_has(2);
  @$pb.TagNumber(3)
  void clearApplicationId() => $_clearField(3);
}

class ListApplicationDomainsResponse extends $pb.GeneratedMessage {
  factory ListApplicationDomainsResponse({
    $core.Iterable<Domain>? domains,
    $fixnum.Int64? count,
  }) {
    final result = create();
    if (domains != null) result.domains.addAll(domains);
    if (count != null) result.count = count;
    return result;
  }

  ListApplicationDomainsResponse._();

  factory ListApplicationDomainsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListApplicationDomainsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListApplicationDomainsResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'management_services.v1'),
      createEmptyInstance: create)
    ..pPM<Domain>(1, _omitFieldNames ? '' : 'domains',
        subBuilder: Domain.create)
    ..aInt64(2, _omitFieldNames ? '' : 'count')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListApplicationDomainsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListApplicationDomainsResponse copyWith(
          void Function(ListApplicationDomainsResponse) updates) =>
      super.copyWith(
              (message) => updates(message as ListApplicationDomainsResponse))
          as ListApplicationDomainsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListApplicationDomainsResponse create() =>
      ListApplicationDomainsResponse._();
  @$core.override
  ListApplicationDomainsResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListApplicationDomainsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListApplicationDomainsResponse>(create);
  static ListApplicationDomainsResponse? _defaultInstance;

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

class StreamApplicationDomainsRequest extends $pb.GeneratedMessage {
  factory StreamApplicationDomainsRequest({
    $core.String? applicationId,
  }) {
    final result = create();
    if (applicationId != null) result.applicationId = applicationId;
    return result;
  }

  StreamApplicationDomainsRequest._();

  factory StreamApplicationDomainsRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StreamApplicationDomainsRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StreamApplicationDomainsRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'management_services.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'applicationId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamApplicationDomainsRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamApplicationDomainsRequest copyWith(
          void Function(StreamApplicationDomainsRequest) updates) =>
      super.copyWith(
              (message) => updates(message as StreamApplicationDomainsRequest))
          as StreamApplicationDomainsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamApplicationDomainsRequest create() =>
      StreamApplicationDomainsRequest._();
  @$core.override
  StreamApplicationDomainsRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StreamApplicationDomainsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StreamApplicationDomainsRequest>(
          create);
  static StreamApplicationDomainsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get applicationId => $_getSZ(0);
  @$pb.TagNumber(1)
  set applicationId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasApplicationId() => $_has(0);
  @$pb.TagNumber(1)
  void clearApplicationId() => $_clearField(1);
}

class StreamApplicationDomainsResponse extends $pb.GeneratedMessage {
  factory StreamApplicationDomainsResponse({
    Domain? domain,
  }) {
    final result = create();
    if (domain != null) result.domain = domain;
    return result;
  }

  StreamApplicationDomainsResponse._();

  factory StreamApplicationDomainsResponse.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StreamApplicationDomainsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StreamApplicationDomainsResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'management_services.v1'),
      createEmptyInstance: create)
    ..aOM<Domain>(1, _omitFieldNames ? '' : 'domain', subBuilder: Domain.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamApplicationDomainsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StreamApplicationDomainsResponse copyWith(
          void Function(StreamApplicationDomainsResponse) updates) =>
      super.copyWith(
              (message) => updates(message as StreamApplicationDomainsResponse))
          as StreamApplicationDomainsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamApplicationDomainsResponse create() =>
      StreamApplicationDomainsResponse._();
  @$core.override
  StreamApplicationDomainsResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StreamApplicationDomainsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StreamApplicationDomainsResponse>(
          create);
  static StreamApplicationDomainsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Domain get domain => $_getN(0);
  @$pb.TagNumber(1)
  set domain(Domain value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasDomain() => $_has(0);
  @$pb.TagNumber(1)
  void clearDomain() => $_clearField(1);
  @$pb.TagNumber(1)
  Domain ensureDomain() => $_ensure(0);
}

class Domain extends $pb.GeneratedMessage {
  factory Domain({
    $core.String? id,
    $4.Timestamp? createdAt,
    $4.Timestamp? updatedAt,
    $core.String? domainName,
    $core.String? soaEmail,
    $core.String? txtRecord,
    DomainStatus? status,
  }) {
    final result = create();
    if (id != null) result.id = id;
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
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'management_services.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOM<$4.Timestamp>(2, _omitFieldNames ? '' : 'createdAt',
        subBuilder: $4.Timestamp.create)
    ..aOM<$4.Timestamp>(3, _omitFieldNames ? '' : 'updatedAt',
        subBuilder: $4.Timestamp.create)
    ..aOS(4, _omitFieldNames ? '' : 'domainName')
    ..aOS(5, _omitFieldNames ? '' : 'soaEmail')
    ..aOS(6, _omitFieldNames ? '' : 'txtRecord')
    ..aE<DomainStatus>(7, _omitFieldNames ? '' : 'status',
        enumValues: DomainStatus.values)
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
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $4.Timestamp get createdAt => $_getN(1);
  @$pb.TagNumber(2)
  set createdAt($4.Timestamp value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasCreatedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreatedAt() => $_clearField(2);
  @$pb.TagNumber(2)
  $4.Timestamp ensureCreatedAt() => $_ensure(1);

  @$pb.TagNumber(3)
  $4.Timestamp get updatedAt => $_getN(2);
  @$pb.TagNumber(3)
  set updatedAt($4.Timestamp value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasUpdatedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdatedAt() => $_clearField(3);
  @$pb.TagNumber(3)
  $4.Timestamp ensureUpdatedAt() => $_ensure(2);

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
    $core.String? applicationId,
    $core.String? domainName,
    $core.String? soaEmail,
  }) {
    final result = create();
    if (applicationId != null) result.applicationId = applicationId;
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
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'management_services.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'applicationId')
    ..aOS(2, _omitFieldNames ? '' : 'domainName')
    ..aOS(3, _omitFieldNames ? '' : 'soaEmail')
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
  $core.String get applicationId => $_getSZ(0);
  @$pb.TagNumber(1)
  set applicationId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasApplicationId() => $_has(0);
  @$pb.TagNumber(1)
  void clearApplicationId() => $_clearField(1);

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

class CreateDomainResponse extends $pb.GeneratedMessage {
  factory CreateDomainResponse({
    Domain? domain,
  }) {
    final result = create();
    if (domain != null) result.domain = domain;
    return result;
  }

  CreateDomainResponse._();

  factory CreateDomainResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CreateDomainResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateDomainResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'management_services.v1'),
      createEmptyInstance: create)
    ..aOM<Domain>(1, _omitFieldNames ? '' : 'domain', subBuilder: Domain.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateDomainResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateDomainResponse copyWith(void Function(CreateDomainResponse) updates) =>
      super.copyWith((message) => updates(message as CreateDomainResponse))
          as CreateDomainResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateDomainResponse create() => CreateDomainResponse._();
  @$core.override
  CreateDomainResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CreateDomainResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateDomainResponse>(create);
  static CreateDomainResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Domain get domain => $_getN(0);
  @$pb.TagNumber(1)
  set domain(Domain value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasDomain() => $_has(0);
  @$pb.TagNumber(1)
  void clearDomain() => $_clearField(1);
  @$pb.TagNumber(1)
  Domain ensureDomain() => $_ensure(0);
}

class UpdateDomainRequest extends $pb.GeneratedMessage {
  factory UpdateDomainRequest({
    $core.String? domainId,
    $core.String? domainName,
    $core.String? soaEmail,
  }) {
    final result = create();
    if (domainId != null) result.domainId = domainId;
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
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'management_services.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'domainId')
    ..aOS(2, _omitFieldNames ? '' : 'domainName')
    ..aOS(3, _omitFieldNames ? '' : 'soaEmail')
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
  $core.String get domainId => $_getSZ(0);
  @$pb.TagNumber(1)
  set domainId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDomainId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDomainId() => $_clearField(1);

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

class UpdateDomainResponse extends $pb.GeneratedMessage {
  factory UpdateDomainResponse({
    Domain? domain,
  }) {
    final result = create();
    if (domain != null) result.domain = domain;
    return result;
  }

  UpdateDomainResponse._();

  factory UpdateDomainResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UpdateDomainResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpdateDomainResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'management_services.v1'),
      createEmptyInstance: create)
    ..aOM<Domain>(1, _omitFieldNames ? '' : 'domain', subBuilder: Domain.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateDomainResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateDomainResponse copyWith(void Function(UpdateDomainResponse) updates) =>
      super.copyWith((message) => updates(message as UpdateDomainResponse))
          as UpdateDomainResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateDomainResponse create() => UpdateDomainResponse._();
  @$core.override
  UpdateDomainResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UpdateDomainResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateDomainResponse>(create);
  static UpdateDomainResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Domain get domain => $_getN(0);
  @$pb.TagNumber(1)
  set domain(Domain value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasDomain() => $_has(0);
  @$pb.TagNumber(1)
  void clearDomain() => $_clearField(1);
  @$pb.TagNumber(1)
  Domain ensureDomain() => $_ensure(0);
}

class GetDomainRequest extends $pb.GeneratedMessage {
  factory GetDomainRequest({
    $core.String? domainId,
  }) {
    final result = create();
    if (domainId != null) result.domainId = domainId;
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
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'management_services.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'domainId')
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
  $core.String get domainId => $_getSZ(0);
  @$pb.TagNumber(1)
  set domainId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDomainId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDomainId() => $_clearField(1);
}

class GetDomainResponse extends $pb.GeneratedMessage {
  factory GetDomainResponse({
    Domain? domain,
  }) {
    final result = create();
    if (domain != null) result.domain = domain;
    return result;
  }

  GetDomainResponse._();

  factory GetDomainResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetDomainResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetDomainResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'management_services.v1'),
      createEmptyInstance: create)
    ..aOM<Domain>(1, _omitFieldNames ? '' : 'domain', subBuilder: Domain.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetDomainResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetDomainResponse copyWith(void Function(GetDomainResponse) updates) =>
      super.copyWith((message) => updates(message as GetDomainResponse))
          as GetDomainResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetDomainResponse create() => GetDomainResponse._();
  @$core.override
  GetDomainResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetDomainResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetDomainResponse>(create);
  static GetDomainResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Domain get domain => $_getN(0);
  @$pb.TagNumber(1)
  set domain(Domain value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasDomain() => $_has(0);
  @$pb.TagNumber(1)
  void clearDomain() => $_clearField(1);
  @$pb.TagNumber(1)
  Domain ensureDomain() => $_ensure(0);
}

class VerifyDomainRequest extends $pb.GeneratedMessage {
  factory VerifyDomainRequest({
    $core.String? domainId,
  }) {
    final result = create();
    if (domainId != null) result.domainId = domainId;
    return result;
  }

  VerifyDomainRequest._();

  factory VerifyDomainRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory VerifyDomainRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VerifyDomainRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'management_services.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'domainId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VerifyDomainRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VerifyDomainRequest copyWith(void Function(VerifyDomainRequest) updates) =>
      super.copyWith((message) => updates(message as VerifyDomainRequest))
          as VerifyDomainRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VerifyDomainRequest create() => VerifyDomainRequest._();
  @$core.override
  VerifyDomainRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static VerifyDomainRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VerifyDomainRequest>(create);
  static VerifyDomainRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get domainId => $_getSZ(0);
  @$pb.TagNumber(1)
  set domainId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDomainId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDomainId() => $_clearField(1);
}

class VerifyDomainResponse extends $pb.GeneratedMessage {
  factory VerifyDomainResponse() => create();

  VerifyDomainResponse._();

  factory VerifyDomainResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory VerifyDomainResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VerifyDomainResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'management_services.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VerifyDomainResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VerifyDomainResponse copyWith(void Function(VerifyDomainResponse) updates) =>
      super.copyWith((message) => updates(message as VerifyDomainResponse))
          as VerifyDomainResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VerifyDomainResponse create() => VerifyDomainResponse._();
  @$core.override
  VerifyDomainResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static VerifyDomainResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VerifyDomainResponse>(create);
  static VerifyDomainResponse? _defaultInstance;
}

class DeleteDomainRequest extends $pb.GeneratedMessage {
  factory DeleteDomainRequest({
    $core.String? domainId,
  }) {
    final result = create();
    if (domainId != null) result.domainId = domainId;
    return result;
  }

  DeleteDomainRequest._();

  factory DeleteDomainRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeleteDomainRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeleteDomainRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'management_services.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'domainId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteDomainRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteDomainRequest copyWith(void Function(DeleteDomainRequest) updates) =>
      super.copyWith((message) => updates(message as DeleteDomainRequest))
          as DeleteDomainRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteDomainRequest create() => DeleteDomainRequest._();
  @$core.override
  DeleteDomainRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DeleteDomainRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteDomainRequest>(create);
  static DeleteDomainRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get domainId => $_getSZ(0);
  @$pb.TagNumber(1)
  set domainId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDomainId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDomainId() => $_clearField(1);
}

class DeleteDomainResponse extends $pb.GeneratedMessage {
  factory DeleteDomainResponse() => create();

  DeleteDomainResponse._();

  factory DeleteDomainResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeleteDomainResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeleteDomainResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'management_services.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteDomainResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteDomainResponse copyWith(void Function(DeleteDomainResponse) updates) =>
      super.copyWith((message) => updates(message as DeleteDomainResponse))
          as DeleteDomainResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteDomainResponse create() => DeleteDomainResponse._();
  @$core.override
  DeleteDomainResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DeleteDomainResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteDomainResponse>(create);
  static DeleteDomainResponse? _defaultInstance;
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
