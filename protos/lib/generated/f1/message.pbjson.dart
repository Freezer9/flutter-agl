// This is a generated file - do not edit.
//
// Generated from f1/message.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports
// ignore_for_file: unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use vehicleMessageDescriptor instead')
const VehicleMessage$json = {
  '1': 'VehicleMessage',
  '2': [
    {
      '1': 'telemetry',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.f1.CarTelemetry',
      '9': 0,
      '10': 'telemetry'
    },
    {
      '1': 'status',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.f1.CarStatus',
      '9': 0,
      '10': 'status'
    },
    {
      '1': 'damage',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.f1.CarDamageData',
      '9': 0,
      '10': 'damage'
    },
  ],
  '8': [
    {'1': 'payload'},
  ],
};

/// Descriptor for `VehicleMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vehicleMessageDescriptor = $convert.base64Decode(
    'Cg5WZWhpY2xlTWVzc2FnZRIwCgl0ZWxlbWV0cnkYASABKAsyEC5mMS5DYXJUZWxlbWV0cnlIAF'
    'IJdGVsZW1ldHJ5EicKBnN0YXR1cxgCIAEoCzINLmYxLkNhclN0YXR1c0gAUgZzdGF0dXMSKwoG'
    'ZGFtYWdlGAMgASgLMhEuZjEuQ2FyRGFtYWdlRGF0YUgAUgZkYW1hZ2VCCQoHcGF5bG9hZA==');
