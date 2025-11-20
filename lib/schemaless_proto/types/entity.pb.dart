// This is a generated file - do not edit.
//
// Generated from types/entity.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../google/protobuf/timestamp.pb.dart' as $0;
import 'entity.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'entity.pbenum.dart';

/// ListEntityTypesResponse
class ListEntityTypesResponse extends $pb.GeneratedMessage {
  factory ListEntityTypesResponse({
    $core.Iterable<$core.String>? entityType,
  }) {
    final result = create();
    if (entityType != null) result.entityType.addAll(entityType);
    return result;
  }

  ListEntityTypesResponse._();

  factory ListEntityTypesResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListEntityTypesResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListEntityTypesResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'types'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'EntityType', protoName: 'EntityType')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListEntityTypesResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListEntityTypesResponse copyWith(
          void Function(ListEntityTypesResponse) updates) =>
      super.copyWith((message) => updates(message as ListEntityTypesResponse))
          as ListEntityTypesResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListEntityTypesResponse create() => ListEntityTypesResponse._();
  @$core.override
  ListEntityTypesResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListEntityTypesResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListEntityTypesResponse>(create);
  static ListEntityTypesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get entityType => $_getList(0);
}

class EntityHistoryRequestOrder extends $pb.GeneratedMessage {
  factory EntityHistoryRequestOrder({
    EntityHistoryOrderField? field_1,
    EntityHistoryOrderValue? value,
  }) {
    final result = create();
    if (field_1 != null) result.field_1 = field_1;
    if (value != null) result.value = value;
    return result;
  }

  EntityHistoryRequestOrder._();

  factory EntityHistoryRequestOrder.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EntityHistoryRequestOrder.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EntityHistoryRequestOrder',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'types'),
      createEmptyInstance: create)
    ..aE<EntityHistoryOrderField>(1, _omitFieldNames ? '' : 'Field',
        protoName: 'Field', enumValues: EntityHistoryOrderField.values)
    ..aE<EntityHistoryOrderValue>(2, _omitFieldNames ? '' : 'Value',
        protoName: 'Value', enumValues: EntityHistoryOrderValue.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EntityHistoryRequestOrder clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EntityHistoryRequestOrder copyWith(
          void Function(EntityHistoryRequestOrder) updates) =>
      super.copyWith((message) => updates(message as EntityHistoryRequestOrder))
          as EntityHistoryRequestOrder;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EntityHistoryRequestOrder create() => EntityHistoryRequestOrder._();
  @$core.override
  EntityHistoryRequestOrder createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EntityHistoryRequestOrder getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EntityHistoryRequestOrder>(create);
  static EntityHistoryRequestOrder? _defaultInstance;

  @$pb.TagNumber(1)
  EntityHistoryOrderField get field_1 => $_getN(0);
  @$pb.TagNumber(1)
  set field_1(EntityHistoryOrderField value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasField_1() => $_has(0);
  @$pb.TagNumber(1)
  void clearField_1() => $_clearField(1);

  @$pb.TagNumber(2)
  EntityHistoryOrderValue get value => $_getN(1);
  @$pb.TagNumber(2)
  set value(EntityHistoryOrderValue value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => $_clearField(2);
}

class EntityHistoryRequestDateParam extends $pb.GeneratedMessage {
  factory EntityHistoryRequestDateParam({
    $0.Timestamp? gte,
    $0.Timestamp? lte,
  }) {
    final result = create();
    if (gte != null) result.gte = gte;
    if (lte != null) result.lte = lte;
    return result;
  }

  EntityHistoryRequestDateParam._();

  factory EntityHistoryRequestDateParam.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EntityHistoryRequestDateParam.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EntityHistoryRequestDateParam',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'types'),
      createEmptyInstance: create)
    ..aOM<$0.Timestamp>(1, _omitFieldNames ? '' : 'gte',
        subBuilder: $0.Timestamp.create)
    ..aOM<$0.Timestamp>(2, _omitFieldNames ? '' : 'lte',
        subBuilder: $0.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EntityHistoryRequestDateParam clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EntityHistoryRequestDateParam copyWith(
          void Function(EntityHistoryRequestDateParam) updates) =>
      super.copyWith(
              (message) => updates(message as EntityHistoryRequestDateParam))
          as EntityHistoryRequestDateParam;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EntityHistoryRequestDateParam create() =>
      EntityHistoryRequestDateParam._();
  @$core.override
  EntityHistoryRequestDateParam createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EntityHistoryRequestDateParam getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EntityHistoryRequestDateParam>(create);
  static EntityHistoryRequestDateParam? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Timestamp get gte => $_getN(0);
  @$pb.TagNumber(1)
  set gte($0.Timestamp value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasGte() => $_has(0);
  @$pb.TagNumber(1)
  void clearGte() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Timestamp ensureGte() => $_ensure(0);

  @$pb.TagNumber(2)
  $0.Timestamp get lte => $_getN(1);
  @$pb.TagNumber(2)
  set lte($0.Timestamp value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasLte() => $_has(1);
  @$pb.TagNumber(2)
  void clearLte() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.Timestamp ensureLte() => $_ensure(1);
}

class EntityHistoryRequestHostIDParam extends $pb.GeneratedMessage {
  factory EntityHistoryRequestHostIDParam({
    $core.String? eq,
    $core.String? neq,
  }) {
    final result = create();
    if (eq != null) result.eq = eq;
    if (neq != null) result.neq = neq;
    return result;
  }

  EntityHistoryRequestHostIDParam._();

  factory EntityHistoryRequestHostIDParam.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EntityHistoryRequestHostIDParam.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EntityHistoryRequestHostIDParam',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'types'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'eq')
    ..aOS(2, _omitFieldNames ? '' : 'neq')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EntityHistoryRequestHostIDParam clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EntityHistoryRequestHostIDParam copyWith(
          void Function(EntityHistoryRequestHostIDParam) updates) =>
      super.copyWith(
              (message) => updates(message as EntityHistoryRequestHostIDParam))
          as EntityHistoryRequestHostIDParam;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EntityHistoryRequestHostIDParam create() =>
      EntityHistoryRequestHostIDParam._();
  @$core.override
  EntityHistoryRequestHostIDParam createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EntityHistoryRequestHostIDParam getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EntityHistoryRequestHostIDParam>(
          create);
  static EntityHistoryRequestHostIDParam? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get eq => $_getSZ(0);
  @$pb.TagNumber(1)
  set eq($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasEq() => $_has(0);
  @$pb.TagNumber(1)
  void clearEq() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get neq => $_getSZ(1);
  @$pb.TagNumber(2)
  set neq($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasNeq() => $_has(1);
  @$pb.TagNumber(2)
  void clearNeq() => $_clearField(2);
}

class EntityHistoryRequestEntityNameParam extends $pb.GeneratedMessage {
  factory EntityHistoryRequestEntityNameParam({
    $core.Iterable<$core.String>? in_1,
  }) {
    final result = create();
    if (in_1 != null) result.in_1.addAll(in_1);
    return result;
  }

  EntityHistoryRequestEntityNameParam._();

  factory EntityHistoryRequestEntityNameParam.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EntityHistoryRequestEntityNameParam.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EntityHistoryRequestEntityNameParam',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'types'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'in')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EntityHistoryRequestEntityNameParam clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EntityHistoryRequestEntityNameParam copyWith(
          void Function(EntityHistoryRequestEntityNameParam) updates) =>
      super.copyWith((message) =>
              updates(message as EntityHistoryRequestEntityNameParam))
          as EntityHistoryRequestEntityNameParam;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EntityHistoryRequestEntityNameParam create() =>
      EntityHistoryRequestEntityNameParam._();
  @$core.override
  EntityHistoryRequestEntityNameParam createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EntityHistoryRequestEntityNameParam getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          EntityHistoryRequestEntityNameParam>(create);
  static EntityHistoryRequestEntityNameParam? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get in_1 => $_getList(0);
}

class EntityHistoryRequestParams extends $pb.GeneratedMessage {
  factory EntityHistoryRequestParams({
    EntityHistoryRequestDateParam? createdAt,
    EntityHistoryRequestHostIDParam? hostID,
    EntityHistoryRequestEntityNameParam? entityName,
  }) {
    final result = create();
    if (createdAt != null) result.createdAt = createdAt;
    if (hostID != null) result.hostID = hostID;
    if (entityName != null) result.entityName = entityName;
    return result;
  }

  EntityHistoryRequestParams._();

  factory EntityHistoryRequestParams.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EntityHistoryRequestParams.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EntityHistoryRequestParams',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'types'),
      createEmptyInstance: create)
    ..aOM<EntityHistoryRequestDateParam>(1, _omitFieldNames ? '' : 'CreatedAt',
        protoName: 'CreatedAt',
        subBuilder: EntityHistoryRequestDateParam.create)
    ..aOM<EntityHistoryRequestHostIDParam>(2, _omitFieldNames ? '' : 'HostID',
        protoName: 'HostID', subBuilder: EntityHistoryRequestHostIDParam.create)
    ..aOM<EntityHistoryRequestEntityNameParam>(
        3, _omitFieldNames ? '' : 'EntityName',
        protoName: 'EntityName',
        subBuilder: EntityHistoryRequestEntityNameParam.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EntityHistoryRequestParams clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EntityHistoryRequestParams copyWith(
          void Function(EntityHistoryRequestParams) updates) =>
      super.copyWith(
              (message) => updates(message as EntityHistoryRequestParams))
          as EntityHistoryRequestParams;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EntityHistoryRequestParams create() => EntityHistoryRequestParams._();
  @$core.override
  EntityHistoryRequestParams createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EntityHistoryRequestParams getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EntityHistoryRequestParams>(create);
  static EntityHistoryRequestParams? _defaultInstance;

  @$pb.TagNumber(1)
  EntityHistoryRequestDateParam get createdAt => $_getN(0);
  @$pb.TagNumber(1)
  set createdAt(EntityHistoryRequestDateParam value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasCreatedAt() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreatedAt() => $_clearField(1);
  @$pb.TagNumber(1)
  EntityHistoryRequestDateParam ensureCreatedAt() => $_ensure(0);

  @$pb.TagNumber(2)
  EntityHistoryRequestHostIDParam get hostID => $_getN(1);
  @$pb.TagNumber(2)
  set hostID(EntityHistoryRequestHostIDParam value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasHostID() => $_has(1);
  @$pb.TagNumber(2)
  void clearHostID() => $_clearField(2);
  @$pb.TagNumber(2)
  EntityHistoryRequestHostIDParam ensureHostID() => $_ensure(1);

  @$pb.TagNumber(3)
  EntityHistoryRequestEntityNameParam get entityName => $_getN(2);
  @$pb.TagNumber(3)
  set entityName(EntityHistoryRequestEntityNameParam value) =>
      $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasEntityName() => $_has(2);
  @$pb.TagNumber(3)
  void clearEntityName() => $_clearField(3);
  @$pb.TagNumber(3)
  EntityHistoryRequestEntityNameParam ensureEntityName() => $_ensure(2);
}

class SearchEntityHistoryRequest extends $pb.GeneratedMessage {
  factory SearchEntityHistoryRequest({
    EntityHistoryRequestParams? params,
    $core.Iterable<EntityHistoryRequestOrder>? order,
  }) {
    final result = create();
    if (params != null) result.params = params;
    if (order != null) result.order.addAll(order);
    return result;
  }

  SearchEntityHistoryRequest._();

  factory SearchEntityHistoryRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SearchEntityHistoryRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SearchEntityHistoryRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'types'),
      createEmptyInstance: create)
    ..aOM<EntityHistoryRequestParams>(1, _omitFieldNames ? '' : 'Params',
        protoName: 'Params', subBuilder: EntityHistoryRequestParams.create)
    ..pPM<EntityHistoryRequestOrder>(2, _omitFieldNames ? '' : 'Order',
        protoName: 'Order', subBuilder: EntityHistoryRequestOrder.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SearchEntityHistoryRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SearchEntityHistoryRequest copyWith(
          void Function(SearchEntityHistoryRequest) updates) =>
      super.copyWith(
              (message) => updates(message as SearchEntityHistoryRequest))
          as SearchEntityHistoryRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SearchEntityHistoryRequest create() => SearchEntityHistoryRequest._();
  @$core.override
  SearchEntityHistoryRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SearchEntityHistoryRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SearchEntityHistoryRequest>(create);
  static SearchEntityHistoryRequest? _defaultInstance;

  @$pb.TagNumber(1)
  EntityHistoryRequestParams get params => $_getN(0);
  @$pb.TagNumber(1)
  set params(EntityHistoryRequestParams value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasParams() => $_has(0);
  @$pb.TagNumber(1)
  void clearParams() => $_clearField(1);
  @$pb.TagNumber(1)
  EntityHistoryRequestParams ensureParams() => $_ensure(0);

  @$pb.TagNumber(2)
  $pb.PbList<EntityHistoryRequestOrder> get order => $_getList(1);
}

/// EntityHistory
class EntityHistory extends $pb.GeneratedMessage {
  factory EntityHistory({
    $core.String? iD,
    $core.String? entityName,
    $0.Timestamp? createdAt,
    $0.Timestamp? updatedAt,
    $core.String? hostID,
    $core.String? entityID,
    EntityAction? action,
    $core.List<$core.int>? payload,
  }) {
    final result = create();
    if (iD != null) result.iD = iD;
    if (entityName != null) result.entityName = entityName;
    if (createdAt != null) result.createdAt = createdAt;
    if (updatedAt != null) result.updatedAt = updatedAt;
    if (hostID != null) result.hostID = hostID;
    if (entityID != null) result.entityID = entityID;
    if (action != null) result.action = action;
    if (payload != null) result.payload = payload;
    return result;
  }

  EntityHistory._();

  factory EntityHistory.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EntityHistory.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EntityHistory',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'types'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ID', protoName: 'ID')
    ..aOS(2, _omitFieldNames ? '' : 'EntityName', protoName: 'EntityName')
    ..aOM<$0.Timestamp>(3, _omitFieldNames ? '' : 'CreatedAt',
        protoName: 'CreatedAt', subBuilder: $0.Timestamp.create)
    ..aOM<$0.Timestamp>(4, _omitFieldNames ? '' : 'UpdatedAt',
        protoName: 'UpdatedAt', subBuilder: $0.Timestamp.create)
    ..aOS(5, _omitFieldNames ? '' : 'HostID', protoName: 'HostID')
    ..aOS(6, _omitFieldNames ? '' : 'EntityID', protoName: 'EntityID')
    ..aE<EntityAction>(7, _omitFieldNames ? '' : 'Action',
        protoName: 'Action', enumValues: EntityAction.values)
    ..a<$core.List<$core.int>>(
        8, _omitFieldNames ? '' : 'Payload', $pb.PbFieldType.OY,
        protoName: 'Payload')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EntityHistory clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EntityHistory copyWith(void Function(EntityHistory) updates) =>
      super.copyWith((message) => updates(message as EntityHistory))
          as EntityHistory;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EntityHistory create() => EntityHistory._();
  @$core.override
  EntityHistory createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EntityHistory getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EntityHistory>(create);
  static EntityHistory? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get iD => $_getSZ(0);
  @$pb.TagNumber(1)
  set iD($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasID() => $_has(0);
  @$pb.TagNumber(1)
  void clearID() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get entityName => $_getSZ(1);
  @$pb.TagNumber(2)
  set entityName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasEntityName() => $_has(1);
  @$pb.TagNumber(2)
  void clearEntityName() => $_clearField(2);

  @$pb.TagNumber(3)
  $0.Timestamp get createdAt => $_getN(2);
  @$pb.TagNumber(3)
  set createdAt($0.Timestamp value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasCreatedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearCreatedAt() => $_clearField(3);
  @$pb.TagNumber(3)
  $0.Timestamp ensureCreatedAt() => $_ensure(2);

  @$pb.TagNumber(4)
  $0.Timestamp get updatedAt => $_getN(3);
  @$pb.TagNumber(4)
  set updatedAt($0.Timestamp value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasUpdatedAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearUpdatedAt() => $_clearField(4);
  @$pb.TagNumber(4)
  $0.Timestamp ensureUpdatedAt() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.String get hostID => $_getSZ(4);
  @$pb.TagNumber(5)
  set hostID($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasHostID() => $_has(4);
  @$pb.TagNumber(5)
  void clearHostID() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get entityID => $_getSZ(5);
  @$pb.TagNumber(6)
  set entityID($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasEntityID() => $_has(5);
  @$pb.TagNumber(6)
  void clearEntityID() => $_clearField(6);

  @$pb.TagNumber(7)
  EntityAction get action => $_getN(6);
  @$pb.TagNumber(7)
  set action(EntityAction value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasAction() => $_has(6);
  @$pb.TagNumber(7)
  void clearAction() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.List<$core.int> get payload => $_getN(7);
  @$pb.TagNumber(8)
  set payload($core.List<$core.int> value) => $_setBytes(7, value);
  @$pb.TagNumber(8)
  $core.bool hasPayload() => $_has(7);
  @$pb.TagNumber(8)
  void clearPayload() => $_clearField(8);
}

/// EntityActionRequest
class EntityActionRequest extends $pb.GeneratedMessage {
  factory EntityActionRequest({
    $core.String? hostID,
    $core.String? actionId,
    $core.String? entityName,
    EntityAction? action,
    $0.Timestamp? createdAt,
    $core.String? entityId,
    $core.List<$core.int>? payload,
    $core.String? requestID,
  }) {
    final result = create();
    if (hostID != null) result.hostID = hostID;
    if (actionId != null) result.actionId = actionId;
    if (entityName != null) result.entityName = entityName;
    if (action != null) result.action = action;
    if (createdAt != null) result.createdAt = createdAt;
    if (entityId != null) result.entityId = entityId;
    if (payload != null) result.payload = payload;
    if (requestID != null) result.requestID = requestID;
    return result;
  }

  EntityActionRequest._();

  factory EntityActionRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EntityActionRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EntityActionRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'types'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'HostID', protoName: 'HostID')
    ..aOS(2, _omitFieldNames ? '' : 'ActionId', protoName: 'ActionId')
    ..aOS(3, _omitFieldNames ? '' : 'EntityName', protoName: 'EntityName')
    ..aE<EntityAction>(4, _omitFieldNames ? '' : 'Action',
        protoName: 'Action', enumValues: EntityAction.values)
    ..aOM<$0.Timestamp>(5, _omitFieldNames ? '' : 'CreatedAt',
        protoName: 'CreatedAt', subBuilder: $0.Timestamp.create)
    ..aOS(6, _omitFieldNames ? '' : 'EntityId', protoName: 'EntityId')
    ..a<$core.List<$core.int>>(
        7, _omitFieldNames ? '' : 'Payload', $pb.PbFieldType.OY,
        protoName: 'Payload')
    ..aOS(8, _omitFieldNames ? '' : 'RequestID', protoName: 'RequestID')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EntityActionRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EntityActionRequest copyWith(void Function(EntityActionRequest) updates) =>
      super.copyWith((message) => updates(message as EntityActionRequest))
          as EntityActionRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EntityActionRequest create() => EntityActionRequest._();
  @$core.override
  EntityActionRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EntityActionRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EntityActionRequest>(create);
  static EntityActionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get hostID => $_getSZ(0);
  @$pb.TagNumber(1)
  set hostID($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasHostID() => $_has(0);
  @$pb.TagNumber(1)
  void clearHostID() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get actionId => $_getSZ(1);
  @$pb.TagNumber(2)
  set actionId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasActionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearActionId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get entityName => $_getSZ(2);
  @$pb.TagNumber(3)
  set entityName($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasEntityName() => $_has(2);
  @$pb.TagNumber(3)
  void clearEntityName() => $_clearField(3);

  @$pb.TagNumber(4)
  EntityAction get action => $_getN(3);
  @$pb.TagNumber(4)
  set action(EntityAction value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasAction() => $_has(3);
  @$pb.TagNumber(4)
  void clearAction() => $_clearField(4);

  @$pb.TagNumber(5)
  $0.Timestamp get createdAt => $_getN(4);
  @$pb.TagNumber(5)
  set createdAt($0.Timestamp value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasCreatedAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearCreatedAt() => $_clearField(5);
  @$pb.TagNumber(5)
  $0.Timestamp ensureCreatedAt() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.String get entityId => $_getSZ(5);
  @$pb.TagNumber(6)
  set entityId($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasEntityId() => $_has(5);
  @$pb.TagNumber(6)
  void clearEntityId() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.int> get payload => $_getN(6);
  @$pb.TagNumber(7)
  set payload($core.List<$core.int> value) => $_setBytes(6, value);
  @$pb.TagNumber(7)
  $core.bool hasPayload() => $_has(6);
  @$pb.TagNumber(7)
  void clearPayload() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get requestID => $_getSZ(7);
  @$pb.TagNumber(8)
  set requestID($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasRequestID() => $_has(7);
  @$pb.TagNumber(8)
  void clearRequestID() => $_clearField(8);
}

class EntityActionResponse extends $pb.GeneratedMessage {
  factory EntityActionResponse({
    $core.String? requestID,
    EntityActionResponseStatus? status,
  }) {
    final result = create();
    if (requestID != null) result.requestID = requestID;
    if (status != null) result.status = status;
    return result;
  }

  EntityActionResponse._();

  factory EntityActionResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EntityActionResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EntityActionResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'types'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'RequestID', protoName: 'RequestID')
    ..aE<EntityActionResponseStatus>(2, _omitFieldNames ? '' : 'Status',
        protoName: 'Status', enumValues: EntityActionResponseStatus.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EntityActionResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EntityActionResponse copyWith(void Function(EntityActionResponse) updates) =>
      super.copyWith((message) => updates(message as EntityActionResponse))
          as EntityActionResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EntityActionResponse create() => EntityActionResponse._();
  @$core.override
  EntityActionResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EntityActionResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EntityActionResponse>(create);
  static EntityActionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get requestID => $_getSZ(0);
  @$pb.TagNumber(1)
  set requestID($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRequestID() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestID() => $_clearField(1);

  @$pb.TagNumber(2)
  EntityActionResponseStatus get status => $_getN(1);
  @$pb.TagNumber(2)
  set status(EntityActionResponseStatus value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => $_clearField(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
