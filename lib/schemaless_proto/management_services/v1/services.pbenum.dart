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

import 'package:protobuf/protobuf.dart' as $pb;

class DomainStatus extends $pb.ProtobufEnum {
  static const DomainStatus DOMAIN_STATUS_DOMAIN_UNSPECIFIED = DomainStatus._(
      0, _omitEnumNames ? '' : 'DOMAIN_STATUS_DOMAIN_UNSPECIFIED');
  static const DomainStatus DOMAIN_STATUS_DOMAIN_ACTIVATED =
      DomainStatus._(1, _omitEnumNames ? '' : 'DOMAIN_STATUS_DOMAIN_ACTIVATED');
  static const DomainStatus DOMAIN_STATUS_DOMAIN_DEACTIVATED = DomainStatus._(
      2, _omitEnumNames ? '' : 'DOMAIN_STATUS_DOMAIN_DEACTIVATED');
  static const DomainStatus DOMAIN_STATUS_DOMAIN_UNVERIFIED = DomainStatus._(
      3, _omitEnumNames ? '' : 'DOMAIN_STATUS_DOMAIN_UNVERIFIED');

  static const $core.List<DomainStatus> values = <DomainStatus>[
    DOMAIN_STATUS_DOMAIN_UNSPECIFIED,
    DOMAIN_STATUS_DOMAIN_ACTIVATED,
    DOMAIN_STATUS_DOMAIN_DEACTIVATED,
    DOMAIN_STATUS_DOMAIN_UNVERIFIED,
  ];

  static final $core.List<DomainStatus?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static DomainStatus? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const DomainStatus._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
