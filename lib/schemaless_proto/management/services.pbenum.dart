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

class DomainStatus extends $pb.ProtobufEnum {
  static const DomainStatus DomainActivated =
      DomainStatus._(0, _omitEnumNames ? '' : 'DomainActivated');
  static const DomainStatus DomainDeactivated =
      DomainStatus._(1, _omitEnumNames ? '' : 'DomainDeactivated');
  static const DomainStatus DomainUnverified =
      DomainStatus._(2, _omitEnumNames ? '' : 'DomainUnverified');

  static const $core.List<DomainStatus> values = <DomainStatus>[
    DomainActivated,
    DomainDeactivated,
    DomainUnverified,
  ];

  static final $core.List<DomainStatus?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static DomainStatus? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const DomainStatus._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
