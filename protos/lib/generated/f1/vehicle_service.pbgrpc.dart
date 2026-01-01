// This is a generated file - do not edit.
//
// Generated from f1/vehicle_service.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'message.pb.dart' as $1;
import 'vehicle_service.pb.dart' as $0;

export 'vehicle_service.pb.dart';

/// Vehicle Service Definition
@$pb.GrpcServiceName('f1.VehicleService')
class VehicleServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  VehicleServiceClient(super.channel, {super.options, super.interceptors});

  /// Subscribe to vehicle messages stream
  $grpc.ResponseStream<$1.VehicleMessage> subscribe(
    $0.SubscribeRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createStreamingCall(
        _$subscribe, $async.Stream.fromIterable([request]),
        options: options);
  }

  // method descriptors

  static final _$subscribe =
      $grpc.ClientMethod<$0.SubscribeRequest, $1.VehicleMessage>(
          '/f1.VehicleService/Subscribe',
          ($0.SubscribeRequest value) => value.writeToBuffer(),
          $1.VehicleMessage.fromBuffer);
}

@$pb.GrpcServiceName('f1.VehicleService')
abstract class VehicleServiceBase extends $grpc.Service {
  $core.String get $name => 'f1.VehicleService';

  VehicleServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.SubscribeRequest, $1.VehicleMessage>(
        'Subscribe',
        subscribe_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.SubscribeRequest.fromBuffer(value),
        ($1.VehicleMessage value) => value.writeToBuffer()));
  }

  $async.Stream<$1.VehicleMessage> subscribe_Pre($grpc.ServiceCall $call,
      $async.Future<$0.SubscribeRequest> $request) async* {
    yield* subscribe($call, await $request);
  }

  $async.Stream<$1.VehicleMessage> subscribe(
      $grpc.ServiceCall call, $0.SubscribeRequest request);
}
