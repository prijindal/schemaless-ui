// This is a generated file - do not edit.
//
// Generated from management/services.proto.

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
    {'1': 'DomainActivated', '2': 0},
    {'1': 'DomainDeactivated', '2': 1},
    {'1': 'DomainUnverified', '2': 2},
  ],
};

/// Descriptor for `DomainStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List domainStatusDescriptor = $convert.base64Decode(
    'CgxEb21haW5TdGF0dXMSEwoPRG9tYWluQWN0aXZhdGVkEAASFQoRRG9tYWluRGVhY3RpdmF0ZW'
    'QQARIUChBEb21haW5VbnZlcmlmaWVkEAI=');

@$core.Deprecated('Use cumulativeHealthResponseDescriptor instead')
const CumulativeHealthResponse$json = {
  '1': 'CumulativeHealthResponse',
  '2': [
    {'1': 'DB', '3': 1, '4': 1, '5': 8, '10': 'DB'},
    {'1': 'PubSub', '3': 2, '4': 1, '5': 8, '10': 'PubSub'},
    {'1': 'Docker', '3': 3, '4': 1, '5': 8, '10': 'Docker'},
    {'1': 'Cache', '3': 4, '4': 1, '5': 8, '10': 'Cache'},
    {
      '1': 'Uptime',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Duration',
      '10': 'Uptime'
    },
    {
      '1': 'CurrentTime',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'CurrentTime'
    },
    {'1': 'Hostname', '3': 7, '4': 1, '5': 9, '10': 'Hostname'},
  ],
};

/// Descriptor for `CumulativeHealthResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cumulativeHealthResponseDescriptor = $convert.base64Decode(
    'ChhDdW11bGF0aXZlSGVhbHRoUmVzcG9uc2USDgoCREIYASABKAhSAkRCEhYKBlB1YlN1YhgCIA'
    'EoCFIGUHViU3ViEhYKBkRvY2tlchgDIAEoCFIGRG9ja2VyEhQKBUNhY2hlGAQgASgIUgVDYWNo'
    'ZRIxCgZVcHRpbWUYBSABKAsyGS5nb29nbGUucHJvdG9idWYuRHVyYXRpb25SBlVwdGltZRI8Cg'
    'tDdXJyZW50VGltZRgGIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSC0N1cnJlbnRU'
    'aW1lEhoKCEhvc3RuYW1lGAcgASgJUghIb3N0bmFtZQ==');

@$core.Deprecated('Use verifyUserResponseDescriptor instead')
const VerifyUserResponse$json = {
  '1': 'VerifyUserResponse',
  '2': [
    {'1': 'ID', '3': 1, '4': 1, '5': 9, '10': 'ID'},
    {'1': 'IsAdmin', '3': 2, '4': 1, '5': 8, '10': 'IsAdmin'},
  ],
};

/// Descriptor for `VerifyUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List verifyUserResponseDescriptor = $convert.base64Decode(
    'ChJWZXJpZnlVc2VyUmVzcG9uc2USDgoCSUQYASABKAlSAklEEhgKB0lzQWRtaW4YAiABKAhSB0'
    'lzQWRtaW4=');

@$core.Deprecated('Use listApplicationsRequestDescriptor instead')
const ListApplicationsRequest$json = {
  '1': 'ListApplicationsRequest',
  '2': [
    {'1': 'Limit', '3': 1, '4': 1, '5': 5, '10': 'Limit'},
    {'1': 'Page', '3': 2, '4': 1, '5': 5, '10': 'Page'},
  ],
};

/// Descriptor for `ListApplicationsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listApplicationsRequestDescriptor =
    $convert.base64Decode(
        'ChdMaXN0QXBwbGljYXRpb25zUmVxdWVzdBIUCgVMaW1pdBgBIAEoBVIFTGltaXQSEgoEUGFnZR'
        'gCIAEoBVIEUGFnZQ==');

@$core.Deprecated('Use listApplicationsResponseDescriptor instead')
const ListApplicationsResponse$json = {
  '1': 'ListApplicationsResponse',
  '2': [
    {
      '1': 'Applications',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.management_services.Application',
      '10': 'Applications'
    },
    {'1': 'Count', '3': 2, '4': 1, '5': 3, '10': 'Count'},
  ],
};

/// Descriptor for `ListApplicationsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listApplicationsResponseDescriptor = $convert.base64Decode(
    'ChhMaXN0QXBwbGljYXRpb25zUmVzcG9uc2USRAoMQXBwbGljYXRpb25zGAEgAygLMiAubWFuYW'
    'dlbWVudF9zZXJ2aWNlcy5BcHBsaWNhdGlvblIMQXBwbGljYXRpb25zEhQKBUNvdW50GAIgASgD'
    'UgVDb3VudA==');

@$core.Deprecated('Use applicationDescriptor instead')
const Application$json = {
  '1': 'Application',
  '2': [
    {'1': 'ID', '3': 1, '4': 1, '5': 9, '10': 'ID'},
    {
      '1': 'CreatedAt',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'CreatedAt'
    },
    {
      '1': 'UpdatedAt',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'UpdatedAt'
    },
    {'1': 'Name', '3': 4, '4': 1, '5': 9, '10': 'Name'},
  ],
};

/// Descriptor for `Application`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List applicationDescriptor = $convert.base64Decode(
    'CgtBcHBsaWNhdGlvbhIOCgJJRBgBIAEoCVICSUQSOAoJQ3JlYXRlZEF0GAIgASgLMhouZ29vZ2'
    'xlLnByb3RvYnVmLlRpbWVzdGFtcFIJQ3JlYXRlZEF0EjgKCVVwZGF0ZWRBdBgDIAEoCzIaLmdv'
    'b2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCVVwZGF0ZWRBdBISCgROYW1lGAQgASgJUgROYW1l');

@$core.Deprecated('Use createApplicationRequestDescriptor instead')
const CreateApplicationRequest$json = {
  '1': 'CreateApplicationRequest',
  '2': [
    {'1': 'Name', '3': 1, '4': 1, '5': 9, '10': 'Name'},
  ],
};

/// Descriptor for `CreateApplicationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createApplicationRequestDescriptor =
    $convert.base64Decode(
        'ChhDcmVhdGVBcHBsaWNhdGlvblJlcXVlc3QSEgoETmFtZRgBIAEoCVIETmFtZQ==');

@$core.Deprecated('Use createApplicationResponseDescriptor instead')
const CreateApplicationResponse$json = {
  '1': 'CreateApplicationResponse',
  '2': [
    {'1': 'ID', '3': 1, '4': 1, '5': 9, '10': 'ID'},
  ],
};

/// Descriptor for `CreateApplicationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createApplicationResponseDescriptor =
    $convert.base64Decode(
        'ChlDcmVhdGVBcHBsaWNhdGlvblJlc3BvbnNlEg4KAklEGAEgASgJUgJJRA==');

@$core.Deprecated('Use deleteApplicationRequestDescriptor instead')
const DeleteApplicationRequest$json = {
  '1': 'DeleteApplicationRequest',
  '2': [
    {'1': 'ID', '3': 1, '4': 1, '5': 9, '10': 'ID'},
  ],
};

/// Descriptor for `DeleteApplicationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteApplicationRequestDescriptor = $convert
    .base64Decode('ChhEZWxldGVBcHBsaWNhdGlvblJlcXVlc3QSDgoCSUQYASABKAlSAklE');

@$core.Deprecated('Use getApplicationRequestDescriptor instead')
const GetApplicationRequest$json = {
  '1': 'GetApplicationRequest',
  '2': [
    {'1': 'ApplicationID', '3': 1, '4': 1, '5': 9, '10': 'ApplicationID'},
  ],
};

/// Descriptor for `GetApplicationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getApplicationRequestDescriptor = $convert.base64Decode(
    'ChVHZXRBcHBsaWNhdGlvblJlcXVlc3QSJAoNQXBwbGljYXRpb25JRBgBIAEoCVINQXBwbGljYX'
    'Rpb25JRA==');

@$core.Deprecated('Use listApplicationDomainRequestDescriptor instead')
const ListApplicationDomainRequest$json = {
  '1': 'ListApplicationDomainRequest',
  '2': [
    {'1': 'Limit', '3': 1, '4': 1, '5': 5, '10': 'Limit'},
    {'1': 'Page', '3': 2, '4': 1, '5': 5, '10': 'Page'},
    {'1': 'ApplicationID', '3': 3, '4': 1, '5': 9, '10': 'ApplicationID'},
  ],
};

/// Descriptor for `ListApplicationDomainRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listApplicationDomainRequestDescriptor =
    $convert.base64Decode(
        'ChxMaXN0QXBwbGljYXRpb25Eb21haW5SZXF1ZXN0EhQKBUxpbWl0GAEgASgFUgVMaW1pdBISCg'
        'RQYWdlGAIgASgFUgRQYWdlEiQKDUFwcGxpY2F0aW9uSUQYAyABKAlSDUFwcGxpY2F0aW9uSUQ=');

@$core.Deprecated('Use listApplicationDomainResponseDescriptor instead')
const ListApplicationDomainResponse$json = {
  '1': 'ListApplicationDomainResponse',
  '2': [
    {
      '1': 'Domains',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.management_services.Domain',
      '10': 'Domains'
    },
    {'1': 'Count', '3': 2, '4': 1, '5': 3, '10': 'Count'},
  ],
};

/// Descriptor for `ListApplicationDomainResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listApplicationDomainResponseDescriptor =
    $convert.base64Decode(
        'Ch1MaXN0QXBwbGljYXRpb25Eb21haW5SZXNwb25zZRI1CgdEb21haW5zGAEgAygLMhsubWFuYW'
        'dlbWVudF9zZXJ2aWNlcy5Eb21haW5SB0RvbWFpbnMSFAoFQ291bnQYAiABKANSBUNvdW50');

@$core.Deprecated('Use streamApplicationDomainRequestDescriptor instead')
const StreamApplicationDomainRequest$json = {
  '1': 'StreamApplicationDomainRequest',
  '2': [
    {'1': 'ApplicationID', '3': 1, '4': 1, '5': 9, '10': 'ApplicationID'},
  ],
};

/// Descriptor for `StreamApplicationDomainRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamApplicationDomainRequestDescriptor =
    $convert.base64Decode(
        'Ch5TdHJlYW1BcHBsaWNhdGlvbkRvbWFpblJlcXVlc3QSJAoNQXBwbGljYXRpb25JRBgBIAEoCV'
        'INQXBwbGljYXRpb25JRA==');

@$core.Deprecated('Use domainDescriptor instead')
const Domain$json = {
  '1': 'Domain',
  '2': [
    {'1': 'ID', '3': 1, '4': 1, '5': 9, '10': 'ID'},
    {
      '1': 'CreatedAt',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'CreatedAt'
    },
    {
      '1': 'UpdatedAt',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'UpdatedAt'
    },
    {'1': 'DomainName', '3': 4, '4': 1, '5': 9, '10': 'DomainName'},
    {'1': 'SoaEmail', '3': 5, '4': 1, '5': 9, '10': 'SoaEmail'},
    {'1': 'TxtRecord', '3': 6, '4': 1, '5': 9, '10': 'TxtRecord'},
    {
      '1': 'Status',
      '3': 7,
      '4': 1,
      '5': 14,
      '6': '.management_services.DomainStatus',
      '10': 'Status'
    },
  ],
};

/// Descriptor for `Domain`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List domainDescriptor = $convert.base64Decode(
    'CgZEb21haW4SDgoCSUQYASABKAlSAklEEjgKCUNyZWF0ZWRBdBgCIAEoCzIaLmdvb2dsZS5wcm'
    '90b2J1Zi5UaW1lc3RhbXBSCUNyZWF0ZWRBdBI4CglVcGRhdGVkQXQYAyABKAsyGi5nb29nbGUu'
    'cHJvdG9idWYuVGltZXN0YW1wUglVcGRhdGVkQXQSHgoKRG9tYWluTmFtZRgEIAEoCVIKRG9tYW'
    'luTmFtZRIaCghTb2FFbWFpbBgFIAEoCVIIU29hRW1haWwSHAoJVHh0UmVjb3JkGAYgASgJUglU'
    'eHRSZWNvcmQSOQoGU3RhdHVzGAcgASgOMiEubWFuYWdlbWVudF9zZXJ2aWNlcy5Eb21haW5TdG'
    'F0dXNSBlN0YXR1cw==');

@$core.Deprecated('Use createDomainRequestDescriptor instead')
const CreateDomainRequest$json = {
  '1': 'CreateDomainRequest',
  '2': [
    {'1': 'ApplicationID', '3': 1, '4': 1, '5': 9, '10': 'ApplicationID'},
    {'1': 'DomainName', '3': 2, '4': 1, '5': 9, '10': 'DomainName'},
    {'1': 'SoaEmail', '3': 3, '4': 1, '5': 9, '10': 'SoaEmail'},
  ],
};

/// Descriptor for `CreateDomainRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createDomainRequestDescriptor = $convert.base64Decode(
    'ChNDcmVhdGVEb21haW5SZXF1ZXN0EiQKDUFwcGxpY2F0aW9uSUQYASABKAlSDUFwcGxpY2F0aW'
    '9uSUQSHgoKRG9tYWluTmFtZRgCIAEoCVIKRG9tYWluTmFtZRIaCghTb2FFbWFpbBgDIAEoCVII'
    'U29hRW1haWw=');

@$core.Deprecated('Use updateDomainRequestDescriptor instead')
const UpdateDomainRequest$json = {
  '1': 'UpdateDomainRequest',
  '2': [
    {'1': 'DomainID', '3': 1, '4': 1, '5': 9, '10': 'DomainID'},
    {'1': 'DomainName', '3': 2, '4': 1, '5': 9, '10': 'DomainName'},
    {'1': 'SoaEmail', '3': 3, '4': 1, '5': 9, '10': 'SoaEmail'},
  ],
};

/// Descriptor for `UpdateDomainRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateDomainRequestDescriptor = $convert.base64Decode(
    'ChNVcGRhdGVEb21haW5SZXF1ZXN0EhoKCERvbWFpbklEGAEgASgJUghEb21haW5JRBIeCgpEb2'
    '1haW5OYW1lGAIgASgJUgpEb21haW5OYW1lEhoKCFNvYUVtYWlsGAMgASgJUghTb2FFbWFpbA==');

@$core.Deprecated('Use getDomainRequestDescriptor instead')
const GetDomainRequest$json = {
  '1': 'GetDomainRequest',
  '2': [
    {'1': 'DomainID', '3': 1, '4': 1, '5': 9, '10': 'DomainID'},
  ],
};

/// Descriptor for `GetDomainRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getDomainRequestDescriptor = $convert.base64Decode(
    'ChBHZXREb21haW5SZXF1ZXN0EhoKCERvbWFpbklEGAEgASgJUghEb21haW5JRA==');
