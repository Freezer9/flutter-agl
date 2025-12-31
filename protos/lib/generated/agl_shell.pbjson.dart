///
//  Generated code. Do not modify.
//  source: agl_shell.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use activateRequestDescriptor instead')
const ActivateRequest$json = const {
  '1': 'ActivateRequest',
  '2': const [
    const {'1': 'app_id', '3': 1, '4': 1, '5': 9, '10': 'appId'},
    const {'1': 'output_name', '3': 2, '4': 1, '5': 9, '10': 'outputName'},
  ],
};

/// Descriptor for `ActivateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List activateRequestDescriptor = $convert.base64Decode(
    'Cg9BY3RpdmF0ZVJlcXVlc3QSFQoGYXBwX2lkGAEgASgJUgVhcHBJZBIfCgtvdXRwdXRfbmFtZRgCIAEoCVIKb3V0cHV0TmFtZQ==');
@$core.Deprecated('Use activateResponseDescriptor instead')
const ActivateResponse$json = const {
  '1': 'ActivateResponse',
};

/// Descriptor for `ActivateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List activateResponseDescriptor =
    $convert.base64Decode('ChBBY3RpdmF0ZVJlc3BvbnNl');
@$core.Deprecated('Use deactivateRequestDescriptor instead')
const DeactivateRequest$json = const {
  '1': 'DeactivateRequest',
  '2': const [
    const {'1': 'app_id', '3': 1, '4': 1, '5': 9, '10': 'appId'},
  ],
};

/// Descriptor for `DeactivateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deactivateRequestDescriptor = $convert
    .base64Decode('ChFEZWFjdGl2YXRlUmVxdWVzdBIVCgZhcHBfaWQYASABKAlSBWFwcElk');
@$core.Deprecated('Use deactivateResponseDescriptor instead')
const DeactivateResponse$json = const {
  '1': 'DeactivateResponse',
};

/// Descriptor for `DeactivateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deactivateResponseDescriptor =
    $convert.base64Decode('ChJEZWFjdGl2YXRlUmVzcG9uc2U=');
@$core.Deprecated('Use splitRequestDescriptor instead')
const SplitRequest$json = const {
  '1': 'SplitRequest',
  '2': const [
    const {'1': 'app_id', '3': 1, '4': 1, '5': 9, '10': 'appId'},
    const {
      '1': 'tile_orientation',
      '3': 2,
      '4': 1,
      '5': 5,
      '10': 'tileOrientation'
    },
  ],
};

/// Descriptor for `SplitRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List splitRequestDescriptor = $convert.base64Decode(
    'CgxTcGxpdFJlcXVlc3QSFQoGYXBwX2lkGAEgASgJUgVhcHBJZBIpChB0aWxlX29yaWVudGF0aW9uGAIgASgFUg90aWxlT3JpZW50YXRpb24=');
@$core.Deprecated('Use splitResponseDescriptor instead')
const SplitResponse$json = const {
  '1': 'SplitResponse',
};

/// Descriptor for `SplitResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List splitResponseDescriptor =
    $convert.base64Decode('Cg1TcGxpdFJlc3BvbnNl');
@$core.Deprecated('Use floatRequestDescriptor instead')
const FloatRequest$json = const {
  '1': 'FloatRequest',
  '2': const [
    const {'1': 'app_id', '3': 1, '4': 1, '5': 9, '10': 'appId'},
    const {'1': 'x_pos', '3': 2, '4': 1, '5': 5, '10': 'xPos'},
    const {'1': 'y_pos', '3': 3, '4': 1, '5': 5, '10': 'yPos'},
  ],
};

/// Descriptor for `FloatRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List floatRequestDescriptor = $convert.base64Decode(
    'CgxGbG9hdFJlcXVlc3QSFQoGYXBwX2lkGAEgASgJUgVhcHBJZBITCgV4X3BvcxgCIAEoBVIEeFBvcxITCgV5X3BvcxgDIAEoBVIEeVBvcw==');
@$core.Deprecated('Use floatResponseDescriptor instead')
const FloatResponse$json = const {
  '1': 'FloatResponse',
};

/// Descriptor for `FloatResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List floatResponseDescriptor =
    $convert.base64Decode('Cg1GbG9hdFJlc3BvbnNl');
@$core.Deprecated('Use appStateRequestDescriptor instead')
const AppStateRequest$json = const {
  '1': 'AppStateRequest',
};

/// Descriptor for `AppStateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appStateRequestDescriptor =
    $convert.base64Decode('Cg9BcHBTdGF0ZVJlcXVlc3Q=');
@$core.Deprecated('Use appStateResponseDescriptor instead')
const AppStateResponse$json = const {
  '1': 'AppStateResponse',
  '2': const [
    const {'1': 'state', '3': 1, '4': 1, '5': 5, '10': 'state'},
    const {'1': 'app_id', '3': 2, '4': 1, '5': 9, '10': 'appId'},
  ],
};

/// Descriptor for `AppStateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appStateResponseDescriptor = $convert.base64Decode(
    'ChBBcHBTdGF0ZVJlc3BvbnNlEhQKBXN0YXRlGAEgASgFUgVzdGF0ZRIVCgZhcHBfaWQYAiABKAlSBWFwcElk');
@$core.Deprecated('Use outputRequestDescriptor instead')
const OutputRequest$json = const {
  '1': 'OutputRequest',
};

/// Descriptor for `OutputRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List outputRequestDescriptor =
    $convert.base64Decode('Cg1PdXRwdXRSZXF1ZXN0');
@$core.Deprecated('Use outputResponseDescriptor instead')
const OutputResponse$json = const {
  '1': 'OutputResponse',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `OutputResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List outputResponseDescriptor =
    $convert.base64Decode('Cg5PdXRwdXRSZXNwb25zZRISCgRuYW1lGAEgASgJUgRuYW1l');
@$core.Deprecated('Use listOutputResponseDescriptor instead')
const ListOutputResponse$json = const {
  '1': 'ListOutputResponse',
  '2': const [
    const {
      '1': 'outputs',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.agl_shell_ipc.OutputResponse',
      '10': 'outputs'
    },
  ],
};

/// Descriptor for `ListOutputResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listOutputResponseDescriptor = $convert.base64Decode(
    'ChJMaXN0T3V0cHV0UmVzcG9uc2USNwoHb3V0cHV0cxgBIAMoCzIdLmFnbF9zaGVsbF9pcGMuT3V0cHV0UmVzcG9uc2VSB291dHB1dHM=');
@$core.Deprecated('Use normalRequestDescriptor instead')
const NormalRequest$json = const {
  '1': 'NormalRequest',
  '2': const [
    const {'1': 'app_id', '3': 1, '4': 1, '5': 9, '10': 'appId'},
  ],
};

/// Descriptor for `NormalRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List normalRequestDescriptor = $convert
    .base64Decode('Cg1Ob3JtYWxSZXF1ZXN0EhUKBmFwcF9pZBgBIAEoCVIFYXBwSWQ=');
@$core.Deprecated('Use normalResponseDescriptor instead')
const NormalResponse$json = const {
  '1': 'NormalResponse',
};

/// Descriptor for `NormalResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List normalResponseDescriptor =
    $convert.base64Decode('Cg5Ob3JtYWxSZXNwb25zZQ==');
@$core.Deprecated('Use fullscreenRequestDescriptor instead')
const FullscreenRequest$json = const {
  '1': 'FullscreenRequest',
  '2': const [
    const {'1': 'app_id', '3': 1, '4': 1, '5': 9, '10': 'appId'},
  ],
};

/// Descriptor for `FullscreenRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fullscreenRequestDescriptor = $convert
    .base64Decode('ChFGdWxsc2NyZWVuUmVxdWVzdBIVCgZhcHBfaWQYASABKAlSBWFwcElk');
@$core.Deprecated('Use fullscreenResponseDescriptor instead')
const FullscreenResponse$json = const {
  '1': 'FullscreenResponse',
};

/// Descriptor for `FullscreenResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fullscreenResponseDescriptor =
    $convert.base64Decode('ChJGdWxsc2NyZWVuUmVzcG9uc2U=');
@$core.Deprecated('Use appOnOutputRequestDescriptor instead')
const AppOnOutputRequest$json = const {
  '1': 'AppOnOutputRequest',
  '2': const [
    const {'1': 'app_id', '3': 1, '4': 1, '5': 9, '10': 'appId'},
    const {'1': 'output', '3': 2, '4': 1, '5': 9, '10': 'output'},
  ],
};

/// Descriptor for `AppOnOutputRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appOnOutputRequestDescriptor = $convert.base64Decode(
    'ChJBcHBPbk91dHB1dFJlcXVlc3QSFQoGYXBwX2lkGAEgASgJUgVhcHBJZBIWCgZvdXRwdXQYAiABKAlSBm91dHB1dA==');
@$core.Deprecated('Use appOnOutputResponseDescriptor instead')
const AppOnOutputResponse$json = const {
  '1': 'AppOnOutputResponse',
};

/// Descriptor for `AppOnOutputResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appOnOutputResponseDescriptor =
    $convert.base64Decode('ChNBcHBPbk91dHB1dFJlc3BvbnNl');
@$core.Deprecated('Use appPositionRequestDescriptor instead')
const AppPositionRequest$json = const {
  '1': 'AppPositionRequest',
  '2': const [
    const {'1': 'app_id', '3': 1, '4': 1, '5': 9, '10': 'appId'},
    const {'1': 'x', '3': 2, '4': 1, '5': 5, '10': 'x'},
    const {'1': 'y', '3': 3, '4': 1, '5': 5, '10': 'y'},
  ],
};

/// Descriptor for `AppPositionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appPositionRequestDescriptor = $convert.base64Decode(
    'ChJBcHBQb3NpdGlvblJlcXVlc3QSFQoGYXBwX2lkGAEgASgJUgVhcHBJZBIMCgF4GAIgASgFUgF4EgwKAXkYAyABKAVSAXk=');
@$core.Deprecated('Use appPositionResponseDescriptor instead')
const AppPositionResponse$json = const {
  '1': 'AppPositionResponse',
};

/// Descriptor for `AppPositionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appPositionResponseDescriptor =
    $convert.base64Decode('ChNBcHBQb3NpdGlvblJlc3BvbnNl');
@$core.Deprecated('Use appScaleRequestDescriptor instead')
const AppScaleRequest$json = const {
  '1': 'AppScaleRequest',
  '2': const [
    const {'1': 'app_id', '3': 1, '4': 1, '5': 9, '10': 'appId'},
    const {'1': 'width', '3': 2, '4': 1, '5': 5, '10': 'width'},
    const {'1': 'height', '3': 3, '4': 1, '5': 5, '10': 'height'},
  ],
};

/// Descriptor for `AppScaleRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appScaleRequestDescriptor = $convert.base64Decode(
    'Cg9BcHBTY2FsZVJlcXVlc3QSFQoGYXBwX2lkGAEgASgJUgVhcHBJZBIUCgV3aWR0aBgCIAEoBVIFd2lkdGgSFgoGaGVpZ2h0GAMgASgFUgZoZWlnaHQ=');
@$core.Deprecated('Use appScaleResponseDescriptor instead')
const AppScaleResponse$json = const {
  '1': 'AppScaleResponse',
};

/// Descriptor for `AppScaleResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appScaleResponseDescriptor =
    $convert.base64Decode('ChBBcHBTY2FsZVJlc3BvbnNl');
