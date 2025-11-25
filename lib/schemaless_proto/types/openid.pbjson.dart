// This is a generated file - do not edit.
//
// Generated from types/openid.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use openIdConfigurationDescriptor instead')
const OpenIdConfiguration$json = {
  '1': 'OpenIdConfiguration',
  '2': [
    {'1': 'Issuer', '3': 1, '4': 1, '5': 9, '10': 'Issuer'},
    {
      '1': 'AuthorizationEndpoint',
      '3': 2,
      '4': 1,
      '5': 9,
      '10': 'AuthorizationEndpoint'
    },
    {'1': 'TokenEndpoint', '3': 3, '4': 1, '5': 9, '10': 'TokenEndpoint'},
    {
      '1': 'IntrospectionEndpoint',
      '3': 4,
      '4': 1,
      '5': 9,
      '10': 'IntrospectionEndpoint'
    },
    {'1': 'UserinfoEndpoint', '3': 5, '4': 1, '5': 9, '10': 'UserinfoEndpoint'},
    {
      '1': 'EndSessionEndpoint',
      '3': 6,
      '4': 1,
      '5': 9,
      '10': 'EndSessionEndpoint'
    },
    {'1': 'JwksUri', '3': 7, '4': 1, '5': 9, '10': 'JwksUri'},
  ],
};

/// Descriptor for `OpenIdConfiguration`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List openIdConfigurationDescriptor = $convert.base64Decode(
    'ChNPcGVuSWRDb25maWd1cmF0aW9uEhYKBklzc3VlchgBIAEoCVIGSXNzdWVyEjQKFUF1dGhvcm'
    'l6YXRpb25FbmRwb2ludBgCIAEoCVIVQXV0aG9yaXphdGlvbkVuZHBvaW50EiQKDVRva2VuRW5k'
    'cG9pbnQYAyABKAlSDVRva2VuRW5kcG9pbnQSNAoVSW50cm9zcGVjdGlvbkVuZHBvaW50GAQgAS'
    'gJUhVJbnRyb3NwZWN0aW9uRW5kcG9pbnQSKgoQVXNlcmluZm9FbmRwb2ludBgFIAEoCVIQVXNl'
    'cmluZm9FbmRwb2ludBIuChJFbmRTZXNzaW9uRW5kcG9pbnQYBiABKAlSEkVuZFNlc3Npb25Fbm'
    'Rwb2ludBIYCgdKd2tzVXJpGAcgASgJUgdKd2tzVXJp');
