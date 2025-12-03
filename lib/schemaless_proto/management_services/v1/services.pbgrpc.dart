// This is a generated file - do not edit.
//
// Generated from management_services/v1/services.proto.

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

import '../../types/v1/health.pb.dart' as $0;
import '../../types/v1/openid.pb.dart' as $2;
import 'services.pb.dart' as $1;

export 'services.pb.dart';

@$pb.GrpcServiceName('management_services.v1.HealthService')
class HealthServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  HealthServiceClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$0.HealthResponse> health(
    $0.HealthRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$health, request, options: options);
  }

  $grpc.ResponseFuture<$1.CumulativeHealthResponse> cumulativeHealth(
    $1.CumulativeHealthRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$cumulativeHealth, request, options: options);
  }

  // method descriptors

  static final _$health =
      $grpc.ClientMethod<$0.HealthRequest, $0.HealthResponse>(
          '/management_services.v1.HealthService/Health',
          ($0.HealthRequest value) => value.writeToBuffer(),
          $0.HealthResponse.fromBuffer);
  static final _$cumulativeHealth = $grpc.ClientMethod<
          $1.CumulativeHealthRequest, $1.CumulativeHealthResponse>(
      '/management_services.v1.HealthService/CumulativeHealth',
      ($1.CumulativeHealthRequest value) => value.writeToBuffer(),
      $1.CumulativeHealthResponse.fromBuffer);
}

@$pb.GrpcServiceName('management_services.v1.HealthService')
abstract class HealthServiceBase extends $grpc.Service {
  $core.String get $name => 'management_services.v1.HealthService';

  HealthServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.HealthRequest, $0.HealthResponse>(
        'Health',
        health_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.HealthRequest.fromBuffer(value),
        ($0.HealthResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.CumulativeHealthRequest,
            $1.CumulativeHealthResponse>(
        'CumulativeHealth',
        cumulativeHealth_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.CumulativeHealthRequest.fromBuffer(value),
        ($1.CumulativeHealthResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.HealthResponse> health_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.HealthRequest> $request) async {
    return health($call, await $request);
  }

  $async.Future<$0.HealthResponse> health(
      $grpc.ServiceCall call, $0.HealthRequest request);

  $async.Future<$1.CumulativeHealthResponse> cumulativeHealth_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$1.CumulativeHealthRequest> $request) async {
    return cumulativeHealth($call, await $request);
  }

  $async.Future<$1.CumulativeHealthResponse> cumulativeHealth(
      $grpc.ServiceCall call, $1.CumulativeHealthRequest request);
}

@$pb.GrpcServiceName('management_services.v1.AuthService')
class AuthServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  AuthServiceClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$1.VerifyUserResponse> verifyUser(
    $1.VerifyUserRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$verifyUser, request, options: options);
  }

  // method descriptors

  static final _$verifyUser =
      $grpc.ClientMethod<$1.VerifyUserRequest, $1.VerifyUserResponse>(
          '/management_services.v1.AuthService/VerifyUser',
          ($1.VerifyUserRequest value) => value.writeToBuffer(),
          $1.VerifyUserResponse.fromBuffer);
}

@$pb.GrpcServiceName('management_services.v1.AuthService')
abstract class AuthServiceBase extends $grpc.Service {
  $core.String get $name => 'management_services.v1.AuthService';

  AuthServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.VerifyUserRequest, $1.VerifyUserResponse>(
        'VerifyUser',
        verifyUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.VerifyUserRequest.fromBuffer(value),
        ($1.VerifyUserResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.VerifyUserResponse> verifyUser_Pre($grpc.ServiceCall $call,
      $async.Future<$1.VerifyUserRequest> $request) async {
    return verifyUser($call, await $request);
  }

  $async.Future<$1.VerifyUserResponse> verifyUser(
      $grpc.ServiceCall call, $1.VerifyUserRequest request);
}

@$pb.GrpcServiceName('management_services.v1.ApplicationService')
class ApplicationServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  ApplicationServiceClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$1.ListApplicationsResponse> listApplications(
    $1.ListApplicationsRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$listApplications, request, options: options);
  }

  $grpc.ResponseStream<$1.StreamApplicationsResponse> streamApplications(
    $1.StreamApplicationsRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createStreamingCall(
        _$streamApplications, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$1.GetApplicationResponse> getApplication(
    $1.GetApplicationRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getApplication, request, options: options);
  }

  $grpc.ResponseFuture<$1.CreateApplicationResponse> createApplication(
    $1.CreateApplicationRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$createApplication, request, options: options);
  }

  $grpc.ResponseFuture<$1.UpdateApplicationResponse> updateApplication(
    $1.UpdateApplicationRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$updateApplication, request, options: options);
  }

  $grpc.ResponseFuture<$1.DeployApplicationResponse> deployApplication(
    $1.DeployApplicationRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$deployApplication, request, options: options);
  }

  $grpc.ResponseFuture<$1.DeleteApplicationResponse> deleteApplication(
    $1.DeleteApplicationRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$deleteApplication, request, options: options);
  }

  // method descriptors

  static final _$listApplications = $grpc.ClientMethod<
          $1.ListApplicationsRequest, $1.ListApplicationsResponse>(
      '/management_services.v1.ApplicationService/ListApplications',
      ($1.ListApplicationsRequest value) => value.writeToBuffer(),
      $1.ListApplicationsResponse.fromBuffer);
  static final _$streamApplications = $grpc.ClientMethod<
          $1.StreamApplicationsRequest, $1.StreamApplicationsResponse>(
      '/management_services.v1.ApplicationService/StreamApplications',
      ($1.StreamApplicationsRequest value) => value.writeToBuffer(),
      $1.StreamApplicationsResponse.fromBuffer);
  static final _$getApplication =
      $grpc.ClientMethod<$1.GetApplicationRequest, $1.GetApplicationResponse>(
          '/management_services.v1.ApplicationService/GetApplication',
          ($1.GetApplicationRequest value) => value.writeToBuffer(),
          $1.GetApplicationResponse.fromBuffer);
  static final _$createApplication = $grpc.ClientMethod<
          $1.CreateApplicationRequest, $1.CreateApplicationResponse>(
      '/management_services.v1.ApplicationService/CreateApplication',
      ($1.CreateApplicationRequest value) => value.writeToBuffer(),
      $1.CreateApplicationResponse.fromBuffer);
  static final _$updateApplication = $grpc.ClientMethod<
          $1.UpdateApplicationRequest, $1.UpdateApplicationResponse>(
      '/management_services.v1.ApplicationService/UpdateApplication',
      ($1.UpdateApplicationRequest value) => value.writeToBuffer(),
      $1.UpdateApplicationResponse.fromBuffer);
  static final _$deployApplication = $grpc.ClientMethod<
          $1.DeployApplicationRequest, $1.DeployApplicationResponse>(
      '/management_services.v1.ApplicationService/DeployApplication',
      ($1.DeployApplicationRequest value) => value.writeToBuffer(),
      $1.DeployApplicationResponse.fromBuffer);
  static final _$deleteApplication = $grpc.ClientMethod<
          $1.DeleteApplicationRequest, $1.DeleteApplicationResponse>(
      '/management_services.v1.ApplicationService/DeleteApplication',
      ($1.DeleteApplicationRequest value) => value.writeToBuffer(),
      $1.DeleteApplicationResponse.fromBuffer);
}

@$pb.GrpcServiceName('management_services.v1.ApplicationService')
abstract class ApplicationServiceBase extends $grpc.Service {
  $core.String get $name => 'management_services.v1.ApplicationService';

  ApplicationServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.ListApplicationsRequest,
            $1.ListApplicationsResponse>(
        'ListApplications',
        listApplications_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.ListApplicationsRequest.fromBuffer(value),
        ($1.ListApplicationsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.StreamApplicationsRequest,
            $1.StreamApplicationsResponse>(
        'StreamApplications',
        streamApplications_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $1.StreamApplicationsRequest.fromBuffer(value),
        ($1.StreamApplicationsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetApplicationRequest,
            $1.GetApplicationResponse>(
        'GetApplication',
        getApplication_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.GetApplicationRequest.fromBuffer(value),
        ($1.GetApplicationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.CreateApplicationRequest,
            $1.CreateApplicationResponse>(
        'CreateApplication',
        createApplication_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.CreateApplicationRequest.fromBuffer(value),
        ($1.CreateApplicationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.UpdateApplicationRequest,
            $1.UpdateApplicationResponse>(
        'UpdateApplication',
        updateApplication_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.UpdateApplicationRequest.fromBuffer(value),
        ($1.UpdateApplicationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.DeployApplicationRequest,
            $1.DeployApplicationResponse>(
        'DeployApplication',
        deployApplication_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.DeployApplicationRequest.fromBuffer(value),
        ($1.DeployApplicationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.DeleteApplicationRequest,
            $1.DeleteApplicationResponse>(
        'DeleteApplication',
        deleteApplication_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.DeleteApplicationRequest.fromBuffer(value),
        ($1.DeleteApplicationResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.ListApplicationsResponse> listApplications_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$1.ListApplicationsRequest> $request) async {
    return listApplications($call, await $request);
  }

  $async.Future<$1.ListApplicationsResponse> listApplications(
      $grpc.ServiceCall call, $1.ListApplicationsRequest request);

  $async.Stream<$1.StreamApplicationsResponse> streamApplications_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$1.StreamApplicationsRequest> $request) async* {
    yield* streamApplications($call, await $request);
  }

  $async.Stream<$1.StreamApplicationsResponse> streamApplications(
      $grpc.ServiceCall call, $1.StreamApplicationsRequest request);

  $async.Future<$1.GetApplicationResponse> getApplication_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$1.GetApplicationRequest> $request) async {
    return getApplication($call, await $request);
  }

  $async.Future<$1.GetApplicationResponse> getApplication(
      $grpc.ServiceCall call, $1.GetApplicationRequest request);

  $async.Future<$1.CreateApplicationResponse> createApplication_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$1.CreateApplicationRequest> $request) async {
    return createApplication($call, await $request);
  }

  $async.Future<$1.CreateApplicationResponse> createApplication(
      $grpc.ServiceCall call, $1.CreateApplicationRequest request);

  $async.Future<$1.UpdateApplicationResponse> updateApplication_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$1.UpdateApplicationRequest> $request) async {
    return updateApplication($call, await $request);
  }

  $async.Future<$1.UpdateApplicationResponse> updateApplication(
      $grpc.ServiceCall call, $1.UpdateApplicationRequest request);

  $async.Future<$1.DeployApplicationResponse> deployApplication_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$1.DeployApplicationRequest> $request) async {
    return deployApplication($call, await $request);
  }

  $async.Future<$1.DeployApplicationResponse> deployApplication(
      $grpc.ServiceCall call, $1.DeployApplicationRequest request);

  $async.Future<$1.DeleteApplicationResponse> deleteApplication_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$1.DeleteApplicationRequest> $request) async {
    return deleteApplication($call, await $request);
  }

  $async.Future<$1.DeleteApplicationResponse> deleteApplication(
      $grpc.ServiceCall call, $1.DeleteApplicationRequest request);
}

@$pb.GrpcServiceName('management_services.v1.ApplicationDomainService')
class ApplicationDomainServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  ApplicationDomainServiceClient(super.channel,
      {super.options, super.interceptors});

  $grpc.ResponseFuture<$1.ListApplicationDomainsResponse>
      listApplicationDomains(
    $1.ListApplicationDomainsRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$listApplicationDomains, request,
        options: options);
  }

  $grpc.ResponseStream<$1.StreamApplicationDomainsResponse>
      streamApplicationDomains(
    $1.StreamApplicationDomainsRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createStreamingCall(
        _$streamApplicationDomains, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$1.CreateDomainResponse> createDomain(
    $1.CreateDomainRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$createDomain, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetDomainResponse> getDomain(
    $1.GetDomainRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getDomain, request, options: options);
  }

  $grpc.ResponseFuture<$1.UpdateDomainResponse> updateDomain(
    $1.UpdateDomainRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$updateDomain, request, options: options);
  }

  $grpc.ResponseFuture<$1.VerifyDomainResponse> verifyDomain(
    $1.VerifyDomainRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$verifyDomain, request, options: options);
  }

  $grpc.ResponseFuture<$1.DeleteDomainResponse> deleteDomain(
    $1.DeleteDomainRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$deleteDomain, request, options: options);
  }

  // method descriptors

  static final _$listApplicationDomains = $grpc.ClientMethod<
          $1.ListApplicationDomainsRequest, $1.ListApplicationDomainsResponse>(
      '/management_services.v1.ApplicationDomainService/ListApplicationDomains',
      ($1.ListApplicationDomainsRequest value) => value.writeToBuffer(),
      $1.ListApplicationDomainsResponse.fromBuffer);
  static final _$streamApplicationDomains = $grpc.ClientMethod<
          $1.StreamApplicationDomainsRequest,
          $1.StreamApplicationDomainsResponse>(
      '/management_services.v1.ApplicationDomainService/StreamApplicationDomains',
      ($1.StreamApplicationDomainsRequest value) => value.writeToBuffer(),
      $1.StreamApplicationDomainsResponse.fromBuffer);
  static final _$createDomain =
      $grpc.ClientMethod<$1.CreateDomainRequest, $1.CreateDomainResponse>(
          '/management_services.v1.ApplicationDomainService/CreateDomain',
          ($1.CreateDomainRequest value) => value.writeToBuffer(),
          $1.CreateDomainResponse.fromBuffer);
  static final _$getDomain =
      $grpc.ClientMethod<$1.GetDomainRequest, $1.GetDomainResponse>(
          '/management_services.v1.ApplicationDomainService/GetDomain',
          ($1.GetDomainRequest value) => value.writeToBuffer(),
          $1.GetDomainResponse.fromBuffer);
  static final _$updateDomain =
      $grpc.ClientMethod<$1.UpdateDomainRequest, $1.UpdateDomainResponse>(
          '/management_services.v1.ApplicationDomainService/UpdateDomain',
          ($1.UpdateDomainRequest value) => value.writeToBuffer(),
          $1.UpdateDomainResponse.fromBuffer);
  static final _$verifyDomain =
      $grpc.ClientMethod<$1.VerifyDomainRequest, $1.VerifyDomainResponse>(
          '/management_services.v1.ApplicationDomainService/VerifyDomain',
          ($1.VerifyDomainRequest value) => value.writeToBuffer(),
          $1.VerifyDomainResponse.fromBuffer);
  static final _$deleteDomain =
      $grpc.ClientMethod<$1.DeleteDomainRequest, $1.DeleteDomainResponse>(
          '/management_services.v1.ApplicationDomainService/DeleteDomain',
          ($1.DeleteDomainRequest value) => value.writeToBuffer(),
          $1.DeleteDomainResponse.fromBuffer);
}

@$pb.GrpcServiceName('management_services.v1.ApplicationDomainService')
abstract class ApplicationDomainServiceBase extends $grpc.Service {
  $core.String get $name => 'management_services.v1.ApplicationDomainService';

  ApplicationDomainServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.ListApplicationDomainsRequest,
            $1.ListApplicationDomainsResponse>(
        'ListApplicationDomains',
        listApplicationDomains_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.ListApplicationDomainsRequest.fromBuffer(value),
        ($1.ListApplicationDomainsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.StreamApplicationDomainsRequest,
            $1.StreamApplicationDomainsResponse>(
        'StreamApplicationDomains',
        streamApplicationDomains_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $1.StreamApplicationDomainsRequest.fromBuffer(value),
        ($1.StreamApplicationDomainsResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.CreateDomainRequest, $1.CreateDomainResponse>(
            'CreateDomain',
            createDomain_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.CreateDomainRequest.fromBuffer(value),
            ($1.CreateDomainResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetDomainRequest, $1.GetDomainResponse>(
        'GetDomain',
        getDomain_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetDomainRequest.fromBuffer(value),
        ($1.GetDomainResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.UpdateDomainRequest, $1.UpdateDomainResponse>(
            'UpdateDomain',
            updateDomain_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.UpdateDomainRequest.fromBuffer(value),
            ($1.UpdateDomainResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.VerifyDomainRequest, $1.VerifyDomainResponse>(
            'VerifyDomain',
            verifyDomain_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.VerifyDomainRequest.fromBuffer(value),
            ($1.VerifyDomainResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.DeleteDomainRequest, $1.DeleteDomainResponse>(
            'DeleteDomain',
            deleteDomain_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.DeleteDomainRequest.fromBuffer(value),
            ($1.DeleteDomainResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.ListApplicationDomainsResponse> listApplicationDomains_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$1.ListApplicationDomainsRequest> $request) async {
    return listApplicationDomains($call, await $request);
  }

  $async.Future<$1.ListApplicationDomainsResponse> listApplicationDomains(
      $grpc.ServiceCall call, $1.ListApplicationDomainsRequest request);

  $async.Stream<$1.StreamApplicationDomainsResponse>
      streamApplicationDomains_Pre($grpc.ServiceCall $call,
          $async.Future<$1.StreamApplicationDomainsRequest> $request) async* {
    yield* streamApplicationDomains($call, await $request);
  }

  $async.Stream<$1.StreamApplicationDomainsResponse> streamApplicationDomains(
      $grpc.ServiceCall call, $1.StreamApplicationDomainsRequest request);

  $async.Future<$1.CreateDomainResponse> createDomain_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$1.CreateDomainRequest> $request) async {
    return createDomain($call, await $request);
  }

  $async.Future<$1.CreateDomainResponse> createDomain(
      $grpc.ServiceCall call, $1.CreateDomainRequest request);

  $async.Future<$1.GetDomainResponse> getDomain_Pre($grpc.ServiceCall $call,
      $async.Future<$1.GetDomainRequest> $request) async {
    return getDomain($call, await $request);
  }

  $async.Future<$1.GetDomainResponse> getDomain(
      $grpc.ServiceCall call, $1.GetDomainRequest request);

  $async.Future<$1.UpdateDomainResponse> updateDomain_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$1.UpdateDomainRequest> $request) async {
    return updateDomain($call, await $request);
  }

  $async.Future<$1.UpdateDomainResponse> updateDomain(
      $grpc.ServiceCall call, $1.UpdateDomainRequest request);

  $async.Future<$1.VerifyDomainResponse> verifyDomain_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$1.VerifyDomainRequest> $request) async {
    return verifyDomain($call, await $request);
  }

  $async.Future<$1.VerifyDomainResponse> verifyDomain(
      $grpc.ServiceCall call, $1.VerifyDomainRequest request);

  $async.Future<$1.DeleteDomainResponse> deleteDomain_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$1.DeleteDomainRequest> $request) async {
    return deleteDomain($call, await $request);
  }

  $async.Future<$1.DeleteDomainResponse> deleteDomain(
      $grpc.ServiceCall call, $1.DeleteDomainRequest request);
}

@$pb.GrpcServiceName('management_services.v1.ConfigService')
class ConfigServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  ConfigServiceClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$2.GetOpenIdConfigurationResponse>
      getOpenIdConfiguration(
    $2.GetOpenIdConfigurationRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getOpenIdConfiguration, request,
        options: options);
  }

  // method descriptors

  static final _$getOpenIdConfiguration = $grpc.ClientMethod<
          $2.GetOpenIdConfigurationRequest, $2.GetOpenIdConfigurationResponse>(
      '/management_services.v1.ConfigService/GetOpenIdConfiguration',
      ($2.GetOpenIdConfigurationRequest value) => value.writeToBuffer(),
      $2.GetOpenIdConfigurationResponse.fromBuffer);
}

@$pb.GrpcServiceName('management_services.v1.ConfigService')
abstract class ConfigServiceBase extends $grpc.Service {
  $core.String get $name => 'management_services.v1.ConfigService';

  ConfigServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.GetOpenIdConfigurationRequest,
            $2.GetOpenIdConfigurationResponse>(
        'GetOpenIdConfiguration',
        getOpenIdConfiguration_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.GetOpenIdConfigurationRequest.fromBuffer(value),
        ($2.GetOpenIdConfigurationResponse value) => value.writeToBuffer()));
  }

  $async.Future<$2.GetOpenIdConfigurationResponse> getOpenIdConfiguration_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$2.GetOpenIdConfigurationRequest> $request) async {
    return getOpenIdConfiguration($call, await $request);
  }

  $async.Future<$2.GetOpenIdConfigurationResponse> getOpenIdConfiguration(
      $grpc.ServiceCall call, $2.GetOpenIdConfigurationRequest request);
}
