//
//  Generated code. Do not modify.
//  source: radio.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'radio.pb.dart' as $0;

export 'radio.pb.dart';

@$pb.GrpcServiceName('automotivegradelinux.Radio')
class RadioClient extends $grpc.Client {
  static final _$getFrequency =
      $grpc.ClientMethod<$0.GetFrequencyRequest, $0.GetFrequencyResponse>(
          '/automotivegradelinux.Radio/GetFrequency',
          ($0.GetFrequencyRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetFrequencyResponse.fromBuffer(value));
  static final _$setFrequency =
      $grpc.ClientMethod<$0.SetFrequencyRequest, $0.SetFrequencyResponse>(
          '/automotivegradelinux.Radio/SetFrequency',
          ($0.SetFrequencyRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.SetFrequencyResponse.fromBuffer(value));
  static final _$getBand =
      $grpc.ClientMethod<$0.GetBandRequest, $0.GetBandResponse>(
          '/automotivegradelinux.Radio/GetBand',
          ($0.GetBandRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetBandResponse.fromBuffer(value));
  static final _$setBand =
      $grpc.ClientMethod<$0.SetBandRequest, $0.SetBandResponse>(
          '/automotivegradelinux.Radio/SetBand',
          ($0.SetBandRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.SetBandResponse.fromBuffer(value));
  static final _$getBandSupported = $grpc.ClientMethod<
          $0.GetBandSupportedRequest, $0.GetBandSupportedResponse>(
      '/automotivegradelinux.Radio/GetBandSupported',
      ($0.GetBandSupportedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.GetBandSupportedResponse.fromBuffer(value));
  static final _$getBandParameters = $grpc.ClientMethod<
          $0.GetBandParametersRequest, $0.GetBandParametersResponse>(
      '/automotivegradelinux.Radio/GetBandParameters',
      ($0.GetBandParametersRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.GetBandParametersResponse.fromBuffer(value));
  static final _$getStereoMode =
      $grpc.ClientMethod<$0.GetStereoModeRequest, $0.GetStereoModeResponse>(
          '/automotivegradelinux.Radio/GetStereoMode',
          ($0.GetStereoModeRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetStereoModeResponse.fromBuffer(value));
  static final _$setStereoMode =
      $grpc.ClientMethod<$0.SetStereoModeRequest, $0.SetStereoModeResponse>(
          '/automotivegradelinux.Radio/SetStereoMode',
          ($0.SetStereoModeRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.SetStereoModeResponse.fromBuffer(value));
  static final _$start = $grpc.ClientMethod<$0.StartRequest, $0.StartResponse>(
      '/automotivegradelinux.Radio/Start',
      ($0.StartRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.StartResponse.fromBuffer(value));
  static final _$stop = $grpc.ClientMethod<$0.StopRequest, $0.StopResponse>(
      '/automotivegradelinux.Radio/Stop',
      ($0.StopRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.StopResponse.fromBuffer(value));
  static final _$scanStart =
      $grpc.ClientMethod<$0.ScanStartRequest, $0.ScanStartResponse>(
          '/automotivegradelinux.Radio/ScanStart',
          ($0.ScanStartRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ScanStartResponse.fromBuffer(value));
  static final _$scanStop =
      $grpc.ClientMethod<$0.ScanStopRequest, $0.ScanStopResponse>(
          '/automotivegradelinux.Radio/ScanStop',
          ($0.ScanStopRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ScanStopResponse.fromBuffer(value));
  static final _$getRDS =
      $grpc.ClientMethod<$0.GetRDSRequest, $0.GetRDSResponse>(
          '/automotivegradelinux.Radio/GetRDS',
          ($0.GetRDSRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.GetRDSResponse.fromBuffer(value));
  static final _$getQuality =
      $grpc.ClientMethod<$0.GetQualityRequest, $0.GetQualityResponse>(
          '/automotivegradelinux.Radio/GetQuality',
          ($0.GetQualityRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetQualityResponse.fromBuffer(value));
  static final _$setAlternativeFrequency = $grpc.ClientMethod<
          $0.SetAlternativeFrequencyRequest,
          $0.SetAlternativeFrequencyResponse>(
      '/automotivegradelinux.Radio/SetAlternativeFrequency',
      ($0.SetAlternativeFrequencyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.SetAlternativeFrequencyResponse.fromBuffer(value));
  static final _$getStatusEvents =
      $grpc.ClientMethod<$0.StatusRequest, $0.StatusResponse>(
          '/automotivegradelinux.Radio/GetStatusEvents',
          ($0.StatusRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.StatusResponse.fromBuffer(value));

  RadioClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.GetFrequencyResponse> getFrequency(
      $0.GetFrequencyRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getFrequency, request, options: options);
  }

  $grpc.ResponseFuture<$0.SetFrequencyResponse> setFrequency(
      $0.SetFrequencyRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setFrequency, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetBandResponse> getBand($0.GetBandRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBand, request, options: options);
  }

  $grpc.ResponseFuture<$0.SetBandResponse> setBand($0.SetBandRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setBand, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetBandSupportedResponse> getBandSupported(
      $0.GetBandSupportedRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBandSupported, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetBandParametersResponse> getBandParameters(
      $0.GetBandParametersRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBandParameters, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetStereoModeResponse> getStereoMode(
      $0.GetStereoModeRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getStereoMode, request, options: options);
  }

  $grpc.ResponseFuture<$0.SetStereoModeResponse> setStereoMode(
      $0.SetStereoModeRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setStereoMode, request, options: options);
  }

  $grpc.ResponseFuture<$0.StartResponse> start($0.StartRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$start, request, options: options);
  }

  $grpc.ResponseFuture<$0.StopResponse> stop($0.StopRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$stop, request, options: options);
  }

  $grpc.ResponseFuture<$0.ScanStartResponse> scanStart(
      $0.ScanStartRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$scanStart, request, options: options);
  }

  $grpc.ResponseFuture<$0.ScanStopResponse> scanStop($0.ScanStopRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$scanStop, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetRDSResponse> getRDS($0.GetRDSRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRDS, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetQualityResponse> getQuality(
      $0.GetQualityRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getQuality, request, options: options);
  }

  $grpc.ResponseFuture<$0.SetAlternativeFrequencyResponse>
      setAlternativeFrequency($0.SetAlternativeFrequencyRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setAlternativeFrequency, request,
        options: options);
  }

  $grpc.ResponseStream<$0.StatusResponse> getStatusEvents(
      $0.StatusRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getStatusEvents, $async.Stream.fromIterable([request]),
        options: options);
  }
}

@$pb.GrpcServiceName('automotivegradelinux.Radio')
abstract class RadioServiceBase extends $grpc.Service {
  $core.String get $name => 'automotivegradelinux.Radio';

  RadioServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.GetFrequencyRequest, $0.GetFrequencyResponse>(
            'GetFrequency',
            getFrequency_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.GetFrequencyRequest.fromBuffer(value),
            ($0.GetFrequencyResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.SetFrequencyRequest, $0.SetFrequencyResponse>(
            'SetFrequency',
            setFrequency_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.SetFrequencyRequest.fromBuffer(value),
            ($0.SetFrequencyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetBandRequest, $0.GetBandResponse>(
        'GetBand',
        getBand_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetBandRequest.fromBuffer(value),
        ($0.GetBandResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SetBandRequest, $0.SetBandResponse>(
        'SetBand',
        setBand_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SetBandRequest.fromBuffer(value),
        ($0.SetBandResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetBandSupportedRequest,
            $0.GetBandSupportedResponse>(
        'GetBandSupported',
        getBandSupported_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetBandSupportedRequest.fromBuffer(value),
        ($0.GetBandSupportedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetBandParametersRequest,
            $0.GetBandParametersResponse>(
        'GetBandParameters',
        getBandParameters_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetBandParametersRequest.fromBuffer(value),
        ($0.GetBandParametersResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.GetStereoModeRequest, $0.GetStereoModeResponse>(
            'GetStereoMode',
            getStereoMode_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.GetStereoModeRequest.fromBuffer(value),
            ($0.GetStereoModeResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.SetStereoModeRequest, $0.SetStereoModeResponse>(
            'SetStereoMode',
            setStereoMode_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.SetStereoModeRequest.fromBuffer(value),
            ($0.SetStereoModeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StartRequest, $0.StartResponse>(
        'Start',
        start_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.StartRequest.fromBuffer(value),
        ($0.StartResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StopRequest, $0.StopResponse>(
        'Stop',
        stop_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.StopRequest.fromBuffer(value),
        ($0.StopResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ScanStartRequest, $0.ScanStartResponse>(
        'ScanStart',
        scanStart_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ScanStartRequest.fromBuffer(value),
        ($0.ScanStartResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ScanStopRequest, $0.ScanStopResponse>(
        'ScanStop',
        scanStop_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ScanStopRequest.fromBuffer(value),
        ($0.ScanStopResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetRDSRequest, $0.GetRDSResponse>(
        'GetRDS',
        getRDS_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetRDSRequest.fromBuffer(value),
        ($0.GetRDSResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetQualityRequest, $0.GetQualityResponse>(
        'GetQuality',
        getQuality_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetQualityRequest.fromBuffer(value),
        ($0.GetQualityResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SetAlternativeFrequencyRequest,
            $0.SetAlternativeFrequencyResponse>(
        'SetAlternativeFrequency',
        setAlternativeFrequency_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.SetAlternativeFrequencyRequest.fromBuffer(value),
        ($0.SetAlternativeFrequencyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StatusRequest, $0.StatusResponse>(
        'GetStatusEvents',
        getStatusEvents_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.StatusRequest.fromBuffer(value),
        ($0.StatusResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.GetFrequencyResponse> getFrequency_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetFrequencyRequest> request) async {
    return getFrequency(call, await request);
  }

  $async.Future<$0.SetFrequencyResponse> setFrequency_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.SetFrequencyRequest> request) async {
    return setFrequency(call, await request);
  }

  $async.Future<$0.GetBandResponse> getBand_Pre(
      $grpc.ServiceCall call, $async.Future<$0.GetBandRequest> request) async {
    return getBand(call, await request);
  }

  $async.Future<$0.SetBandResponse> setBand_Pre(
      $grpc.ServiceCall call, $async.Future<$0.SetBandRequest> request) async {
    return setBand(call, await request);
  }

  $async.Future<$0.GetBandSupportedResponse> getBandSupported_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetBandSupportedRequest> request) async {
    return getBandSupported(call, await request);
  }

  $async.Future<$0.GetBandParametersResponse> getBandParameters_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetBandParametersRequest> request) async {
    return getBandParameters(call, await request);
  }

  $async.Future<$0.GetStereoModeResponse> getStereoMode_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetStereoModeRequest> request) async {
    return getStereoMode(call, await request);
  }

  $async.Future<$0.SetStereoModeResponse> setStereoMode_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.SetStereoModeRequest> request) async {
    return setStereoMode(call, await request);
  }

  $async.Future<$0.StartResponse> start_Pre(
      $grpc.ServiceCall call, $async.Future<$0.StartRequest> request) async {
    return start(call, await request);
  }

  $async.Future<$0.StopResponse> stop_Pre(
      $grpc.ServiceCall call, $async.Future<$0.StopRequest> request) async {
    return stop(call, await request);
  }

  $async.Future<$0.ScanStartResponse> scanStart_Pre($grpc.ServiceCall call,
      $async.Future<$0.ScanStartRequest> request) async {
    return scanStart(call, await request);
  }

  $async.Future<$0.ScanStopResponse> scanStop_Pre(
      $grpc.ServiceCall call, $async.Future<$0.ScanStopRequest> request) async {
    return scanStop(call, await request);
  }

  $async.Future<$0.GetRDSResponse> getRDS_Pre(
      $grpc.ServiceCall call, $async.Future<$0.GetRDSRequest> request) async {
    return getRDS(call, await request);
  }

  $async.Future<$0.GetQualityResponse> getQuality_Pre($grpc.ServiceCall call,
      $async.Future<$0.GetQualityRequest> request) async {
    return getQuality(call, await request);
  }

  $async.Future<$0.SetAlternativeFrequencyResponse> setAlternativeFrequency_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.SetAlternativeFrequencyRequest> request) async {
    return setAlternativeFrequency(call, await request);
  }

  $async.Stream<$0.StatusResponse> getStatusEvents_Pre(
      $grpc.ServiceCall call, $async.Future<$0.StatusRequest> request) async* {
    yield* getStatusEvents(call, await request);
  }

  $async.Future<$0.GetFrequencyResponse> getFrequency(
      $grpc.ServiceCall call, $0.GetFrequencyRequest request);
  $async.Future<$0.SetFrequencyResponse> setFrequency(
      $grpc.ServiceCall call, $0.SetFrequencyRequest request);
  $async.Future<$0.GetBandResponse> getBand(
      $grpc.ServiceCall call, $0.GetBandRequest request);
  $async.Future<$0.SetBandResponse> setBand(
      $grpc.ServiceCall call, $0.SetBandRequest request);
  $async.Future<$0.GetBandSupportedResponse> getBandSupported(
      $grpc.ServiceCall call, $0.GetBandSupportedRequest request);
  $async.Future<$0.GetBandParametersResponse> getBandParameters(
      $grpc.ServiceCall call, $0.GetBandParametersRequest request);
  $async.Future<$0.GetStereoModeResponse> getStereoMode(
      $grpc.ServiceCall call, $0.GetStereoModeRequest request);
  $async.Future<$0.SetStereoModeResponse> setStereoMode(
      $grpc.ServiceCall call, $0.SetStereoModeRequest request);
  $async.Future<$0.StartResponse> start(
      $grpc.ServiceCall call, $0.StartRequest request);
  $async.Future<$0.StopResponse> stop(
      $grpc.ServiceCall call, $0.StopRequest request);
  $async.Future<$0.ScanStartResponse> scanStart(
      $grpc.ServiceCall call, $0.ScanStartRequest request);
  $async.Future<$0.ScanStopResponse> scanStop(
      $grpc.ServiceCall call, $0.ScanStopRequest request);
  $async.Future<$0.GetRDSResponse> getRDS(
      $grpc.ServiceCall call, $0.GetRDSRequest request);
  $async.Future<$0.GetQualityResponse> getQuality(
      $grpc.ServiceCall call, $0.GetQualityRequest request);
  $async.Future<$0.SetAlternativeFrequencyResponse> setAlternativeFrequency(
      $grpc.ServiceCall call, $0.SetAlternativeFrequencyRequest request);
  $async.Stream<$0.StatusResponse> getStatusEvents(
      $grpc.ServiceCall call, $0.StatusRequest request);
}
