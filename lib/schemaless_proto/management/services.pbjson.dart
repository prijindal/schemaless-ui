//
//  Generated code. Do not modify.
//  source: management/services.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

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
    {'1': 'Cache', '3': 3, '4': 1, '5': 8, '10': 'Cache'},
    {'1': 'Uptime', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Duration', '10': 'Uptime'},
    {'1': 'CurrentTime', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'CurrentTime'},
    {'1': 'Hostname', '3': 6, '4': 1, '5': 9, '10': 'Hostname'},
  ],
};

/// Descriptor for `CumulativeHealthResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cumulativeHealthResponseDescriptor = $convert.base64Decode(
    'ChhDdW11bGF0aXZlSGVhbHRoUmVzcG9uc2USDgoCREIYASABKAhSAkRCEhYKBlB1YlN1YhgCIA'
    'EoCFIGUHViU3ViEhQKBUNhY2hlGAMgASgIUgVDYWNoZRIxCgZVcHRpbWUYBCABKAsyGS5nb29n'
    'bGUucHJvdG9idWYuRHVyYXRpb25SBlVwdGltZRI8CgtDdXJyZW50VGltZRgFIAEoCzIaLmdvb2'
    'dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSC0N1cnJlbnRUaW1lEhoKCEhvc3RuYW1lGAYgASgJUghI'
    'b3N0bmFtZQ==');

@$core.Deprecated('Use registerResponseDescriptor instead')
const RegisterResponse$json = {
  '1': 'RegisterResponse',
  '2': [
    {'1': 'ID', '3': 1, '4': 1, '5': 9, '10': 'ID'},
    {'1': 'IsAdmin', '3': 2, '4': 1, '5': 8, '10': 'IsAdmin'},
  ],
};

/// Descriptor for `RegisterResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerResponseDescriptor = $convert.base64Decode(
    'ChBSZWdpc3RlclJlc3BvbnNlEg4KAklEGAEgASgJUgJJRBIYCgdJc0FkbWluGAIgASgIUgdJc0'
    'FkbWlu');

@$core.Deprecated('Use initializedResponseDescriptor instead')
const InitializedResponse$json = {
  '1': 'InitializedResponse',
  '2': [
    {'1': 'Initialized', '3': 1, '4': 1, '5': 8, '10': 'Initialized'},
  ],
};

/// Descriptor for `InitializedResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List initializedResponseDescriptor = $convert.base64Decode(
    'ChNJbml0aWFsaXplZFJlc3BvbnNlEiAKC0luaXRpYWxpemVkGAEgASgIUgtJbml0aWFsaXplZA'
    '==');

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

@$core.Deprecated('Use managementUserDescriptor instead')
const ManagementUser$json = {
  '1': 'ManagementUser',
  '2': [
    {'1': 'ID', '3': 1, '4': 1, '5': 9, '10': 'ID'},
    {'1': 'CreatedAt', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'CreatedAt'},
    {'1': 'UpdatedAt', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'UpdatedAt'},
    {'1': 'Email', '3': 4, '4': 1, '5': 9, '10': 'Email'},
    {'1': 'Status', '3': 5, '4': 1, '5': 14, '6': '.types.UserStatus', '10': 'Status'},
    {'1': 'IsAdmin', '3': 6, '4': 1, '5': 8, '10': 'IsAdmin'},
  ],
};

/// Descriptor for `ManagementUser`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List managementUserDescriptor = $convert.base64Decode(
    'Cg5NYW5hZ2VtZW50VXNlchIOCgJJRBgBIAEoCVICSUQSOAoJQ3JlYXRlZEF0GAIgASgLMhouZ2'
    '9vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIJQ3JlYXRlZEF0EjgKCVVwZGF0ZWRBdBgDIAEoCzIa'
    'Lmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCVVwZGF0ZWRBdBIUCgVFbWFpbBgEIAEoCVIFRW'
    '1haWwSKQoGU3RhdHVzGAUgASgOMhEudHlwZXMuVXNlclN0YXR1c1IGU3RhdHVzEhgKB0lzQWRt'
    'aW4YBiABKAhSB0lzQWRtaW4=');

@$core.Deprecated('Use toggleUserApprovalRequestDescriptor instead')
const ToggleUserApprovalRequest$json = {
  '1': 'ToggleUserApprovalRequest',
  '2': [
    {'1': 'ID', '3': 1, '4': 1, '5': 9, '10': 'ID'},
    {'1': 'Approve', '3': 2, '4': 1, '5': 8, '10': 'Approve'},
  ],
};

/// Descriptor for `ToggleUserApprovalRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List toggleUserApprovalRequestDescriptor = $convert.base64Decode(
    'ChlUb2dnbGVVc2VyQXBwcm92YWxSZXF1ZXN0Eg4KAklEGAEgASgJUgJJRBIYCgdBcHByb3ZlGA'
    'IgASgIUgdBcHByb3Zl');

@$core.Deprecated('Use deleteUserRequestDescriptor instead')
const DeleteUserRequest$json = {
  '1': 'DeleteUserRequest',
  '2': [
    {'1': 'ID', '3': 1, '4': 1, '5': 9, '10': 'ID'},
  ],
};

/// Descriptor for `DeleteUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteUserRequestDescriptor = $convert.base64Decode(
    'ChFEZWxldGVVc2VyUmVxdWVzdBIOCgJJRBgBIAEoCVICSUQ=');

@$core.Deprecated('Use applicationDescriptor instead')
const Application$json = {
  '1': 'Application',
  '2': [
    {'1': 'ID', '3': 1, '4': 1, '5': 9, '10': 'ID'},
    {'1': 'CreatedAt', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'CreatedAt'},
    {'1': 'UpdatedAt', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'UpdatedAt'},
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
final $typed_data.Uint8List createApplicationRequestDescriptor = $convert.base64Decode(
    'ChhDcmVhdGVBcHBsaWNhdGlvblJlcXVlc3QSEgoETmFtZRgBIAEoCVIETmFtZQ==');

@$core.Deprecated('Use createApplicationResponseDescriptor instead')
const CreateApplicationResponse$json = {
  '1': 'CreateApplicationResponse',
  '2': [
    {'1': 'ID', '3': 1, '4': 1, '5': 9, '10': 'ID'},
  ],
};

/// Descriptor for `CreateApplicationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createApplicationResponseDescriptor = $convert.base64Decode(
    'ChlDcmVhdGVBcHBsaWNhdGlvblJlc3BvbnNlEg4KAklEGAEgASgJUgJJRA==');

@$core.Deprecated('Use deleteApplicationRequestDescriptor instead')
const DeleteApplicationRequest$json = {
  '1': 'DeleteApplicationRequest',
  '2': [
    {'1': 'ID', '3': 1, '4': 1, '5': 9, '10': 'ID'},
  ],
};

/// Descriptor for `DeleteApplicationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteApplicationRequestDescriptor = $convert.base64Decode(
    'ChhEZWxldGVBcHBsaWNhdGlvblJlcXVlc3QSDgoCSUQYASABKAlSAklE');

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
    {'1': 'ApplicationID', '3': 1, '4': 1, '5': 9, '10': 'ApplicationID'},
  ],
};

/// Descriptor for `ListApplicationDomainRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listApplicationDomainRequestDescriptor = $convert.base64Decode(
    'ChxMaXN0QXBwbGljYXRpb25Eb21haW5SZXF1ZXN0EiQKDUFwcGxpY2F0aW9uSUQYASABKAlSDU'
    'FwcGxpY2F0aW9uSUQ=');

@$core.Deprecated('Use domainDescriptor instead')
const Domain$json = {
  '1': 'Domain',
  '2': [
    {'1': 'ID', '3': 1, '4': 1, '5': 9, '10': 'ID'},
    {'1': 'CreatedAt', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'CreatedAt'},
    {'1': 'UpdatedAt', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'UpdatedAt'},
    {'1': 'DomainName', '3': 4, '4': 1, '5': 9, '10': 'DomainName'},
    {'1': 'SoaEmail', '3': 5, '4': 1, '5': 9, '10': 'SoaEmail'},
    {'1': 'TxtRecord', '3': 6, '4': 1, '5': 9, '10': 'TxtRecord'},
    {'1': 'Status', '3': 7, '4': 1, '5': 14, '6': '.management_services.DomainStatus', '10': 'Status'},
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

@$core.Deprecated('Use listUsersRequestDescriptor instead')
const ListUsersRequest$json = {
  '1': 'ListUsersRequest',
  '2': [
    {'1': 'ApplicationID', '3': 1, '4': 1, '5': 9, '10': 'ApplicationID'},
  ],
};

/// Descriptor for `ListUsersRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listUsersRequestDescriptor = $convert.base64Decode(
    'ChBMaXN0VXNlcnNSZXF1ZXN0EiQKDUFwcGxpY2F0aW9uSUQYASABKAlSDUFwcGxpY2F0aW9uSU'
    'Q=');

@$core.Deprecated('Use applicationToggleUserApprovalRequestDescriptor instead')
const ApplicationToggleUserApprovalRequest$json = {
  '1': 'ApplicationToggleUserApprovalRequest',
  '2': [
    {'1': 'ApplicationID', '3': 1, '4': 1, '5': 9, '10': 'ApplicationID'},
    {'1': 'ID', '3': 2, '4': 1, '5': 9, '10': 'ID'},
    {'1': 'Approve', '3': 3, '4': 1, '5': 8, '10': 'Approve'},
  ],
};

/// Descriptor for `ApplicationToggleUserApprovalRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List applicationToggleUserApprovalRequestDescriptor = $convert.base64Decode(
    'CiRBcHBsaWNhdGlvblRvZ2dsZVVzZXJBcHByb3ZhbFJlcXVlc3QSJAoNQXBwbGljYXRpb25JRB'
    'gBIAEoCVINQXBwbGljYXRpb25JRBIOCgJJRBgCIAEoCVICSUQSGAoHQXBwcm92ZRgDIAEoCFIH'
    'QXBwcm92ZQ==');

@$core.Deprecated('Use applicationUserDescriptor instead')
const ApplicationUser$json = {
  '1': 'ApplicationUser',
  '2': [
    {'1': 'ID', '3': 1, '4': 1, '5': 9, '10': 'ID'},
    {'1': 'CreatedAt', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'CreatedAt'},
    {'1': 'UpdatedAt', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'UpdatedAt'},
    {'1': 'Email', '3': 4, '4': 1, '5': 9, '10': 'Email'},
    {'1': 'Status', '3': 5, '4': 1, '5': 14, '6': '.types.UserStatus', '10': 'Status'},
  ],
};

/// Descriptor for `ApplicationUser`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List applicationUserDescriptor = $convert.base64Decode(
    'Cg9BcHBsaWNhdGlvblVzZXISDgoCSUQYASABKAlSAklEEjgKCUNyZWF0ZWRBdBgCIAEoCzIaLm'
    'dvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCUNyZWF0ZWRBdBI4CglVcGRhdGVkQXQYAyABKAsy'
    'Gi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUglVcGRhdGVkQXQSFAoFRW1haWwYBCABKAlSBU'
    'VtYWlsEikKBlN0YXR1cxgFIAEoDjIRLnR5cGVzLlVzZXJTdGF0dXNSBlN0YXR1cw==');

@$core.Deprecated('Use applicationUserRegisterRequestDescriptor instead')
const ApplicationUserRegisterRequest$json = {
  '1': 'ApplicationUserRegisterRequest',
  '2': [
    {'1': 'ApplicationID', '3': 1, '4': 1, '5': 9, '10': 'ApplicationID'},
    {'1': 'Email', '3': 2, '4': 1, '5': 9, '10': 'Email'},
    {'1': 'Password', '3': 3, '4': 1, '5': 9, '10': 'Password'},
  ],
};

/// Descriptor for `ApplicationUserRegisterRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List applicationUserRegisterRequestDescriptor = $convert.base64Decode(
    'Ch5BcHBsaWNhdGlvblVzZXJSZWdpc3RlclJlcXVlc3QSJAoNQXBwbGljYXRpb25JRBgBIAEoCV'
    'INQXBwbGljYXRpb25JRBIUCgVFbWFpbBgCIAEoCVIFRW1haWwSGgoIUGFzc3dvcmQYAyABKAlS'
    'CFBhc3N3b3Jk');

@$core.Deprecated('Use applicationUserRegisterResponseDescriptor instead')
const ApplicationUserRegisterResponse$json = {
  '1': 'ApplicationUserRegisterResponse',
  '2': [
    {'1': 'ID', '3': 1, '4': 1, '5': 9, '10': 'ID'},
  ],
};

/// Descriptor for `ApplicationUserRegisterResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List applicationUserRegisterResponseDescriptor = $convert.base64Decode(
    'Ch9BcHBsaWNhdGlvblVzZXJSZWdpc3RlclJlc3BvbnNlEg4KAklEGAEgASgJUgJJRA==');

@$core.Deprecated('Use applicationUserGetRequestDescriptor instead')
const ApplicationUserGetRequest$json = {
  '1': 'ApplicationUserGetRequest',
  '2': [
    {'1': 'ApplicationID', '3': 1, '4': 1, '5': 9, '10': 'ApplicationID'},
    {'1': 'ID', '3': 2, '4': 1, '5': 9, '10': 'ID'},
  ],
};

/// Descriptor for `ApplicationUserGetRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List applicationUserGetRequestDescriptor = $convert.base64Decode(
    'ChlBcHBsaWNhdGlvblVzZXJHZXRSZXF1ZXN0EiQKDUFwcGxpY2F0aW9uSUQYASABKAlSDUFwcG'
    'xpY2F0aW9uSUQSDgoCSUQYAiABKAlSAklE');

@$core.Deprecated('Use listEntityTypesRequestDescriptor instead')
const ListEntityTypesRequest$json = {
  '1': 'ListEntityTypesRequest',
  '2': [
    {'1': 'ApplicationID', '3': 1, '4': 1, '5': 9, '10': 'ApplicationID'},
    {'1': 'AppUserID', '3': 2, '4': 1, '5': 9, '10': 'AppUserID'},
  ],
};

/// Descriptor for `ListEntityTypesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listEntityTypesRequestDescriptor = $convert.base64Decode(
    'ChZMaXN0RW50aXR5VHlwZXNSZXF1ZXN0EiQKDUFwcGxpY2F0aW9uSUQYASABKAlSDUFwcGxpY2'
    'F0aW9uSUQSHAoJQXBwVXNlcklEGAIgASgJUglBcHBVc2VySUQ=');

@$core.Deprecated('Use appUserSearchEntityHistoryRequestDescriptor instead')
const AppUserSearchEntityHistoryRequest$json = {
  '1': 'AppUserSearchEntityHistoryRequest',
  '2': [
    {'1': 'SearchEntityHistoryRequest', '3': 1, '4': 1, '5': 11, '6': '.types.SearchEntityHistoryRequest', '10': 'SearchEntityHistoryRequest'},
    {'1': 'ApplicationID', '3': 2, '4': 1, '5': 9, '10': 'ApplicationID'},
    {'1': 'AppUserID', '3': 3, '4': 1, '5': 9, '10': 'AppUserID'},
  ],
};

/// Descriptor for `AppUserSearchEntityHistoryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appUserSearchEntityHistoryRequestDescriptor = $convert.base64Decode(
    'CiFBcHBVc2VyU2VhcmNoRW50aXR5SGlzdG9yeVJlcXVlc3QSYQoaU2VhcmNoRW50aXR5SGlzdG'
    '9yeVJlcXVlc3QYASABKAsyIS50eXBlcy5TZWFyY2hFbnRpdHlIaXN0b3J5UmVxdWVzdFIaU2Vh'
    'cmNoRW50aXR5SGlzdG9yeVJlcXVlc3QSJAoNQXBwbGljYXRpb25JRBgCIAEoCVINQXBwbGljYX'
    'Rpb25JRBIcCglBcHBVc2VySUQYAyABKAlSCUFwcFVzZXJJRA==');

@$core.Deprecated('Use appUserEntityActionRequestDescriptor instead')
const AppUserEntityActionRequest$json = {
  '1': 'AppUserEntityActionRequest',
  '2': [
    {'1': 'EntityActionRequest', '3': 1, '4': 1, '5': 11, '6': '.types.EntityActionRequest', '10': 'EntityActionRequest'},
    {'1': 'ApplicationID', '3': 2, '4': 1, '5': 9, '10': 'ApplicationID'},
    {'1': 'AppUserID', '3': 3, '4': 1, '5': 9, '10': 'AppUserID'},
  ],
};

/// Descriptor for `AppUserEntityActionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appUserEntityActionRequestDescriptor = $convert.base64Decode(
    'ChpBcHBVc2VyRW50aXR5QWN0aW9uUmVxdWVzdBJMChNFbnRpdHlBY3Rpb25SZXF1ZXN0GAEgAS'
    'gLMhoudHlwZXMuRW50aXR5QWN0aW9uUmVxdWVzdFITRW50aXR5QWN0aW9uUmVxdWVzdBIkCg1B'
    'cHBsaWNhdGlvbklEGAIgASgJUg1BcHBsaWNhdGlvbklEEhwKCUFwcFVzZXJJRBgDIAEoCVIJQX'
    'BwVXNlcklE');

