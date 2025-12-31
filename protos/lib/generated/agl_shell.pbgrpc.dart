///
//  Generated code. Do not modify.
//  source: agl_shell.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'agl_shell.pb.dart' as $0;
export 'agl_shell.pb.dart';

class AglShellManagerServiceClient extends $grpc.Client {
  static final _$activateApp =
      $grpc.ClientMethod<$0.ActivateRequest, $0.ActivateResponse>(
          '/agl_shell_ipc.AglShellManagerService/ActivateApp',
          ($0.ActivateRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ActivateResponse.fromBuffer(value));
  static final _$deactivateApp =
      $grpc.ClientMethod<$0.DeactivateRequest, $0.DeactivateResponse>(
          '/agl_shell_ipc.AglShellManagerService/DeactivateApp',
          ($0.DeactivateRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.DeactivateResponse.fromBuffer(value));
  static final _$setAppSplit =
      $grpc.ClientMethod<$0.SplitRequest, $0.SplitResponse>(
          '/agl_shell_ipc.AglShellManagerService/SetAppSplit',
          ($0.SplitRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.SplitResponse.fromBuffer(value));
  static final _$setAppFloat =
      $grpc.ClientMethod<$0.FloatRequest, $0.FloatResponse>(
          '/agl_shell_ipc.AglShellManagerService/SetAppFloat',
          ($0.FloatRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.FloatResponse.fromBuffer(value));
  static final _$setAppFullscreen =
      $grpc.ClientMethod<$0.FullscreenRequest, $0.FullscreenResponse>(
          '/agl_shell_ipc.AglShellManagerService/SetAppFullscreen',
          ($0.FullscreenRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.FullscreenResponse.fromBuffer(value));
  static final _$appStatusState =
      $grpc.ClientMethod<$0.AppStateRequest, $0.AppStateResponse>(
          '/agl_shell_ipc.AglShellManagerService/AppStatusState',
          ($0.AppStateRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AppStateResponse.fromBuffer(value));
  static final _$getOutputs =
      $grpc.ClientMethod<$0.OutputRequest, $0.ListOutputResponse>(
          '/agl_shell_ipc.AglShellManagerService/GetOutputs',
          ($0.OutputRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ListOutputResponse.fromBuffer(value));
  static final _$setAppNormal =
      $grpc.ClientMethod<$0.NormalRequest, $0.NormalResponse>(
          '/agl_shell_ipc.AglShellManagerService/SetAppNormal',
          ($0.NormalRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.NormalResponse.fromBuffer(value));
  static final _$setAppOnOutput =
      $grpc.ClientMethod<$0.AppOnOutputRequest, $0.AppOnOutputResponse>(
          '/agl_shell_ipc.AglShellManagerService/SetAppOnOutput',
          ($0.AppOnOutputRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AppOnOutputResponse.fromBuffer(value));
  static final _$setAppPosition =
      $grpc.ClientMethod<$0.AppPositionRequest, $0.AppPositionResponse>(
          '/agl_shell_ipc.AglShellManagerService/SetAppPosition',
          ($0.AppPositionRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AppPositionResponse.fromBuffer(value));
  static final _$setAppScale =
      $grpc.ClientMethod<$0.AppScaleRequest, $0.AppScaleResponse>(
          '/agl_shell_ipc.AglShellManagerService/SetAppScale',
          ($0.AppScaleRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AppScaleResponse.fromBuffer(value));

  AglShellManagerServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.ActivateResponse> activateApp(
      $0.ActivateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$activateApp, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeactivateResponse> deactivateApp(
      $0.DeactivateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deactivateApp, request, options: options);
  }

  $grpc.ResponseFuture<$0.SplitResponse> setAppSplit($0.SplitRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setAppSplit, request, options: options);
  }

  $grpc.ResponseFuture<$0.FloatResponse> setAppFloat($0.FloatRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setAppFloat, request, options: options);
  }

  $grpc.ResponseFuture<$0.FullscreenResponse> setAppFullscreen(
      $0.FullscreenRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setAppFullscreen, request, options: options);
  }

  $grpc.ResponseStream<$0.AppStateResponse> appStatusState(
      $0.AppStateRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$appStatusState, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.ListOutputResponse> getOutputs(
      $0.OutputRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getOutputs, request, options: options);
  }

  $grpc.ResponseFuture<$0.NormalResponse> setAppNormal($0.NormalRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setAppNormal, request, options: options);
  }

  $grpc.ResponseFuture<$0.AppOnOutputResponse> setAppOnOutput(
      $0.AppOnOutputRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setAppOnOutput, request, options: options);
  }

  $grpc.ResponseFuture<$0.AppPositionResponse> setAppPosition(
      $0.AppPositionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setAppPosition, request, options: options);
  }

  $grpc.ResponseFuture<$0.AppScaleResponse> setAppScale(
      $0.AppScaleRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setAppScale, request, options: options);
  }
}

abstract class AglShellManagerServiceBase extends $grpc.Service {
  $core.String get $name => 'agl_shell_ipc.AglShellManagerService';

  AglShellManagerServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ActivateRequest, $0.ActivateResponse>(
        'ActivateApp',
        activateApp_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ActivateRequest.fromBuffer(value),
        ($0.ActivateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeactivateRequest, $0.DeactivateResponse>(
        'DeactivateApp',
        deactivateApp_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeactivateRequest.fromBuffer(value),
        ($0.DeactivateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SplitRequest, $0.SplitResponse>(
        'SetAppSplit',
        setAppSplit_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SplitRequest.fromBuffer(value),
        ($0.SplitResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FloatRequest, $0.FloatResponse>(
        'SetAppFloat',
        setAppFloat_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.FloatRequest.fromBuffer(value),
        ($0.FloatResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FullscreenRequest, $0.FullscreenResponse>(
        'SetAppFullscreen',
        setAppFullscreen_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.FullscreenRequest.fromBuffer(value),
        ($0.FullscreenResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AppStateRequest, $0.AppStateResponse>(
        'AppStatusState',
        appStatusState_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.AppStateRequest.fromBuffer(value),
        ($0.AppStateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.OutputRequest, $0.ListOutputResponse>(
        'GetOutputs',
        getOutputs_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.OutputRequest.fromBuffer(value),
        ($0.ListOutputResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.NormalRequest, $0.NormalResponse>(
        'SetAppNormal',
        setAppNormal_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.NormalRequest.fromBuffer(value),
        ($0.NormalResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.AppOnOutputRequest, $0.AppOnOutputResponse>(
            'SetAppOnOutput',
            setAppOnOutput_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.AppOnOutputRequest.fromBuffer(value),
            ($0.AppOnOutputResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.AppPositionRequest, $0.AppPositionResponse>(
            'SetAppPosition',
            setAppPosition_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.AppPositionRequest.fromBuffer(value),
            ($0.AppPositionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AppScaleRequest, $0.AppScaleResponse>(
        'SetAppScale',
        setAppScale_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AppScaleRequest.fromBuffer(value),
        ($0.AppScaleResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.ActivateResponse> activateApp_Pre(
      $grpc.ServiceCall call, $async.Future<$0.ActivateRequest> request) async {
    return activateApp(call, await request);
  }

  $async.Future<$0.DeactivateResponse> deactivateApp_Pre($grpc.ServiceCall call,
      $async.Future<$0.DeactivateRequest> request) async {
    return deactivateApp(call, await request);
  }

  $async.Future<$0.SplitResponse> setAppSplit_Pre(
      $grpc.ServiceCall call, $async.Future<$0.SplitRequest> request) async {
    return setAppSplit(call, await request);
  }

  $async.Future<$0.FloatResponse> setAppFloat_Pre(
      $grpc.ServiceCall call, $async.Future<$0.FloatRequest> request) async {
    return setAppFloat(call, await request);
  }

  $async.Future<$0.FullscreenResponse> setAppFullscreen_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.FullscreenRequest> request) async {
    return setAppFullscreen(call, await request);
  }

  $async.Stream<$0.AppStateResponse> appStatusState_Pre($grpc.ServiceCall call,
      $async.Future<$0.AppStateRequest> request) async* {
    yield* appStatusState(call, await request);
  }

  $async.Future<$0.ListOutputResponse> getOutputs_Pre(
      $grpc.ServiceCall call, $async.Future<$0.OutputRequest> request) async {
    return getOutputs(call, await request);
  }

  $async.Future<$0.NormalResponse> setAppNormal_Pre(
      $grpc.ServiceCall call, $async.Future<$0.NormalRequest> request) async {
    return setAppNormal(call, await request);
  }

  $async.Future<$0.AppOnOutputResponse> setAppOnOutput_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AppOnOutputRequest> request) async {
    return setAppOnOutput(call, await request);
  }

  $async.Future<$0.AppPositionResponse> setAppPosition_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AppPositionRequest> request) async {
    return setAppPosition(call, await request);
  }

  $async.Future<$0.AppScaleResponse> setAppScale_Pre(
      $grpc.ServiceCall call, $async.Future<$0.AppScaleRequest> request) async {
    return setAppScale(call, await request);
  }

  $async.Future<$0.ActivateResponse> activateApp(
      $grpc.ServiceCall call, $0.ActivateRequest request);
  $async.Future<$0.DeactivateResponse> deactivateApp(
      $grpc.ServiceCall call, $0.DeactivateRequest request);
  $async.Future<$0.SplitResponse> setAppSplit(
      $grpc.ServiceCall call, $0.SplitRequest request);
  $async.Future<$0.FloatResponse> setAppFloat(
      $grpc.ServiceCall call, $0.FloatRequest request);
  $async.Future<$0.FullscreenResponse> setAppFullscreen(
      $grpc.ServiceCall call, $0.FullscreenRequest request);
  $async.Stream<$0.AppStateResponse> appStatusState(
      $grpc.ServiceCall call, $0.AppStateRequest request);
  $async.Future<$0.ListOutputResponse> getOutputs(
      $grpc.ServiceCall call, $0.OutputRequest request);
  $async.Future<$0.NormalResponse> setAppNormal(
      $grpc.ServiceCall call, $0.NormalRequest request);
  $async.Future<$0.AppOnOutputResponse> setAppOnOutput(
      $grpc.ServiceCall call, $0.AppOnOutputRequest request);
  $async.Future<$0.AppPositionResponse> setAppPosition(
      $grpc.ServiceCall call, $0.AppPositionRequest request);
  $async.Future<$0.AppScaleResponse> setAppScale(
      $grpc.ServiceCall call, $0.AppScaleRequest request);
}
