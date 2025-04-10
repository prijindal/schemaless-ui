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

class DomainStatus extends $pb.ProtobufEnum {
  static const DomainStatus DomainActivated = DomainStatus._(0, _omitEnumNames ? '' : 'DomainActivated');
  static const DomainStatus DomainDeactivated = DomainStatus._(1, _omitEnumNames ? '' : 'DomainDeactivated');
  static const DomainStatus DomainUnverified = DomainStatus._(2, _omitEnumNames ? '' : 'DomainUnverified');

  static const $core.List<DomainStatus> values = <DomainStatus> [
    DomainActivated,
    DomainDeactivated,
    DomainUnverified,
  ];

  static final $core.Map<$core.int, DomainStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DomainStatus? valueOf($core.int value) => _byValue[value];

  const DomainStatus._(super.v, super.n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
