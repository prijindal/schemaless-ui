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

/// SearchEntityHistoryRequest
class EntityHistoryOrderField extends $pb.ProtobufEnum {
  static const EntityHistoryOrderField CreatedAt =
      EntityHistoryOrderField._(0, _omitEnumNames ? '' : 'CreatedAt');
  static const EntityHistoryOrderField UpdatedAt =
      EntityHistoryOrderField._(1, _omitEnumNames ? '' : 'UpdatedAt');

  static const $core.List<EntityHistoryOrderField> values =
      <EntityHistoryOrderField>[
    CreatedAt,
    UpdatedAt,
  ];

  static final $core.List<EntityHistoryOrderField?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static EntityHistoryOrderField? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const EntityHistoryOrderField._(super.value, super.name);
}

class EntityHistoryOrderValue extends $pb.ProtobufEnum {
  static const EntityHistoryOrderValue ASC =
      EntityHistoryOrderValue._(0, _omitEnumNames ? '' : 'ASC');
  static const EntityHistoryOrderValue DESC =
      EntityHistoryOrderValue._(1, _omitEnumNames ? '' : 'DESC');

  static const $core.List<EntityHistoryOrderValue> values =
      <EntityHistoryOrderValue>[
    ASC,
    DESC,
  ];

  static final $core.List<EntityHistoryOrderValue?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static EntityHistoryOrderValue? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const EntityHistoryOrderValue._(super.value, super.name);
}

class EntityAction extends $pb.ProtobufEnum {
  static const EntityAction CREATE =
      EntityAction._(0, _omitEnumNames ? '' : 'CREATE');
  static const EntityAction UPDATE =
      EntityAction._(1, _omitEnumNames ? '' : 'UPDATE');
  static const EntityAction DELETE =
      EntityAction._(2, _omitEnumNames ? '' : 'DELETE');

  static const $core.List<EntityAction> values = <EntityAction>[
    CREATE,
    UPDATE,
    DELETE,
  ];

  static final $core.List<EntityAction?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static EntityAction? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const EntityAction._(super.value, super.name);
}

class EntityActionResponseStatus extends $pb.ProtobufEnum {
  static const EntityActionResponseStatus Success =
      EntityActionResponseStatus._(0, _omitEnumNames ? '' : 'Success');
  static const EntityActionResponseStatus Error =
      EntityActionResponseStatus._(1, _omitEnumNames ? '' : 'Error');

  static const $core.List<EntityActionResponseStatus> values =
      <EntityActionResponseStatus>[
    Success,
    Error,
  ];

  static final $core.List<EntityActionResponseStatus?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static EntityActionResponseStatus? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const EntityActionResponseStatus._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
