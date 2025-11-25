// This is a generated file - do not edit.
//
// Generated from management/services.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import '../google/protobuf/empty.pb.dart' as $0;
import '../types/health.pb.dart' as $1;
import '../types/openid.pb.dart' as $3;
import 'services.pb.dart' as $2;

export 'services.pb.dart';

@$pb.GrpcServiceName('management_services.HealthService')
class HealthServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  HealthServiceClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$1.HealthResponse> health(
    $0.Empty request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$health, request, options: options);
  }

  $grpc.ResponseFuture<$2.CumulativeHealthResponse> cumulativeHealth(
    $0.Empty request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$cumulativeHealth, request, options: options);
  }

  // method descriptors

  static final _$health = $grpc.ClientMethod<$0.Empty, $1.HealthResponse>(
      '/management_services.HealthService/Health',
      ($0.Empty value) => value.writeToBuffer(),
      $1.HealthResponse.fromBuffer);
  static final _$cumulativeHealth =
      $grpc.ClientMethod<$0.Empty, $2.CumulativeHealthResponse>(
          '/management_services.HealthService/CumulativeHealth',
          ($0.Empty value) => value.writeToBuffer(),
          $2.CumulativeHealthResponse.fromBuffer);
}

@$pb.GrpcServiceName('management_services.HealthService')
abstract class HealthServiceBase extends $grpc.Service {
  $core.String get $name => 'management_services.HealthService';

  HealthServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.HealthResponse>(
        'Health',
        health_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.HealthResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $2.CumulativeHealthResponse>(
        'CumulativeHealth',
        cumulativeHealth_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($2.CumulativeHealthResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.HealthResponse> health_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Empty> $request) async {
    return health($call, await $request);
  }

  $async.Future<$1.HealthResponse> health(
      $grpc.ServiceCall call, $0.Empty request);

  $async.Future<$2.CumulativeHealthResponse> cumulativeHealth_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Empty> $request) async {
    return cumulativeHealth($call, await $request);
  }

  $async.Future<$2.CumulativeHealthResponse> cumulativeHealth(
      $grpc.ServiceCall call, $0.Empty request);
}

@$pb.GrpcServiceName('management_services.AuthService')
class AuthServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  AuthServiceClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$2.VerifyUserResponse> verifyUser(
    $0.Empty request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$verifyUser, request, options: options);
  }

  // method descriptors

  static final _$verifyUser =
      $grpc.ClientMethod<$0.Empty, $2.VerifyUserResponse>(
          '/management_services.AuthService/VerifyUser',
          ($0.Empty value) => value.writeToBuffer(),
          $2.VerifyUserResponse.fromBuffer);
}

@$pb.GrpcServiceName('management_services.AuthService')
abstract class AuthServiceBase extends $grpc.Service {
  $core.String get $name => 'management_services.AuthService';

  AuthServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $2.VerifyUserResponse>(
        'VerifyUser',
        verifyUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($2.VerifyUserResponse value) => value.writeToBuffer()));
  }

  $async.Future<$2.VerifyUserResponse> verifyUser_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Empty> $request) async {
    return verifyUser($call, await $request);
  }

  $async.Future<$2.VerifyUserResponse> verifyUser(
      $grpc.ServiceCall call, $0.Empty request);
}

@$pb.GrpcServiceName('management_services.ApplicationService')
class ApplicationServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  ApplicationServiceClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$2.ListApplicationsResponse> listApplications(
    $2.ListApplicationsRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$listApplications, request, options: options);
  }

  $grpc.ResponseStream<$2.Application> streamApplications(
    $0.Empty request, {
    $grpc.CallOptions? options,
  }) {
    return $createStreamingCall(
        _$streamApplications, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$2.Application> getApplication(
    $2.GetApplicationRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getApplication, request, options: options);
  }

  $grpc.ResponseFuture<$2.Application> createApplication(
    $2.CreateApplicationRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$createApplication, request, options: options);
  }

  $grpc.ResponseFuture<$2.Application> updateApplication(
    $2.UpdateApplicationRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$updateApplication, request, options: options);
  }

  $grpc.ResponseFuture<$2.DeployApplicationResponse> deployApplication(
    $2.DeployApplicationRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$deployApplication, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> deleteApplication(
    $2.DeleteApplicationRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$deleteApplication, request, options: options);
  }

  // method descriptors

  static final _$listApplications = $grpc.ClientMethod<
          $2.ListApplicationsRequest, $2.ListApplicationsResponse>(
      '/management_services.ApplicationService/ListApplications',
      ($2.ListApplicationsRequest value) => value.writeToBuffer(),
      $2.ListApplicationsResponse.fromBuffer);
  static final _$streamApplications =
      $grpc.ClientMethod<$0.Empty, $2.Application>(
          '/management_services.ApplicationService/StreamApplications',
          ($0.Empty value) => value.writeToBuffer(),
          $2.Application.fromBuffer);
  static final _$getApplication =
      $grpc.ClientMethod<$2.GetApplicationRequest, $2.Application>(
          '/management_services.ApplicationService/GetApplication',
          ($2.GetApplicationRequest value) => value.writeToBuffer(),
          $2.Application.fromBuffer);
  static final _$createApplication =
      $grpc.ClientMethod<$2.CreateApplicationRequest, $2.Application>(
          '/management_services.ApplicationService/CreateApplication',
          ($2.CreateApplicationRequest value) => value.writeToBuffer(),
          $2.Application.fromBuffer);
  static final _$updateApplication =
      $grpc.ClientMethod<$2.UpdateApplicationRequest, $2.Application>(
          '/management_services.ApplicationService/UpdateApplication',
          ($2.UpdateApplicationRequest value) => value.writeToBuffer(),
          $2.Application.fromBuffer);
  static final _$deployApplication = $grpc.ClientMethod<
          $2.DeployApplicationRequest, $2.DeployApplicationResponse>(
      '/management_services.ApplicationService/DeployApplication',
      ($2.DeployApplicationRequest value) => value.writeToBuffer(),
      $2.DeployApplicationResponse.fromBuffer);
  static final _$deleteApplication =
      $grpc.ClientMethod<$2.DeleteApplicationRequest, $0.Empty>(
          '/management_services.ApplicationService/DeleteApplication',
          ($2.DeleteApplicationRequest value) => value.writeToBuffer(),
          $0.Empty.fromBuffer);
}

@$pb.GrpcServiceName('management_services.ApplicationService')
abstract class ApplicationServiceBase extends $grpc.Service {
  $core.String get $name => 'management_services.ApplicationService';

  ApplicationServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.ListApplicationsRequest,
            $2.ListApplicationsResponse>(
        'ListApplications',
        listApplications_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.ListApplicationsRequest.fromBuffer(value),
        ($2.ListApplicationsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $2.Application>(
        'StreamApplications',
        streamApplications_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($2.Application value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.GetApplicationRequest, $2.Application>(
        'GetApplication',
        getApplication_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.GetApplicationRequest.fromBuffer(value),
        ($2.Application value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.CreateApplicationRequest, $2.Application>(
        'CreateApplication',
        createApplication_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.CreateApplicationRequest.fromBuffer(value),
        ($2.Application value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UpdateApplicationRequest, $2.Application>(
        'UpdateApplication',
        updateApplication_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.UpdateApplicationRequest.fromBuffer(value),
        ($2.Application value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.DeployApplicationRequest,
            $2.DeployApplicationResponse>(
        'DeployApplication',
        deployApplication_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.DeployApplicationRequest.fromBuffer(value),
        ($2.DeployApplicationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.DeleteApplicationRequest, $0.Empty>(
        'DeleteApplication',
        deleteApplication_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.DeleteApplicationRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$2.ListApplicationsResponse> listApplications_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$2.ListApplicationsRequest> $request) async {
    return listApplications($call, await $request);
  }

  $async.Future<$2.ListApplicationsResponse> listApplications(
      $grpc.ServiceCall call, $2.ListApplicationsRequest request);

  $async.Stream<$2.Application> streamApplications_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Empty> $request) async* {
    yield* streamApplications($call, await $request);
  }

  $async.Stream<$2.Application> streamApplications(
      $grpc.ServiceCall call, $0.Empty request);

  $async.Future<$2.Application> getApplication_Pre($grpc.ServiceCall $call,
      $async.Future<$2.GetApplicationRequest> $request) async {
    return getApplication($call, await $request);
  }

  $async.Future<$2.Application> getApplication(
      $grpc.ServiceCall call, $2.GetApplicationRequest request);

  $async.Future<$2.Application> createApplication_Pre($grpc.ServiceCall $call,
      $async.Future<$2.CreateApplicationRequest> $request) async {
    return createApplication($call, await $request);
  }

  $async.Future<$2.Application> createApplication(
      $grpc.ServiceCall call, $2.CreateApplicationRequest request);

  $async.Future<$2.Application> updateApplication_Pre($grpc.ServiceCall $call,
      $async.Future<$2.UpdateApplicationRequest> $request) async {
    return updateApplication($call, await $request);
  }

  $async.Future<$2.Application> updateApplication(
      $grpc.ServiceCall call, $2.UpdateApplicationRequest request);

  $async.Future<$2.DeployApplicationResponse> deployApplication_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$2.DeployApplicationRequest> $request) async {
    return deployApplication($call, await $request);
  }

  $async.Future<$2.DeployApplicationResponse> deployApplication(
      $grpc.ServiceCall call, $2.DeployApplicationRequest request);

  $async.Future<$0.Empty> deleteApplication_Pre($grpc.ServiceCall $call,
      $async.Future<$2.DeleteApplicationRequest> $request) async {
    return deleteApplication($call, await $request);
  }

  $async.Future<$0.Empty> deleteApplication(
      $grpc.ServiceCall call, $2.DeleteApplicationRequest request);
}

@$pb.GrpcServiceName('management_services.ApplicationDomainService')
class ApplicationDomainServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  ApplicationDomainServiceClient(super.channel,
      {super.options, super.interceptors});

  $grpc.ResponseFuture<$2.ListApplicationDomainResponse> listApplicationDomains(
    $2.ListApplicationDomainRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$listApplicationDomains, request,
        options: options);
  }

  $grpc.ResponseStream<$2.Domain> streamApplicationDomains(
    $2.StreamApplicationDomainRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createStreamingCall(
        _$streamApplicationDomains, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$2.Domain> createDomain(
    $2.CreateDomainRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$createDomain, request, options: options);
  }

  $grpc.ResponseFuture<$2.Domain> getDomain(
    $2.GetDomainRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getDomain, request, options: options);
  }

  $grpc.ResponseFuture<$2.Domain> updateDomain(
    $2.UpdateDomainRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$updateDomain, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> verifyDomain(
    $2.GetDomainRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$verifyDomain, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> deleteDomain(
    $2.GetDomainRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$deleteDomain, request, options: options);
  }

  // method descriptors

  static final _$listApplicationDomains = $grpc.ClientMethod<
          $2.ListApplicationDomainRequest, $2.ListApplicationDomainResponse>(
      '/management_services.ApplicationDomainService/ListApplicationDomains',
      ($2.ListApplicationDomainRequest value) => value.writeToBuffer(),
      $2.ListApplicationDomainResponse.fromBuffer);
  static final _$streamApplicationDomains = $grpc.ClientMethod<
          $2.StreamApplicationDomainRequest, $2.Domain>(
      '/management_services.ApplicationDomainService/StreamApplicationDomains',
      ($2.StreamApplicationDomainRequest value) => value.writeToBuffer(),
      $2.Domain.fromBuffer);
  static final _$createDomain =
      $grpc.ClientMethod<$2.CreateDomainRequest, $2.Domain>(
          '/management_services.ApplicationDomainService/CreateDomain',
          ($2.CreateDomainRequest value) => value.writeToBuffer(),
          $2.Domain.fromBuffer);
  static final _$getDomain = $grpc.ClientMethod<$2.GetDomainRequest, $2.Domain>(
      '/management_services.ApplicationDomainService/GetDomain',
      ($2.GetDomainRequest value) => value.writeToBuffer(),
      $2.Domain.fromBuffer);
  static final _$updateDomain =
      $grpc.ClientMethod<$2.UpdateDomainRequest, $2.Domain>(
          '/management_services.ApplicationDomainService/UpdateDomain',
          ($2.UpdateDomainRequest value) => value.writeToBuffer(),
          $2.Domain.fromBuffer);
  static final _$verifyDomain =
      $grpc.ClientMethod<$2.GetDomainRequest, $0.Empty>(
          '/management_services.ApplicationDomainService/VerifyDomain',
          ($2.GetDomainRequest value) => value.writeToBuffer(),
          $0.Empty.fromBuffer);
  static final _$deleteDomain =
      $grpc.ClientMethod<$2.GetDomainRequest, $0.Empty>(
          '/management_services.ApplicationDomainService/DeleteDomain',
          ($2.GetDomainRequest value) => value.writeToBuffer(),
          $0.Empty.fromBuffer);
}

@$pb.GrpcServiceName('management_services.ApplicationDomainService')
abstract class ApplicationDomainServiceBase extends $grpc.Service {
  $core.String get $name => 'management_services.ApplicationDomainService';

  ApplicationDomainServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.ListApplicationDomainRequest,
            $2.ListApplicationDomainResponse>(
        'ListApplicationDomains',
        listApplicationDomains_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.ListApplicationDomainRequest.fromBuffer(value),
        ($2.ListApplicationDomainResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.StreamApplicationDomainRequest, $2.Domain>(
            'StreamApplicationDomains',
            streamApplicationDomains_Pre,
            false,
            true,
            ($core.List<$core.int> value) =>
                $2.StreamApplicationDomainRequest.fromBuffer(value),
            ($2.Domain value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.CreateDomainRequest, $2.Domain>(
        'CreateDomain',
        createDomain_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.CreateDomainRequest.fromBuffer(value),
        ($2.Domain value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.GetDomainRequest, $2.Domain>(
        'GetDomain',
        getDomain_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.GetDomainRequest.fromBuffer(value),
        ($2.Domain value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UpdateDomainRequest, $2.Domain>(
        'UpdateDomain',
        updateDomain_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.UpdateDomainRequest.fromBuffer(value),
        ($2.Domain value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.GetDomainRequest, $0.Empty>(
        'VerifyDomain',
        verifyDomain_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.GetDomainRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.GetDomainRequest, $0.Empty>(
        'DeleteDomain',
        deleteDomain_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.GetDomainRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$2.ListApplicationDomainResponse> listApplicationDomains_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$2.ListApplicationDomainRequest> $request) async {
    return listApplicationDomains($call, await $request);
  }

  $async.Future<$2.ListApplicationDomainResponse> listApplicationDomains(
      $grpc.ServiceCall call, $2.ListApplicationDomainRequest request);

  $async.Stream<$2.Domain> streamApplicationDomains_Pre($grpc.ServiceCall $call,
      $async.Future<$2.StreamApplicationDomainRequest> $request) async* {
    yield* streamApplicationDomains($call, await $request);
  }

  $async.Stream<$2.Domain> streamApplicationDomains(
      $grpc.ServiceCall call, $2.StreamApplicationDomainRequest request);

  $async.Future<$2.Domain> createDomain_Pre($grpc.ServiceCall $call,
      $async.Future<$2.CreateDomainRequest> $request) async {
    return createDomain($call, await $request);
  }

  $async.Future<$2.Domain> createDomain(
      $grpc.ServiceCall call, $2.CreateDomainRequest request);

  $async.Future<$2.Domain> getDomain_Pre($grpc.ServiceCall $call,
      $async.Future<$2.GetDomainRequest> $request) async {
    return getDomain($call, await $request);
  }

  $async.Future<$2.Domain> getDomain(
      $grpc.ServiceCall call, $2.GetDomainRequest request);

  $async.Future<$2.Domain> updateDomain_Pre($grpc.ServiceCall $call,
      $async.Future<$2.UpdateDomainRequest> $request) async {
    return updateDomain($call, await $request);
  }

  $async.Future<$2.Domain> updateDomain(
      $grpc.ServiceCall call, $2.UpdateDomainRequest request);

  $async.Future<$0.Empty> verifyDomain_Pre($grpc.ServiceCall $call,
      $async.Future<$2.GetDomainRequest> $request) async {
    return verifyDomain($call, await $request);
  }

  $async.Future<$0.Empty> verifyDomain(
      $grpc.ServiceCall call, $2.GetDomainRequest request);

  $async.Future<$0.Empty> deleteDomain_Pre($grpc.ServiceCall $call,
      $async.Future<$2.GetDomainRequest> $request) async {
    return deleteDomain($call, await $request);
  }

  $async.Future<$0.Empty> deleteDomain(
      $grpc.ServiceCall call, $2.GetDomainRequest request);
}

@$pb.GrpcServiceName('management_services.ConfigService')
class ConfigServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  ConfigServiceClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$3.OpenIdConfiguration> getOpenIdConfiguration(
    $0.Empty request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getOpenIdConfiguration, request,
        options: options);
  }

  // method descriptors

  static final _$getOpenIdConfiguration =
      $grpc.ClientMethod<$0.Empty, $3.OpenIdConfiguration>(
          '/management_services.ConfigService/GetOpenIdConfiguration',
          ($0.Empty value) => value.writeToBuffer(),
          $3.OpenIdConfiguration.fromBuffer);
}

@$pb.GrpcServiceName('management_services.ConfigService')
abstract class ConfigServiceBase extends $grpc.Service {
  $core.String get $name => 'management_services.ConfigService';

  ConfigServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $3.OpenIdConfiguration>(
        'GetOpenIdConfiguration',
        getOpenIdConfiguration_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($3.OpenIdConfiguration value) => value.writeToBuffer()));
  }

  $async.Future<$3.OpenIdConfiguration> getOpenIdConfiguration_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Empty> $request) async {
    return getOpenIdConfiguration($call, await $request);
  }

  $async.Future<$3.OpenIdConfiguration> getOpenIdConfiguration(
      $grpc.ServiceCall call, $0.Empty request);
}
