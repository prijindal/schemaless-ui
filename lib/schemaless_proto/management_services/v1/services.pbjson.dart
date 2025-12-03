// This is a generated file - do not edit.
//
// Generated from management_services/v1/services.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use domainStatusDescriptor instead')
const DomainStatus$json = {
  '1': 'DomainStatus',
  '2': [
    {'1': 'DOMAIN_STATUS_DOMAIN_UNSPECIFIED', '2': 0},
    {'1': 'DOMAIN_STATUS_DOMAIN_ACTIVATED', '2': 1},
    {'1': 'DOMAIN_STATUS_DOMAIN_DEACTIVATED', '2': 2},
    {'1': 'DOMAIN_STATUS_DOMAIN_UNVERIFIED', '2': 3},
  ],
};

/// Descriptor for `DomainStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List domainStatusDescriptor = $convert.base64Decode(
    'CgxEb21haW5TdGF0dXMSJAogRE9NQUlOX1NUQVRVU19ET01BSU5fVU5TUEVDSUZJRUQQABIiCh'
    '5ET01BSU5fU1RBVFVTX0RPTUFJTl9BQ1RJVkFURUQQARIkCiBET01BSU5fU1RBVFVTX0RPTUFJ'
    'Tl9ERUFDVElWQVRFRBACEiMKH0RPTUFJTl9TVEFUVVNfRE9NQUlOX1VOVkVSSUZJRUQQAw==');

@$core.Deprecated('Use cumulativeHealthRequestDescriptor instead')
const CumulativeHealthRequest$json = {
  '1': 'CumulativeHealthRequest',
};

/// Descriptor for `CumulativeHealthRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cumulativeHealthRequestDescriptor =
    $convert.base64Decode('ChdDdW11bGF0aXZlSGVhbHRoUmVxdWVzdA==');

@$core.Deprecated('Use cumulativeHealthResponseDescriptor instead')
const CumulativeHealthResponse$json = {
  '1': 'CumulativeHealthResponse',
  '2': [
    {'1': 'db', '3': 1, '4': 1, '5': 8, '10': 'db'},
    {'1': 'pub_sub', '3': 2, '4': 1, '5': 8, '10': 'pubSub'},
    {'1': 'docker', '3': 3, '4': 1, '5': 8, '10': 'docker'},
    {'1': 'cache', '3': 4, '4': 1, '5': 8, '10': 'cache'},
    {
      '1': 'uptime',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Duration',
      '10': 'uptime'
    },
    {
      '1': 'current_time',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'currentTime'
    },
    {'1': 'hostname', '3': 7, '4': 1, '5': 9, '10': 'hostname'},
  ],
};

/// Descriptor for `CumulativeHealthResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cumulativeHealthResponseDescriptor = $convert.base64Decode(
    'ChhDdW11bGF0aXZlSGVhbHRoUmVzcG9uc2USDgoCZGIYASABKAhSAmRiEhcKB3B1Yl9zdWIYAi'
    'ABKAhSBnB1YlN1YhIWCgZkb2NrZXIYAyABKAhSBmRvY2tlchIUCgVjYWNoZRgEIAEoCFIFY2Fj'
    'aGUSMQoGdXB0aW1lGAUgASgLMhkuZ29vZ2xlLnByb3RvYnVmLkR1cmF0aW9uUgZ1cHRpbWUSPQ'
    'oMY3VycmVudF90aW1lGAYgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFILY3VycmVu'
    'dFRpbWUSGgoIaG9zdG5hbWUYByABKAlSCGhvc3RuYW1l');

@$core.Deprecated('Use verifyUserRequestDescriptor instead')
const VerifyUserRequest$json = {
  '1': 'VerifyUserRequest',
};

/// Descriptor for `VerifyUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List verifyUserRequestDescriptor =
    $convert.base64Decode('ChFWZXJpZnlVc2VyUmVxdWVzdA==');

@$core.Deprecated('Use verifyUserResponseDescriptor instead')
const VerifyUserResponse$json = {
  '1': 'VerifyUserResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'id'},
    {'1': 'is_admin', '3': 2, '4': 1, '5': 8, '10': 'isAdmin'},
  ],
};

/// Descriptor for `VerifyUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List verifyUserResponseDescriptor = $convert.base64Decode(
    'ChJWZXJpZnlVc2VyUmVzcG9uc2USGQoCaWQYASABKAlCCbpIBnIEEAEYZFICaWQSGQoIaXNfYW'
    'RtaW4YAiABKAhSB2lzQWRtaW4=');

@$core.Deprecated('Use streamApplicationsRequestDescriptor instead')
const StreamApplicationsRequest$json = {
  '1': 'StreamApplicationsRequest',
};

/// Descriptor for `StreamApplicationsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamApplicationsRequestDescriptor =
    $convert.base64Decode('ChlTdHJlYW1BcHBsaWNhdGlvbnNSZXF1ZXN0');

@$core.Deprecated('Use streamApplicationsResponseDescriptor instead')
const StreamApplicationsResponse$json = {
  '1': 'StreamApplicationsResponse',
  '2': [
    {
      '1': 'application',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.management_services.v1.Application',
      '10': 'application'
    },
  ],
};

/// Descriptor for `StreamApplicationsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamApplicationsResponseDescriptor =
    $convert.base64Decode(
        'ChpTdHJlYW1BcHBsaWNhdGlvbnNSZXNwb25zZRJFCgthcHBsaWNhdGlvbhgBIAEoCzIjLm1hbm'
        'FnZW1lbnRfc2VydmljZXMudjEuQXBwbGljYXRpb25SC2FwcGxpY2F0aW9u');

@$core.Deprecated('Use listApplicationsRequestDescriptor instead')
const ListApplicationsRequest$json = {
  '1': 'ListApplicationsRequest',
  '2': [
    {'1': 'limit', '3': 1, '4': 1, '5': 5, '10': 'limit'},
    {'1': 'page', '3': 2, '4': 1, '5': 5, '10': 'page'},
  ],
};

/// Descriptor for `ListApplicationsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listApplicationsRequestDescriptor =
    $convert.base64Decode(
        'ChdMaXN0QXBwbGljYXRpb25zUmVxdWVzdBIUCgVsaW1pdBgBIAEoBVIFbGltaXQSEgoEcGFnZR'
        'gCIAEoBVIEcGFnZQ==');

@$core.Deprecated('Use listApplicationsResponseDescriptor instead')
const ListApplicationsResponse$json = {
  '1': 'ListApplicationsResponse',
  '2': [
    {
      '1': 'applications',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.management_services.v1.Application',
      '10': 'applications'
    },
    {'1': 'count', '3': 2, '4': 1, '5': 3, '10': 'count'},
  ],
};

/// Descriptor for `ListApplicationsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listApplicationsResponseDescriptor = $convert.base64Decode(
    'ChhMaXN0QXBwbGljYXRpb25zUmVzcG9uc2USRwoMYXBwbGljYXRpb25zGAEgAygLMiMubWFuYW'
    'dlbWVudF9zZXJ2aWNlcy52MS5BcHBsaWNhdGlvblIMYXBwbGljYXRpb25zEhQKBWNvdW50GAIg'
    'ASgDUgVjb3VudA==');

@$core.Deprecated('Use applicationDescriptor instead')
const Application$json = {
  '1': 'Application',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {
      '1': 'created_at',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'createdAt'
    },
    {
      '1': 'updated_at',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'updatedAt'
    },
    {'1': 'name', '3': 4, '4': 1, '5': 9, '8': {}, '10': 'name'},
    {'1': 'openid_issuer_url', '3': 5, '4': 1, '5': 9, '10': 'openidIssuerUrl'},
    {
      '1': 'policy_file_content',
      '3': 6,
      '4': 1,
      '5': 9,
      '10': 'policyFileContent'
    },
  ],
};

/// Descriptor for `Application`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List applicationDescriptor = $convert.base64Decode(
    'CgtBcHBsaWNhdGlvbhIOCgJpZBgBIAEoCVICaWQSOQoKY3JlYXRlZF9hdBgCIAEoCzIaLmdvb2'
    'dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCWNyZWF0ZWRBdBI5Cgp1cGRhdGVkX2F0GAMgASgLMhou'
    'Z29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIJdXBkYXRlZEF0Eh0KBG5hbWUYBCABKAlCCbpIBn'
    'IEEAEYFFIEbmFtZRIqChFvcGVuaWRfaXNzdWVyX3VybBgFIAEoCVIPb3BlbmlkSXNzdWVyVXJs'
    'Ei4KE3BvbGljeV9maWxlX2NvbnRlbnQYBiABKAlSEXBvbGljeUZpbGVDb250ZW50');

@$core.Deprecated('Use createApplicationRequestDescriptor instead')
const CreateApplicationRequest$json = {
  '1': 'CreateApplicationRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'openid_issuer_url', '3': 2, '4': 1, '5': 9, '10': 'openidIssuerUrl'},
    {
      '1': 'policy_file_content',
      '3': 3,
      '4': 1,
      '5': 9,
      '10': 'policyFileContent'
    },
  ],
};

/// Descriptor for `CreateApplicationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createApplicationRequestDescriptor = $convert.base64Decode(
    'ChhDcmVhdGVBcHBsaWNhdGlvblJlcXVlc3QSEgoEbmFtZRgBIAEoCVIEbmFtZRIqChFvcGVuaW'
    'RfaXNzdWVyX3VybBgCIAEoCVIPb3BlbmlkSXNzdWVyVXJsEi4KE3BvbGljeV9maWxlX2NvbnRl'
    'bnQYAyABKAlSEXBvbGljeUZpbGVDb250ZW50');

@$core.Deprecated('Use createApplicationResponseDescriptor instead')
const CreateApplicationResponse$json = {
  '1': 'CreateApplicationResponse',
  '2': [
    {
      '1': 'application',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.management_services.v1.Application',
      '10': 'application'
    },
  ],
};

/// Descriptor for `CreateApplicationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createApplicationResponseDescriptor =
    $convert.base64Decode(
        'ChlDcmVhdGVBcHBsaWNhdGlvblJlc3BvbnNlEkUKC2FwcGxpY2F0aW9uGAEgASgLMiMubWFuYW'
        'dlbWVudF9zZXJ2aWNlcy52MS5BcHBsaWNhdGlvblILYXBwbGljYXRpb24=');

@$core.Deprecated('Use updateApplicationRequestDescriptor instead')
const UpdateApplicationRequest$json = {
  '1': 'UpdateApplicationRequest',
  '2': [
    {'1': 'application_id', '3': 1, '4': 1, '5': 9, '10': 'applicationId'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'openid_issuer_url', '3': 3, '4': 1, '5': 9, '10': 'openidIssuerUrl'},
    {
      '1': 'policy_file_content',
      '3': 4,
      '4': 1,
      '5': 9,
      '10': 'policyFileContent'
    },
  ],
};

/// Descriptor for `UpdateApplicationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateApplicationRequestDescriptor = $convert.base64Decode(
    'ChhVcGRhdGVBcHBsaWNhdGlvblJlcXVlc3QSJQoOYXBwbGljYXRpb25faWQYASABKAlSDWFwcG'
    'xpY2F0aW9uSWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIqChFvcGVuaWRfaXNzdWVyX3VybBgDIAEo'
    'CVIPb3BlbmlkSXNzdWVyVXJsEi4KE3BvbGljeV9maWxlX2NvbnRlbnQYBCABKAlSEXBvbGljeU'
    'ZpbGVDb250ZW50');

@$core.Deprecated('Use updateApplicationResponseDescriptor instead')
const UpdateApplicationResponse$json = {
  '1': 'UpdateApplicationResponse',
  '2': [
    {
      '1': 'application',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.management_services.v1.Application',
      '10': 'application'
    },
  ],
};

/// Descriptor for `UpdateApplicationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateApplicationResponseDescriptor =
    $convert.base64Decode(
        'ChlVcGRhdGVBcHBsaWNhdGlvblJlc3BvbnNlEkUKC2FwcGxpY2F0aW9uGAEgASgLMiMubWFuYW'
        'dlbWVudF9zZXJ2aWNlcy52MS5BcHBsaWNhdGlvblILYXBwbGljYXRpb24=');

@$core.Deprecated('Use deployApplicationRequestDescriptor instead')
const DeployApplicationRequest$json = {
  '1': 'DeployApplicationRequest',
  '2': [
    {'1': 'application_id', '3': 1, '4': 1, '5': 9, '10': 'applicationId'},
  ],
};

/// Descriptor for `DeployApplicationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deployApplicationRequestDescriptor =
    $convert.base64Decode(
        'ChhEZXBsb3lBcHBsaWNhdGlvblJlcXVlc3QSJQoOYXBwbGljYXRpb25faWQYASABKAlSDWFwcG'
        'xpY2F0aW9uSWQ=');

@$core.Deprecated('Use deployApplicationResponseDescriptor instead')
const DeployApplicationResponse$json = {
  '1': 'DeployApplicationResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeployApplicationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deployApplicationResponseDescriptor =
    $convert.base64Decode(
        'ChlEZXBsb3lBcHBsaWNhdGlvblJlc3BvbnNlEg4KAmlkGAEgASgJUgJpZA==');

@$core.Deprecated('Use deleteApplicationRequestDescriptor instead')
const DeleteApplicationRequest$json = {
  '1': 'DeleteApplicationRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeleteApplicationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteApplicationRequestDescriptor = $convert
    .base64Decode('ChhEZWxldGVBcHBsaWNhdGlvblJlcXVlc3QSDgoCaWQYASABKAlSAmlk');

@$core.Deprecated('Use deleteApplicationResponseDescriptor instead')
const DeleteApplicationResponse$json = {
  '1': 'DeleteApplicationResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeleteApplicationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteApplicationResponseDescriptor =
    $convert.base64Decode(
        'ChlEZWxldGVBcHBsaWNhdGlvblJlc3BvbnNlEg4KAmlkGAEgASgJUgJpZA==');

@$core.Deprecated('Use getApplicationRequestDescriptor instead')
const GetApplicationRequest$json = {
  '1': 'GetApplicationRequest',
  '2': [
    {'1': 'application_id', '3': 1, '4': 1, '5': 9, '10': 'applicationId'},
  ],
};

/// Descriptor for `GetApplicationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getApplicationRequestDescriptor = $convert.base64Decode(
    'ChVHZXRBcHBsaWNhdGlvblJlcXVlc3QSJQoOYXBwbGljYXRpb25faWQYASABKAlSDWFwcGxpY2'
    'F0aW9uSWQ=');

@$core.Deprecated('Use getApplicationResponseDescriptor instead')
const GetApplicationResponse$json = {
  '1': 'GetApplicationResponse',
  '2': [
    {
      '1': 'application',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.management_services.v1.Application',
      '10': 'application'
    },
  ],
};

/// Descriptor for `GetApplicationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getApplicationResponseDescriptor =
    $convert.base64Decode(
        'ChZHZXRBcHBsaWNhdGlvblJlc3BvbnNlEkUKC2FwcGxpY2F0aW9uGAEgASgLMiMubWFuYWdlbW'
        'VudF9zZXJ2aWNlcy52MS5BcHBsaWNhdGlvblILYXBwbGljYXRpb24=');

@$core.Deprecated('Use listApplicationDomainsRequestDescriptor instead')
const ListApplicationDomainsRequest$json = {
  '1': 'ListApplicationDomainsRequest',
  '2': [
    {'1': 'limit', '3': 1, '4': 1, '5': 5, '10': 'limit'},
    {'1': 'page', '3': 2, '4': 1, '5': 5, '10': 'page'},
    {'1': 'application_id', '3': 3, '4': 1, '5': 9, '10': 'applicationId'},
  ],
};

/// Descriptor for `ListApplicationDomainsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listApplicationDomainsRequestDescriptor =
    $convert.base64Decode(
        'Ch1MaXN0QXBwbGljYXRpb25Eb21haW5zUmVxdWVzdBIUCgVsaW1pdBgBIAEoBVIFbGltaXQSEg'
        'oEcGFnZRgCIAEoBVIEcGFnZRIlCg5hcHBsaWNhdGlvbl9pZBgDIAEoCVINYXBwbGljYXRpb25J'
        'ZA==');

@$core.Deprecated('Use listApplicationDomainsResponseDescriptor instead')
const ListApplicationDomainsResponse$json = {
  '1': 'ListApplicationDomainsResponse',
  '2': [
    {
      '1': 'domains',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.management_services.v1.Domain',
      '10': 'domains'
    },
    {'1': 'count', '3': 2, '4': 1, '5': 3, '10': 'count'},
  ],
};

/// Descriptor for `ListApplicationDomainsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listApplicationDomainsResponseDescriptor =
    $convert.base64Decode(
        'Ch5MaXN0QXBwbGljYXRpb25Eb21haW5zUmVzcG9uc2USOAoHZG9tYWlucxgBIAMoCzIeLm1hbm'
        'FnZW1lbnRfc2VydmljZXMudjEuRG9tYWluUgdkb21haW5zEhQKBWNvdW50GAIgASgDUgVjb3Vu'
        'dA==');

@$core.Deprecated('Use streamApplicationDomainsRequestDescriptor instead')
const StreamApplicationDomainsRequest$json = {
  '1': 'StreamApplicationDomainsRequest',
  '2': [
    {'1': 'application_id', '3': 1, '4': 1, '5': 9, '10': 'applicationId'},
  ],
};

/// Descriptor for `StreamApplicationDomainsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamApplicationDomainsRequestDescriptor =
    $convert.base64Decode(
        'Ch9TdHJlYW1BcHBsaWNhdGlvbkRvbWFpbnNSZXF1ZXN0EiUKDmFwcGxpY2F0aW9uX2lkGAEgAS'
        'gJUg1hcHBsaWNhdGlvbklk');

@$core.Deprecated('Use streamApplicationDomainsResponseDescriptor instead')
const StreamApplicationDomainsResponse$json = {
  '1': 'StreamApplicationDomainsResponse',
  '2': [
    {
      '1': 'domain',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.management_services.v1.Domain',
      '10': 'domain'
    },
  ],
};

/// Descriptor for `StreamApplicationDomainsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamApplicationDomainsResponseDescriptor =
    $convert.base64Decode(
        'CiBTdHJlYW1BcHBsaWNhdGlvbkRvbWFpbnNSZXNwb25zZRI2CgZkb21haW4YASABKAsyHi5tYW'
        '5hZ2VtZW50X3NlcnZpY2VzLnYxLkRvbWFpblIGZG9tYWlu');

@$core.Deprecated('Use domainDescriptor instead')
const Domain$json = {
  '1': 'Domain',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {
      '1': 'created_at',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'createdAt'
    },
    {
      '1': 'updated_at',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'updatedAt'
    },
    {'1': 'domain_name', '3': 4, '4': 1, '5': 9, '10': 'domainName'},
    {'1': 'soa_email', '3': 5, '4': 1, '5': 9, '10': 'soaEmail'},
    {'1': 'txt_record', '3': 6, '4': 1, '5': 9, '10': 'txtRecord'},
    {
      '1': 'status',
      '3': 7,
      '4': 1,
      '5': 14,
      '6': '.management_services.v1.DomainStatus',
      '10': 'status'
    },
  ],
};

/// Descriptor for `Domain`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List domainDescriptor = $convert.base64Decode(
    'CgZEb21haW4SDgoCaWQYASABKAlSAmlkEjkKCmNyZWF0ZWRfYXQYAiABKAsyGi5nb29nbGUucH'
    'JvdG9idWYuVGltZXN0YW1wUgljcmVhdGVkQXQSOQoKdXBkYXRlZF9hdBgDIAEoCzIaLmdvb2ds'
    'ZS5wcm90b2J1Zi5UaW1lc3RhbXBSCXVwZGF0ZWRBdBIfCgtkb21haW5fbmFtZRgEIAEoCVIKZG'
    '9tYWluTmFtZRIbCglzb2FfZW1haWwYBSABKAlSCHNvYUVtYWlsEh0KCnR4dF9yZWNvcmQYBiAB'
    'KAlSCXR4dFJlY29yZBI8CgZzdGF0dXMYByABKA4yJC5tYW5hZ2VtZW50X3NlcnZpY2VzLnYxLk'
    'RvbWFpblN0YXR1c1IGc3RhdHVz');

@$core.Deprecated('Use createDomainRequestDescriptor instead')
const CreateDomainRequest$json = {
  '1': 'CreateDomainRequest',
  '2': [
    {'1': 'application_id', '3': 1, '4': 1, '5': 9, '10': 'applicationId'},
    {'1': 'domain_name', '3': 2, '4': 1, '5': 9, '10': 'domainName'},
    {'1': 'soa_email', '3': 3, '4': 1, '5': 9, '10': 'soaEmail'},
  ],
};

/// Descriptor for `CreateDomainRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createDomainRequestDescriptor = $convert.base64Decode(
    'ChNDcmVhdGVEb21haW5SZXF1ZXN0EiUKDmFwcGxpY2F0aW9uX2lkGAEgASgJUg1hcHBsaWNhdG'
    'lvbklkEh8KC2RvbWFpbl9uYW1lGAIgASgJUgpkb21haW5OYW1lEhsKCXNvYV9lbWFpbBgDIAEo'
    'CVIIc29hRW1haWw=');

@$core.Deprecated('Use createDomainResponseDescriptor instead')
const CreateDomainResponse$json = {
  '1': 'CreateDomainResponse',
  '2': [
    {
      '1': 'domain',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.management_services.v1.Domain',
      '10': 'domain'
    },
  ],
};

/// Descriptor for `CreateDomainResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createDomainResponseDescriptor = $convert.base64Decode(
    'ChRDcmVhdGVEb21haW5SZXNwb25zZRI2CgZkb21haW4YASABKAsyHi5tYW5hZ2VtZW50X3Nlcn'
    'ZpY2VzLnYxLkRvbWFpblIGZG9tYWlu');

@$core.Deprecated('Use updateDomainRequestDescriptor instead')
const UpdateDomainRequest$json = {
  '1': 'UpdateDomainRequest',
  '2': [
    {'1': 'domain_id', '3': 1, '4': 1, '5': 9, '10': 'domainId'},
    {'1': 'domain_name', '3': 2, '4': 1, '5': 9, '10': 'domainName'},
    {'1': 'soa_email', '3': 3, '4': 1, '5': 9, '10': 'soaEmail'},
  ],
};

/// Descriptor for `UpdateDomainRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateDomainRequestDescriptor = $convert.base64Decode(
    'ChNVcGRhdGVEb21haW5SZXF1ZXN0EhsKCWRvbWFpbl9pZBgBIAEoCVIIZG9tYWluSWQSHwoLZG'
    '9tYWluX25hbWUYAiABKAlSCmRvbWFpbk5hbWUSGwoJc29hX2VtYWlsGAMgASgJUghzb2FFbWFp'
    'bA==');

@$core.Deprecated('Use updateDomainResponseDescriptor instead')
const UpdateDomainResponse$json = {
  '1': 'UpdateDomainResponse',
  '2': [
    {
      '1': 'domain',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.management_services.v1.Domain',
      '10': 'domain'
    },
  ],
};

/// Descriptor for `UpdateDomainResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateDomainResponseDescriptor = $convert.base64Decode(
    'ChRVcGRhdGVEb21haW5SZXNwb25zZRI2CgZkb21haW4YASABKAsyHi5tYW5hZ2VtZW50X3Nlcn'
    'ZpY2VzLnYxLkRvbWFpblIGZG9tYWlu');

@$core.Deprecated('Use getDomainRequestDescriptor instead')
const GetDomainRequest$json = {
  '1': 'GetDomainRequest',
  '2': [
    {'1': 'domain_id', '3': 1, '4': 1, '5': 9, '10': 'domainId'},
  ],
};

/// Descriptor for `GetDomainRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getDomainRequestDescriptor = $convert.base64Decode(
    'ChBHZXREb21haW5SZXF1ZXN0EhsKCWRvbWFpbl9pZBgBIAEoCVIIZG9tYWluSWQ=');

@$core.Deprecated('Use getDomainResponseDescriptor instead')
const GetDomainResponse$json = {
  '1': 'GetDomainResponse',
  '2': [
    {
      '1': 'domain',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.management_services.v1.Domain',
      '10': 'domain'
    },
  ],
};

/// Descriptor for `GetDomainResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getDomainResponseDescriptor = $convert.base64Decode(
    'ChFHZXREb21haW5SZXNwb25zZRI2CgZkb21haW4YASABKAsyHi5tYW5hZ2VtZW50X3NlcnZpY2'
    'VzLnYxLkRvbWFpblIGZG9tYWlu');

@$core.Deprecated('Use verifyDomainRequestDescriptor instead')
const VerifyDomainRequest$json = {
  '1': 'VerifyDomainRequest',
  '2': [
    {'1': 'domain_id', '3': 1, '4': 1, '5': 9, '10': 'domainId'},
  ],
};

/// Descriptor for `VerifyDomainRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List verifyDomainRequestDescriptor =
    $convert.base64Decode(
        'ChNWZXJpZnlEb21haW5SZXF1ZXN0EhsKCWRvbWFpbl9pZBgBIAEoCVIIZG9tYWluSWQ=');

@$core.Deprecated('Use verifyDomainResponseDescriptor instead')
const VerifyDomainResponse$json = {
  '1': 'VerifyDomainResponse',
};

/// Descriptor for `VerifyDomainResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List verifyDomainResponseDescriptor =
    $convert.base64Decode('ChRWZXJpZnlEb21haW5SZXNwb25zZQ==');

@$core.Deprecated('Use deleteDomainRequestDescriptor instead')
const DeleteDomainRequest$json = {
  '1': 'DeleteDomainRequest',
  '2': [
    {'1': 'domain_id', '3': 1, '4': 1, '5': 9, '10': 'domainId'},
  ],
};

/// Descriptor for `DeleteDomainRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteDomainRequestDescriptor =
    $convert.base64Decode(
        'ChNEZWxldGVEb21haW5SZXF1ZXN0EhsKCWRvbWFpbl9pZBgBIAEoCVIIZG9tYWluSWQ=');

@$core.Deprecated('Use deleteDomainResponseDescriptor instead')
const DeleteDomainResponse$json = {
  '1': 'DeleteDomainResponse',
};

/// Descriptor for `DeleteDomainResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteDomainResponseDescriptor =
    $convert.base64Decode('ChREZWxldGVEb21haW5SZXNwb25zZQ==');
