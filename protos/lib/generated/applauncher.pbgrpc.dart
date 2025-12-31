///
//  Generated code. Do not modify.
//  source: applauncher.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'applauncher.pb.dart' as $0;
export 'applauncher.pb.dart';

class AppLauncherClient extends $grpc.Client {
  static final _$startApplication =
      $grpc.ClientMethod<$0.StartRequest, $0.StartResponse>(
          '/automotivegradelinux.AppLauncher/StartApplication',
          ($0.StartRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.StartResponse.fromBuffer(value));
  static final _$listApplications =
      $grpc.ClientMethod<$0.ListRequest, $0.ListResponse>(
          '/automotivegradelinux.AppLauncher/ListApplications',
          ($0.ListRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.ListResponse.fromBuffer(value));
  static final _$getStatusEvents =
      $grpc.ClientMethod<$0.StatusRequest, $0.StatusResponse>(
          '/automotivegradelinux.AppLauncher/GetStatusEvents',
          ($0.StatusRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.StatusResponse.fromBuffer(value));

  AppLauncherClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.StartResponse> startApplication(
      $0.StartRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$startApplication, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListResponse> listApplications($0.ListRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listApplications, request, options: options);
  }

  $grpc.ResponseStream<$0.StatusResponse> getStatusEvents(
      $0.StatusRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getStatusEvents, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class AppLauncherServiceBase extends $grpc.Service {
  $core.String get $name => 'automotivegradelinux.AppLauncher';

  AppLauncherServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.StartRequest, $0.StartResponse>(
        'StartApplication',
        startApplication_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.StartRequest.fromBuffer(value),
        ($0.StartResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListRequest, $0.ListResponse>(
        'ListApplications',
        listApplications_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListRequest.fromBuffer(value),
        ($0.ListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StatusRequest, $0.StatusResponse>(
        'GetStatusEvents',
        getStatusEvents_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.StatusRequest.fromBuffer(value),
        ($0.StatusResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.StartResponse> startApplication_Pre(
      $grpc.ServiceCall call, $async.Future<$0.StartRequest> request) async {
    return startApplication(call, await request);
  }

  $async.Future<$0.ListResponse> listApplications_Pre(
      $grpc.ServiceCall call, $async.Future<$0.ListRequest> request) async {
    return listApplications(call, await request);
  }

  $async.Stream<$0.StatusResponse> getStatusEvents_Pre(
      $grpc.ServiceCall call, $async.Future<$0.StatusRequest> request) async* {
    yield* getStatusEvents(call, await request);
  }

  $async.Future<$0.StartResponse> startApplication(
      $grpc.ServiceCall call, $0.StartRequest request);
  $async.Future<$0.ListResponse> listApplications(
      $grpc.ServiceCall call, $0.ListRequest request);
  $async.Stream<$0.StatusResponse> getStatusEvents(
      $grpc.ServiceCall call, $0.StatusRequest request);
}
