// This is a generated file - do not edit.
//
// Generated from f1/car_telemetry.proto.

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

@$core.Deprecated('Use carTelemetryDescriptor instead')
const CarTelemetry$json = {
  '1': 'CarTelemetry',
  '2': [
    {'1': 'speed', '3': 1, '4': 1, '5': 2, '10': 'speed'},
    {'1': 'throttle', '3': 2, '4': 1, '5': 2, '10': 'throttle'},
    {'1': 'brake', '3': 3, '4': 1, '5': 2, '10': 'brake'},
    {'1': 'gear', '3': 4, '4': 1, '5': 5, '10': 'gear'},
    {'1': 'engine_rpm', '3': 5, '4': 1, '5': 2, '10': 'engineRpm'},
    {'1': 'drs', '3': 6, '4': 1, '5': 2, '10': 'drs'},
    {
      '1': 'front_left_tyre_pressure',
      '3': 7,
      '4': 1,
      '5': 2,
      '10': 'frontLeftTyrePressure'
    },
    {
      '1': 'front_right_tyre_pressure',
      '3': 8,
      '4': 1,
      '5': 2,
      '10': 'frontRightTyrePressure'
    },
    {
      '1': 'rear_left_tyre_pressure',
      '3': 9,
      '4': 1,
      '5': 2,
      '10': 'rearLeftTyrePressure'
    },
    {
      '1': 'rear_right_tyre_pressure',
      '3': 10,
      '4': 1,
      '5': 2,
      '10': 'rearRightTyrePressure'
    },
    {
      '1': 'front_left_wheel_angle',
      '3': 11,
      '4': 1,
      '5': 2,
      '10': 'frontLeftWheelAngle'
    },
    {
      '1': 'front_right_wheel_angle',
      '3': 12,
      '4': 1,
      '5': 2,
      '10': 'frontRightWheelAngle'
    },
    {
      '1': 'rear_left_wheel_angle',
      '3': 13,
      '4': 1,
      '5': 2,
      '10': 'rearLeftWheelAngle'
    },
    {
      '1': 'rear_right_wheel_angle',
      '3': 14,
      '4': 1,
      '5': 2,
      '10': 'rearRightWheelAngle'
    },
  ],
};

/// Descriptor for `CarTelemetry`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List carTelemetryDescriptor = $convert.base64Decode(
    'CgxDYXJUZWxlbWV0cnkSFAoFc3BlZWQYASABKAJSBXNwZWVkEhoKCHRocm90dGxlGAIgASgCUg'
    'h0aHJvdHRsZRIUCgVicmFrZRgDIAEoAlIFYnJha2USEgoEZ2VhchgEIAEoBVIEZ2VhchIdCgpl'
    'bmdpbmVfcnBtGAUgASgCUgllbmdpbmVScG0SEAoDZHJzGAYgASgCUgNkcnMSNwoYZnJvbnRfbG'
    'VmdF90eXJlX3ByZXNzdXJlGAcgASgCUhVmcm9udExlZnRUeXJlUHJlc3N1cmUSOQoZZnJvbnRf'
    'cmlnaHRfdHlyZV9wcmVzc3VyZRgIIAEoAlIWZnJvbnRSaWdodFR5cmVQcmVzc3VyZRI1ChdyZW'
    'FyX2xlZnRfdHlyZV9wcmVzc3VyZRgJIAEoAlIUcmVhckxlZnRUeXJlUHJlc3N1cmUSNwoYcmVh'
    'cl9yaWdodF90eXJlX3ByZXNzdXJlGAogASgCUhVyZWFyUmlnaHRUeXJlUHJlc3N1cmUSMwoWZn'
    'JvbnRfbGVmdF93aGVlbF9hbmdsZRgLIAEoAlITZnJvbnRMZWZ0V2hlZWxBbmdsZRI1Chdmcm9u'
    'dF9yaWdodF93aGVlbF9hbmdsZRgMIAEoAlIUZnJvbnRSaWdodFdoZWVsQW5nbGUSMQoVcmVhcl'
    '9sZWZ0X3doZWVsX2FuZ2xlGA0gASgCUhJyZWFyTGVmdFdoZWVsQW5nbGUSMwoWcmVhcl9yaWdo'
    'dF93aGVlbF9hbmdsZRgOIAEoAlITcmVhclJpZ2h0V2hlZWxBbmdsZQ==');
