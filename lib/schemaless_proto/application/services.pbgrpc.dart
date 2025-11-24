// This is a generated file - do not edit.
//
// Generated from application/services.proto.

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
import '../types/entity.pb.dart' as $3;
import '../types/health.pb.dart' as $1;
import 'services.pb.dart' as $2;

export 'services.pb.dart';

@$pb.GrpcServiceName('application_services.HealthService')
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

  // method descriptors

  static final _$health = $grpc.ClientMethod<$0.Empty, $1.HealthResponse>(
      '/application_services.HealthService/Health',
      ($0.Empty value) => value.writeToBuffer(),
      $1.HealthResponse.fromBuffer);
}

@$pb.GrpcServiceName('application_services.HealthService')
abstract class HealthServiceBase extends $grpc.Service {
  $core.String get $name => 'application_services.HealthService';

  HealthServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.HealthResponse>(
        'Health',
        health_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.HealthResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.HealthResponse> health_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Empty> $request) async {
    return health($call, await $request);
  }

  $async.Future<$1.HealthResponse> health(
      $grpc.ServiceCall call, $0.Empty request);
}

@$pb.GrpcServiceName('application_services.AuthService')
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
          '/application_services.AuthService/VerifyUser',
          ($0.Empty value) => value.writeToBuffer(),
          $2.VerifyUserResponse.fromBuffer);
}

@$pb.GrpcServiceName('application_services.AuthService')
abstract class AuthServiceBase extends $grpc.Service {
  $core.String get $name => 'application_services.AuthService';

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

@$pb.GrpcServiceName('application_services.EntityService')
class EntityServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  EntityServiceClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$3.ListEntityTypesResponse> listEntityTypes(
    $0.Empty request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$listEntityTypes, request, options: options);
  }

  $grpc.ResponseStream<$3.EntityHistory> streamEntityHistory(
    $3.SearchEntityHistoryRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createStreamingCall(
        _$streamEntityHistory, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$3.EntityActionResponse> streamEntityAction(
    $async.Stream<$3.EntityActionRequest> request, {
    $grpc.CallOptions? options,
  }) {
    return $createStreamingCall(_$streamEntityAction, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.Empty> entityAction(
    $3.EntityActionRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$entityAction, request, options: options);
  }

  // method descriptors

  static final _$listEntityTypes =
      $grpc.ClientMethod<$0.Empty, $3.ListEntityTypesResponse>(
          '/application_services.EntityService/ListEntityTypes',
          ($0.Empty value) => value.writeToBuffer(),
          $3.ListEntityTypesResponse.fromBuffer);
  static final _$streamEntityHistory =
      $grpc.ClientMethod<$3.SearchEntityHistoryRequest, $3.EntityHistory>(
          '/application_services.EntityService/StreamEntityHistory',
          ($3.SearchEntityHistoryRequest value) => value.writeToBuffer(),
          $3.EntityHistory.fromBuffer);
  static final _$streamEntityAction =
      $grpc.ClientMethod<$3.EntityActionRequest, $3.EntityActionResponse>(
          '/application_services.EntityService/StreamEntityAction',
          ($3.EntityActionRequest value) => value.writeToBuffer(),
          $3.EntityActionResponse.fromBuffer);
  static final _$entityAction =
      $grpc.ClientMethod<$3.EntityActionRequest, $0.Empty>(
          '/application_services.EntityService/EntityAction',
          ($3.EntityActionRequest value) => value.writeToBuffer(),
          $0.Empty.fromBuffer);
}

@$pb.GrpcServiceName('application_services.EntityService')
abstract class EntityServiceBase extends $grpc.Service {
  $core.String get $name => 'application_services.EntityService';

  EntityServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $3.ListEntityTypesResponse>(
        'ListEntityTypes',
        listEntityTypes_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($3.ListEntityTypesResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$3.SearchEntityHistoryRequest, $3.EntityHistory>(
            'StreamEntityHistory',
            streamEntityHistory_Pre,
            false,
            true,
            ($core.List<$core.int> value) =>
                $3.SearchEntityHistoryRequest.fromBuffer(value),
            ($3.EntityHistory value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$3.EntityActionRequest, $3.EntityActionResponse>(
            'StreamEntityAction',
            streamEntityAction,
            true,
            true,
            ($core.List<$core.int> value) =>
                $3.EntityActionRequest.fromBuffer(value),
            ($3.EntityActionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.EntityActionRequest, $0.Empty>(
        'EntityAction',
        entityAction_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $3.EntityActionRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$3.ListEntityTypesResponse> listEntityTypes_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Empty> $request) async {
    return listEntityTypes($call, await $request);
  }

  $async.Future<$3.ListEntityTypesResponse> listEntityTypes(
      $grpc.ServiceCall call, $0.Empty request);

  $async.Stream<$3.EntityHistory> streamEntityHistory_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$3.SearchEntityHistoryRequest> $request) async* {
    yield* streamEntityHistory($call, await $request);
  }

  $async.Stream<$3.EntityHistory> streamEntityHistory(
      $grpc.ServiceCall call, $3.SearchEntityHistoryRequest request);

  $async.Stream<$3.EntityActionResponse> streamEntityAction(
      $grpc.ServiceCall call, $async.Stream<$3.EntityActionRequest> request);

  $async.Future<$0.Empty> entityAction_Pre($grpc.ServiceCall $call,
      $async.Future<$3.EntityActionRequest> $request) async {
    return entityAction($call, await $request);
  }

  $async.Future<$0.Empty> entityAction(
      $grpc.ServiceCall call, $3.EntityActionRequest request);
}
