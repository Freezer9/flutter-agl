///
//  Generated code. Do not modify.
//  source: applauncher.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use startRequestDescriptor instead')
const StartRequest$json = const {
  '1': 'StartRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `StartRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List startRequestDescriptor =
    $convert.base64Decode('CgxTdGFydFJlcXVlc3QSDgoCaWQYASABKAlSAmlk');
@$core.Deprecated('Use startResponseDescriptor instead')
const StartResponse$json = const {
  '1': 'StartResponse',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 8, '10': 'status'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `StartResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List startResponseDescriptor = $convert.base64Decode(
    'Cg1TdGFydFJlc3BvbnNlEhYKBnN0YXR1cxgBIAEoCFIGc3RhdHVzEhgKB21lc3NhZ2UYAiABKAlSB21lc3NhZ2U=');
@$core.Deprecated('Use listRequestDescriptor instead')
const ListRequest$json = const {
  '1': 'ListRequest',
};

/// Descriptor for `ListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listRequestDescriptor =
    $convert.base64Decode('CgtMaXN0UmVxdWVzdA==');
@$core.Deprecated('Use listResponseDescriptor instead')
const ListResponse$json = const {
  '1': 'ListResponse',
  '2': const [
    const {
      '1': 'apps',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.automotivegradelinux.AppInfo',
      '10': 'apps'
    },
  ],
};

/// Descriptor for `ListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listResponseDescriptor = $convert.base64Decode(
    'CgxMaXN0UmVzcG9uc2USMQoEYXBwcxgBIAMoCzIdLmF1dG9tb3RpdmVncmFkZWxpbnV4LkFwcEluZm9SBGFwcHM=');
@$core.Deprecated('Use appInfoDescriptor instead')
const AppInfo$json = const {
  '1': 'AppInfo',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'icon_path', '3': 3, '4': 1, '5': 9, '10': 'iconPath'},
  ],
};

/// Descriptor for `AppInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appInfoDescriptor = $convert.base64Decode(
    'CgdBcHBJbmZvEg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEhsKCWljb25fcGF0aBgDIAEoCVIIaWNvblBhdGg=');
@$core.Deprecated('Use statusRequestDescriptor instead')
const StatusRequest$json = const {
  '1': 'StatusRequest',
};

/// Descriptor for `StatusRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List statusRequestDescriptor =
    $convert.base64Decode('Cg1TdGF0dXNSZXF1ZXN0');
@$core.Deprecated('Use appStatusDescriptor instead')
const AppStatus$json = const {
  '1': 'AppStatus',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'status', '3': 2, '4': 1, '5': 9, '10': 'status'},
  ],
};

/// Descriptor for `AppStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appStatusDescriptor = $convert.base64Decode(
    'CglBcHBTdGF0dXMSDgoCaWQYASABKAlSAmlkEhYKBnN0YXR1cxgCIAEoCVIGc3RhdHVz');
@$core.Deprecated('Use launcherStatusDescriptor instead')
const LauncherStatus$json = const {
  '1': 'LauncherStatus',
};

/// Descriptor for `LauncherStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List launcherStatusDescriptor =
    $convert.base64Decode('Cg5MYXVuY2hlclN0YXR1cw==');
@$core.Deprecated('Use statusResponseDescriptor instead')
const StatusResponse$json = const {
  '1': 'StatusResponse',
  '2': const [
    const {
      '1': 'app',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.automotivegradelinux.AppStatus',
      '9': 0,
      '10': 'app'
    },
    const {
      '1': 'launcher',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.automotivegradelinux.LauncherStatus',
      '9': 0,
      '10': 'launcher'
    },
  ],
  '8': const [
    const {'1': 'status'},
  ],
};

/// Descriptor for `StatusResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List statusResponseDescriptor = $convert.base64Decode(
    'Cg5TdGF0dXNSZXNwb25zZRIzCgNhcHAYASABKAsyHy5hdXRvbW90aXZlZ3JhZGVsaW51eC5BcHBTdGF0dXNIAFIDYXBwEkIKCGxhdW5jaGVyGAIgASgLMiQuYXV0b21vdGl2ZWdyYWRlbGludXguTGF1bmNoZXJTdGF0dXNIAFIIbGF1bmNoZXJCCAoGc3RhdHVz');
