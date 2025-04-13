//
//  Generated code. Do not modify.
//  source: management/services.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import '../google/protobuf/empty.pb.dart' as $0;
import '../types/entity.pb.dart' as $4;
import '../types/health.pb.dart' as $1;
import '../types/login.pb.dart' as $2;
import 'services.pb.dart' as $5;

export 'services.pb.dart';

@$pb.GrpcServiceName('management_services.HealthService')
class HealthServiceClient extends $grpc.Client {
  static final _$health = $grpc.ClientMethod<$0.Empty, $1.HealthResponse>(
      '/management_services.HealthService/Health',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.HealthResponse.fromBuffer(value));
  static final _$cumulativeHealth = $grpc.ClientMethod<$0.Empty, $5.CumulativeHealthResponse>(
      '/management_services.HealthService/CumulativeHealth',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.CumulativeHealthResponse.fromBuffer(value));

  HealthServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.HealthResponse> health($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$health, request, options: options);
  }

  $grpc.ResponseFuture<$5.CumulativeHealthResponse> cumulativeHealth($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$cumulativeHealth, request, options: options);
  }
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
    $addMethod($grpc.ServiceMethod<$0.Empty, $5.CumulativeHealthResponse>(
        'CumulativeHealth',
        cumulativeHealth_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($5.CumulativeHealthResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.HealthResponse> health_Pre($grpc.ServiceCall $call, $async.Future<$0.Empty> $request) async {
    return health($call, await $request);
  }

  $async.Future<$5.CumulativeHealthResponse> cumulativeHealth_Pre($grpc.ServiceCall $call, $async.Future<$0.Empty> $request) async {
    return cumulativeHealth($call, await $request);
  }

  $async.Future<$1.HealthResponse> health($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$5.CumulativeHealthResponse> cumulativeHealth($grpc.ServiceCall call, $0.Empty request);
}
@$pb.GrpcServiceName('management_services.LoginService')
class LoginServiceClient extends $grpc.Client {
  static final _$loginUser = $grpc.ClientMethod<$2.LoginRequest, $2.LoginResponse>(
      '/management_services.LoginService/LoginUser',
      ($2.LoginRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.LoginResponse.fromBuffer(value));
  static final _$initialize = $grpc.ClientMethod<$2.LoginRequest, $5.RegisterResponse>(
      '/management_services.LoginService/Initialize',
      ($2.LoginRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.RegisterResponse.fromBuffer(value));
  static final _$registerUser = $grpc.ClientMethod<$2.LoginRequest, $5.RegisterResponse>(
      '/management_services.LoginService/RegisterUser',
      ($2.LoginRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.RegisterResponse.fromBuffer(value));
  static final _$isInitialized = $grpc.ClientMethod<$0.Empty, $5.InitializedResponse>(
      '/management_services.LoginService/IsInitialized',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.InitializedResponse.fromBuffer(value));

  LoginServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$2.LoginResponse> loginUser($2.LoginRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$loginUser, request, options: options);
  }

  $grpc.ResponseFuture<$5.RegisterResponse> initialize($2.LoginRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$initialize, request, options: options);
  }

  $grpc.ResponseFuture<$5.RegisterResponse> registerUser($2.LoginRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$registerUser, request, options: options);
  }

  $grpc.ResponseFuture<$5.InitializedResponse> isInitialized($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$isInitialized, request, options: options);
  }
}

@$pb.GrpcServiceName('management_services.LoginService')
abstract class LoginServiceBase extends $grpc.Service {
  $core.String get $name => 'management_services.LoginService';

  LoginServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.LoginRequest, $2.LoginResponse>(
        'LoginUser',
        loginUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.LoginRequest.fromBuffer(value),
        ($2.LoginResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.LoginRequest, $5.RegisterResponse>(
        'Initialize',
        initialize_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.LoginRequest.fromBuffer(value),
        ($5.RegisterResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.LoginRequest, $5.RegisterResponse>(
        'RegisterUser',
        registerUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.LoginRequest.fromBuffer(value),
        ($5.RegisterResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $5.InitializedResponse>(
        'IsInitialized',
        isInitialized_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($5.InitializedResponse value) => value.writeToBuffer()));
  }

  $async.Future<$2.LoginResponse> loginUser_Pre($grpc.ServiceCall $call, $async.Future<$2.LoginRequest> $request) async {
    return loginUser($call, await $request);
  }

  $async.Future<$5.RegisterResponse> initialize_Pre($grpc.ServiceCall $call, $async.Future<$2.LoginRequest> $request) async {
    return initialize($call, await $request);
  }

  $async.Future<$5.RegisterResponse> registerUser_Pre($grpc.ServiceCall $call, $async.Future<$2.LoginRequest> $request) async {
    return registerUser($call, await $request);
  }

  $async.Future<$5.InitializedResponse> isInitialized_Pre($grpc.ServiceCall $call, $async.Future<$0.Empty> $request) async {
    return isInitialized($call, await $request);
  }

  $async.Future<$2.LoginResponse> loginUser($grpc.ServiceCall call, $2.LoginRequest request);
  $async.Future<$5.RegisterResponse> initialize($grpc.ServiceCall call, $2.LoginRequest request);
  $async.Future<$5.RegisterResponse> registerUser($grpc.ServiceCall call, $2.LoginRequest request);
  $async.Future<$5.InitializedResponse> isInitialized($grpc.ServiceCall call, $0.Empty request);
}
@$pb.GrpcServiceName('management_services.AuthService')
class AuthServiceClient extends $grpc.Client {
  static final _$verifyUser = $grpc.ClientMethod<$0.Empty, $5.VerifyUserResponse>(
      '/management_services.AuthService/VerifyUser',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.VerifyUserResponse.fromBuffer(value));
  static final _$revokeKey = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/management_services.AuthService/RevokeKey',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));

  AuthServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$5.VerifyUserResponse> verifyUser($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$verifyUser, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> revokeKey($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$revokeKey, request, options: options);
  }
}

@$pb.GrpcServiceName('management_services.AuthService')
abstract class AuthServiceBase extends $grpc.Service {
  $core.String get $name => 'management_services.AuthService';

  AuthServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $5.VerifyUserResponse>(
        'VerifyUser',
        verifyUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($5.VerifyUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Empty>(
        'RevokeKey',
        revokeKey_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$5.VerifyUserResponse> verifyUser_Pre($grpc.ServiceCall $call, $async.Future<$0.Empty> $request) async {
    return verifyUser($call, await $request);
  }

  $async.Future<$0.Empty> revokeKey_Pre($grpc.ServiceCall $call, $async.Future<$0.Empty> $request) async {
    return revokeKey($call, await $request);
  }

  $async.Future<$5.VerifyUserResponse> verifyUser($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> revokeKey($grpc.ServiceCall call, $0.Empty request);
}
@$pb.GrpcServiceName('management_services.ManagementUserService')
class ManagementUserServiceClient extends $grpc.Client {
  static final _$listUsers = $grpc.ClientMethod<$0.Empty, $5.ManagementUser>(
      '/management_services.ManagementUserService/ListUsers',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.ManagementUser.fromBuffer(value));
  static final _$toggleUserApproval = $grpc.ClientMethod<$5.ToggleUserApprovalRequest, $0.Empty>(
      '/management_services.ManagementUserService/ToggleUserApproval',
      ($5.ToggleUserApprovalRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$deleteUser = $grpc.ClientMethod<$5.DeleteUserRequest, $0.Empty>(
      '/management_services.ManagementUserService/DeleteUser',
      ($5.DeleteUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));

  ManagementUserServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseStream<$5.ManagementUser> listUsers($0.Empty request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$listUsers, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$0.Empty> toggleUserApproval($5.ToggleUserApprovalRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$toggleUserApproval, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> deleteUser($5.DeleteUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteUser, request, options: options);
  }
}

@$pb.GrpcServiceName('management_services.ManagementUserService')
abstract class ManagementUserServiceBase extends $grpc.Service {
  $core.String get $name => 'management_services.ManagementUserService';

  ManagementUserServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $5.ManagementUser>(
        'ListUsers',
        listUsers_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($5.ManagementUser value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.ToggleUserApprovalRequest, $0.Empty>(
        'ToggleUserApproval',
        toggleUserApproval_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.ToggleUserApprovalRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.DeleteUserRequest, $0.Empty>(
        'DeleteUser',
        deleteUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.DeleteUserRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
  }

  $async.Stream<$5.ManagementUser> listUsers_Pre($grpc.ServiceCall $call, $async.Future<$0.Empty> $request) async* {
    yield* listUsers($call, await $request);
  }

  $async.Future<$0.Empty> toggleUserApproval_Pre($grpc.ServiceCall $call, $async.Future<$5.ToggleUserApprovalRequest> $request) async {
    return toggleUserApproval($call, await $request);
  }

  $async.Future<$0.Empty> deleteUser_Pre($grpc.ServiceCall $call, $async.Future<$5.DeleteUserRequest> $request) async {
    return deleteUser($call, await $request);
  }

  $async.Stream<$5.ManagementUser> listUsers($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> toggleUserApproval($grpc.ServiceCall call, $5.ToggleUserApprovalRequest request);
  $async.Future<$0.Empty> deleteUser($grpc.ServiceCall call, $5.DeleteUserRequest request);
}
@$pb.GrpcServiceName('management_services.ApplicationService')
class ApplicationServiceClient extends $grpc.Client {
  static final _$listApplications = $grpc.ClientMethod<$0.Empty, $5.Application>(
      '/management_services.ApplicationService/ListApplications',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.Application.fromBuffer(value));
  static final _$getApplication = $grpc.ClientMethod<$5.GetApplicationRequest, $5.Application>(
      '/management_services.ApplicationService/GetApplication',
      ($5.GetApplicationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.Application.fromBuffer(value));
  static final _$createApplication = $grpc.ClientMethod<$5.CreateApplicationRequest, $5.CreateApplicationResponse>(
      '/management_services.ApplicationService/CreateApplication',
      ($5.CreateApplicationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.CreateApplicationResponse.fromBuffer(value));
  static final _$deleteApplication = $grpc.ClientMethod<$5.DeleteApplicationRequest, $0.Empty>(
      '/management_services.ApplicationService/DeleteApplication',
      ($5.DeleteApplicationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));

  ApplicationServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseStream<$5.Application> listApplications($0.Empty request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$listApplications, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$5.Application> getApplication($5.GetApplicationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getApplication, request, options: options);
  }

  $grpc.ResponseFuture<$5.CreateApplicationResponse> createApplication($5.CreateApplicationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createApplication, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> deleteApplication($5.DeleteApplicationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteApplication, request, options: options);
  }
}

@$pb.GrpcServiceName('management_services.ApplicationService')
abstract class ApplicationServiceBase extends $grpc.Service {
  $core.String get $name => 'management_services.ApplicationService';

  ApplicationServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $5.Application>(
        'ListApplications',
        listApplications_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($5.Application value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.GetApplicationRequest, $5.Application>(
        'GetApplication',
        getApplication_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.GetApplicationRequest.fromBuffer(value),
        ($5.Application value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.CreateApplicationRequest, $5.CreateApplicationResponse>(
        'CreateApplication',
        createApplication_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.CreateApplicationRequest.fromBuffer(value),
        ($5.CreateApplicationResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.DeleteApplicationRequest, $0.Empty>(
        'DeleteApplication',
        deleteApplication_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.DeleteApplicationRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
  }

  $async.Stream<$5.Application> listApplications_Pre($grpc.ServiceCall $call, $async.Future<$0.Empty> $request) async* {
    yield* listApplications($call, await $request);
  }

  $async.Future<$5.Application> getApplication_Pre($grpc.ServiceCall $call, $async.Future<$5.GetApplicationRequest> $request) async {
    return getApplication($call, await $request);
  }

  $async.Future<$5.CreateApplicationResponse> createApplication_Pre($grpc.ServiceCall $call, $async.Future<$5.CreateApplicationRequest> $request) async {
    return createApplication($call, await $request);
  }

  $async.Future<$0.Empty> deleteApplication_Pre($grpc.ServiceCall $call, $async.Future<$5.DeleteApplicationRequest> $request) async {
    return deleteApplication($call, await $request);
  }

  $async.Stream<$5.Application> listApplications($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$5.Application> getApplication($grpc.ServiceCall call, $5.GetApplicationRequest request);
  $async.Future<$5.CreateApplicationResponse> createApplication($grpc.ServiceCall call, $5.CreateApplicationRequest request);
  $async.Future<$0.Empty> deleteApplication($grpc.ServiceCall call, $5.DeleteApplicationRequest request);
}
@$pb.GrpcServiceName('management_services.ApplicationDomainService')
class ApplicationDomainServiceClient extends $grpc.Client {
  static final _$listApplicationDomains = $grpc.ClientMethod<$5.ListApplicationDomainRequest, $5.Domain>(
      '/management_services.ApplicationDomainService/ListApplicationDomains',
      ($5.ListApplicationDomainRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.Domain.fromBuffer(value));
  static final _$createDomain = $grpc.ClientMethod<$5.CreateDomainRequest, $5.Domain>(
      '/management_services.ApplicationDomainService/CreateDomain',
      ($5.CreateDomainRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.Domain.fromBuffer(value));
  static final _$getDomain = $grpc.ClientMethod<$5.GetDomainRequest, $5.Domain>(
      '/management_services.ApplicationDomainService/GetDomain',
      ($5.GetDomainRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.Domain.fromBuffer(value));
  static final _$updateDomain = $grpc.ClientMethod<$5.UpdateDomainRequest, $5.Domain>(
      '/management_services.ApplicationDomainService/UpdateDomain',
      ($5.UpdateDomainRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.Domain.fromBuffer(value));
  static final _$verifyDomain = $grpc.ClientMethod<$5.GetDomainRequest, $0.Empty>(
      '/management_services.ApplicationDomainService/VerifyDomain',
      ($5.GetDomainRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$deleteDomain = $grpc.ClientMethod<$5.GetDomainRequest, $0.Empty>(
      '/management_services.ApplicationDomainService/DeleteDomain',
      ($5.GetDomainRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));

  ApplicationDomainServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseStream<$5.Domain> listApplicationDomains($5.ListApplicationDomainRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$listApplicationDomains, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$5.Domain> createDomain($5.CreateDomainRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createDomain, request, options: options);
  }

  $grpc.ResponseFuture<$5.Domain> getDomain($5.GetDomainRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getDomain, request, options: options);
  }

  $grpc.ResponseFuture<$5.Domain> updateDomain($5.UpdateDomainRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateDomain, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> verifyDomain($5.GetDomainRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$verifyDomain, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> deleteDomain($5.GetDomainRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteDomain, request, options: options);
  }
}

@$pb.GrpcServiceName('management_services.ApplicationDomainService')
abstract class ApplicationDomainServiceBase extends $grpc.Service {
  $core.String get $name => 'management_services.ApplicationDomainService';

  ApplicationDomainServiceBase() {
    $addMethod($grpc.ServiceMethod<$5.ListApplicationDomainRequest, $5.Domain>(
        'ListApplicationDomains',
        listApplicationDomains_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $5.ListApplicationDomainRequest.fromBuffer(value),
        ($5.Domain value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.CreateDomainRequest, $5.Domain>(
        'CreateDomain',
        createDomain_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.CreateDomainRequest.fromBuffer(value),
        ($5.Domain value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.GetDomainRequest, $5.Domain>(
        'GetDomain',
        getDomain_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.GetDomainRequest.fromBuffer(value),
        ($5.Domain value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UpdateDomainRequest, $5.Domain>(
        'UpdateDomain',
        updateDomain_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.UpdateDomainRequest.fromBuffer(value),
        ($5.Domain value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.GetDomainRequest, $0.Empty>(
        'VerifyDomain',
        verifyDomain_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.GetDomainRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.GetDomainRequest, $0.Empty>(
        'DeleteDomain',
        deleteDomain_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.GetDomainRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
  }

  $async.Stream<$5.Domain> listApplicationDomains_Pre($grpc.ServiceCall $call, $async.Future<$5.ListApplicationDomainRequest> $request) async* {
    yield* listApplicationDomains($call, await $request);
  }

  $async.Future<$5.Domain> createDomain_Pre($grpc.ServiceCall $call, $async.Future<$5.CreateDomainRequest> $request) async {
    return createDomain($call, await $request);
  }

  $async.Future<$5.Domain> getDomain_Pre($grpc.ServiceCall $call, $async.Future<$5.GetDomainRequest> $request) async {
    return getDomain($call, await $request);
  }

  $async.Future<$5.Domain> updateDomain_Pre($grpc.ServiceCall $call, $async.Future<$5.UpdateDomainRequest> $request) async {
    return updateDomain($call, await $request);
  }

  $async.Future<$0.Empty> verifyDomain_Pre($grpc.ServiceCall $call, $async.Future<$5.GetDomainRequest> $request) async {
    return verifyDomain($call, await $request);
  }

  $async.Future<$0.Empty> deleteDomain_Pre($grpc.ServiceCall $call, $async.Future<$5.GetDomainRequest> $request) async {
    return deleteDomain($call, await $request);
  }

  $async.Stream<$5.Domain> listApplicationDomains($grpc.ServiceCall call, $5.ListApplicationDomainRequest request);
  $async.Future<$5.Domain> createDomain($grpc.ServiceCall call, $5.CreateDomainRequest request);
  $async.Future<$5.Domain> getDomain($grpc.ServiceCall call, $5.GetDomainRequest request);
  $async.Future<$5.Domain> updateDomain($grpc.ServiceCall call, $5.UpdateDomainRequest request);
  $async.Future<$0.Empty> verifyDomain($grpc.ServiceCall call, $5.GetDomainRequest request);
  $async.Future<$0.Empty> deleteDomain($grpc.ServiceCall call, $5.GetDomainRequest request);
}
@$pb.GrpcServiceName('management_services.ApplicationUserService')
class ApplicationUserServiceClient extends $grpc.Client {
  static final _$listUsers = $grpc.ClientMethod<$5.ListUsersRequest, $5.ApplicationUser>(
      '/management_services.ApplicationUserService/ListUsers',
      ($5.ListUsersRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.ApplicationUser.fromBuffer(value));
  static final _$toggleUserApproval = $grpc.ClientMethod<$5.ApplicationToggleUserApprovalRequest, $0.Empty>(
      '/management_services.ApplicationUserService/ToggleUserApproval',
      ($5.ApplicationToggleUserApprovalRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$registerUser = $grpc.ClientMethod<$5.ApplicationUserRegisterRequest, $5.ApplicationUserRegisterResponse>(
      '/management_services.ApplicationUserService/RegisterUser',
      ($5.ApplicationUserRegisterRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.ApplicationUserRegisterResponse.fromBuffer(value));
  static final _$getUser = $grpc.ClientMethod<$5.ApplicationUserGetRequest, $5.ApplicationUser>(
      '/management_services.ApplicationUserService/GetUser',
      ($5.ApplicationUserGetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.ApplicationUser.fromBuffer(value));
  static final _$generateKey = $grpc.ClientMethod<$5.ApplicationUserGetRequest, $2.GenerateKeyResponse>(
      '/management_services.ApplicationUserService/GenerateKey',
      ($5.ApplicationUserGetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.GenerateKeyResponse.fromBuffer(value));
  static final _$revokeKey = $grpc.ClientMethod<$5.ApplicationUserGetRequest, $0.Empty>(
      '/management_services.ApplicationUserService/RevokeKey',
      ($5.ApplicationUserGetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));

  ApplicationUserServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseStream<$5.ApplicationUser> listUsers($5.ListUsersRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$listUsers, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$0.Empty> toggleUserApproval($5.ApplicationToggleUserApprovalRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$toggleUserApproval, request, options: options);
  }

  $grpc.ResponseFuture<$5.ApplicationUserRegisterResponse> registerUser($5.ApplicationUserRegisterRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$registerUser, request, options: options);
  }

  $grpc.ResponseFuture<$5.ApplicationUser> getUser($5.ApplicationUserGetRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUser, request, options: options);
  }

  $grpc.ResponseFuture<$2.GenerateKeyResponse> generateKey($5.ApplicationUserGetRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$generateKey, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> revokeKey($5.ApplicationUserGetRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$revokeKey, request, options: options);
  }
}

@$pb.GrpcServiceName('management_services.ApplicationUserService')
abstract class ApplicationUserServiceBase extends $grpc.Service {
  $core.String get $name => 'management_services.ApplicationUserService';

  ApplicationUserServiceBase() {
    $addMethod($grpc.ServiceMethod<$5.ListUsersRequest, $5.ApplicationUser>(
        'ListUsers',
        listUsers_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $5.ListUsersRequest.fromBuffer(value),
        ($5.ApplicationUser value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.ApplicationToggleUserApprovalRequest, $0.Empty>(
        'ToggleUserApproval',
        toggleUserApproval_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.ApplicationToggleUserApprovalRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.ApplicationUserRegisterRequest, $5.ApplicationUserRegisterResponse>(
        'RegisterUser',
        registerUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.ApplicationUserRegisterRequest.fromBuffer(value),
        ($5.ApplicationUserRegisterResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.ApplicationUserGetRequest, $5.ApplicationUser>(
        'GetUser',
        getUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.ApplicationUserGetRequest.fromBuffer(value),
        ($5.ApplicationUser value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.ApplicationUserGetRequest, $2.GenerateKeyResponse>(
        'GenerateKey',
        generateKey_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.ApplicationUserGetRequest.fromBuffer(value),
        ($2.GenerateKeyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.ApplicationUserGetRequest, $0.Empty>(
        'RevokeKey',
        revokeKey_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.ApplicationUserGetRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
  }

  $async.Stream<$5.ApplicationUser> listUsers_Pre($grpc.ServiceCall $call, $async.Future<$5.ListUsersRequest> $request) async* {
    yield* listUsers($call, await $request);
  }

  $async.Future<$0.Empty> toggleUserApproval_Pre($grpc.ServiceCall $call, $async.Future<$5.ApplicationToggleUserApprovalRequest> $request) async {
    return toggleUserApproval($call, await $request);
  }

  $async.Future<$5.ApplicationUserRegisterResponse> registerUser_Pre($grpc.ServiceCall $call, $async.Future<$5.ApplicationUserRegisterRequest> $request) async {
    return registerUser($call, await $request);
  }

  $async.Future<$5.ApplicationUser> getUser_Pre($grpc.ServiceCall $call, $async.Future<$5.ApplicationUserGetRequest> $request) async {
    return getUser($call, await $request);
  }

  $async.Future<$2.GenerateKeyResponse> generateKey_Pre($grpc.ServiceCall $call, $async.Future<$5.ApplicationUserGetRequest> $request) async {
    return generateKey($call, await $request);
  }

  $async.Future<$0.Empty> revokeKey_Pre($grpc.ServiceCall $call, $async.Future<$5.ApplicationUserGetRequest> $request) async {
    return revokeKey($call, await $request);
  }

  $async.Stream<$5.ApplicationUser> listUsers($grpc.ServiceCall call, $5.ListUsersRequest request);
  $async.Future<$0.Empty> toggleUserApproval($grpc.ServiceCall call, $5.ApplicationToggleUserApprovalRequest request);
  $async.Future<$5.ApplicationUserRegisterResponse> registerUser($grpc.ServiceCall call, $5.ApplicationUserRegisterRequest request);
  $async.Future<$5.ApplicationUser> getUser($grpc.ServiceCall call, $5.ApplicationUserGetRequest request);
  $async.Future<$2.GenerateKeyResponse> generateKey($grpc.ServiceCall call, $5.ApplicationUserGetRequest request);
  $async.Future<$0.Empty> revokeKey($grpc.ServiceCall call, $5.ApplicationUserGetRequest request);
}
@$pb.GrpcServiceName('management_services.EntityService')
class EntityServiceClient extends $grpc.Client {
  static final _$listEntityTypes = $grpc.ClientMethod<$5.ListEntityTypesRequest, $4.ListEntityTypesResponse>(
      '/management_services.EntityService/ListEntityTypes',
      ($5.ListEntityTypesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.ListEntityTypesResponse.fromBuffer(value));
  static final _$searchEntityHistory = $grpc.ClientMethod<$5.AppUserSearchEntityHistoryRequest, $4.EntityHistory>(
      '/management_services.EntityService/SearchEntityHistory',
      ($5.AppUserSearchEntityHistoryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.EntityHistory.fromBuffer(value));
  static final _$streamEntityAction = $grpc.ClientMethod<$5.AppUserEntityActionRequest, $4.EntityActionResponse>(
      '/management_services.EntityService/StreamEntityAction',
      ($5.AppUserEntityActionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.EntityActionResponse.fromBuffer(value));
  static final _$entityAction = $grpc.ClientMethod<$5.AppUserEntityActionRequest, $4.EntityActionResponse>(
      '/management_services.EntityService/EntityAction',
      ($5.AppUserEntityActionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.EntityActionResponse.fromBuffer(value));

  EntityServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$4.ListEntityTypesResponse> listEntityTypes($5.ListEntityTypesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listEntityTypes, request, options: options);
  }

  $grpc.ResponseStream<$4.EntityHistory> searchEntityHistory($5.AppUserSearchEntityHistoryRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$searchEntityHistory, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseStream<$4.EntityActionResponse> streamEntityAction($async.Stream<$5.AppUserEntityActionRequest> request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$streamEntityAction, request, options: options);
  }

  $grpc.ResponseFuture<$4.EntityActionResponse> entityAction($5.AppUserEntityActionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$entityAction, request, options: options);
  }
}

@$pb.GrpcServiceName('management_services.EntityService')
abstract class EntityServiceBase extends $grpc.Service {
  $core.String get $name => 'management_services.EntityService';

  EntityServiceBase() {
    $addMethod($grpc.ServiceMethod<$5.ListEntityTypesRequest, $4.ListEntityTypesResponse>(
        'ListEntityTypes',
        listEntityTypes_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.ListEntityTypesRequest.fromBuffer(value),
        ($4.ListEntityTypesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.AppUserSearchEntityHistoryRequest, $4.EntityHistory>(
        'SearchEntityHistory',
        searchEntityHistory_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $5.AppUserSearchEntityHistoryRequest.fromBuffer(value),
        ($4.EntityHistory value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.AppUserEntityActionRequest, $4.EntityActionResponse>(
        'StreamEntityAction',
        streamEntityAction,
        true,
        true,
        ($core.List<$core.int> value) => $5.AppUserEntityActionRequest.fromBuffer(value),
        ($4.EntityActionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.AppUserEntityActionRequest, $4.EntityActionResponse>(
        'EntityAction',
        entityAction_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.AppUserEntityActionRequest.fromBuffer(value),
        ($4.EntityActionResponse value) => value.writeToBuffer()));
  }

  $async.Future<$4.ListEntityTypesResponse> listEntityTypes_Pre($grpc.ServiceCall $call, $async.Future<$5.ListEntityTypesRequest> $request) async {
    return listEntityTypes($call, await $request);
  }

  $async.Stream<$4.EntityHistory> searchEntityHistory_Pre($grpc.ServiceCall $call, $async.Future<$5.AppUserSearchEntityHistoryRequest> $request) async* {
    yield* searchEntityHistory($call, await $request);
  }

  $async.Future<$4.EntityActionResponse> entityAction_Pre($grpc.ServiceCall $call, $async.Future<$5.AppUserEntityActionRequest> $request) async {
    return entityAction($call, await $request);
  }

  $async.Future<$4.ListEntityTypesResponse> listEntityTypes($grpc.ServiceCall call, $5.ListEntityTypesRequest request);
  $async.Stream<$4.EntityHistory> searchEntityHistory($grpc.ServiceCall call, $5.AppUserSearchEntityHistoryRequest request);
  $async.Stream<$4.EntityActionResponse> streamEntityAction($grpc.ServiceCall call, $async.Stream<$5.AppUserEntityActionRequest> request);
  $async.Future<$4.EntityActionResponse> entityAction($grpc.ServiceCall call, $5.AppUserEntityActionRequest request);
}
