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
    {'1': 'speed', '3': 1, '4': 1, '5': 13, '10': 'speed'},
    {'1': 'throttle', '3': 2, '4': 1, '5': 2, '10': 'throttle'},
    {'1': 'steer', '3': 3, '4': 1, '5': 2, '10': 'steer'},
    {'1': 'brake', '3': 4, '4': 1, '5': 2, '10': 'brake'},
    {'1': 'clutch', '3': 5, '4': 1, '5': 13, '10': 'clutch'},
    {'1': 'gear', '3': 6, '4': 1, '5': 5, '10': 'gear'},
    {'1': 'engine_rpm', '3': 7, '4': 1, '5': 13, '10': 'engineRpm'},
    {'1': 'drs', '3': 8, '4': 1, '5': 13, '10': 'drs'},
    {
      '1': 'rev_lights_percent',
      '3': 9,
      '4': 1,
      '5': 13,
      '10': 'revLightsPercent'
    },
    {
      '1': 'rev_lights_bit_value',
      '3': 10,
      '4': 1,
      '5': 13,
      '10': 'revLightsBitValue'
    },
    {
      '1': 'brakes_temperature',
      '3': 11,
      '4': 3,
      '5': 13,
      '10': 'brakesTemperature'
    },
    {
      '1': 'tyres_surface_temperature',
      '3': 12,
      '4': 3,
      '5': 13,
      '10': 'tyresSurfaceTemperature'
    },
    {
      '1': 'tyres_inner_temperature',
      '3': 13,
      '4': 3,
      '5': 13,
      '10': 'tyresInnerTemperature'
    },
    {
      '1': 'engine_temperature',
      '3': 14,
      '4': 1,
      '5': 13,
      '10': 'engineTemperature'
    },
    {'1': 'tyres_pressure', '3': 15, '4': 3, '5': 2, '10': 'tyresPressure'},
    {'1': 'surface_type', '3': 16, '4': 3, '5': 13, '10': 'surfaceType'},
  ],
};

/// Descriptor for `CarTelemetry`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List carTelemetryDescriptor = $convert.base64Decode(
    'CgxDYXJUZWxlbWV0cnkSFAoFc3BlZWQYASABKA1SBXNwZWVkEhoKCHRocm90dGxlGAIgASgCUg'
    'h0aHJvdHRsZRIUCgVzdGVlchgDIAEoAlIFc3RlZXISFAoFYnJha2UYBCABKAJSBWJyYWtlEhYK'
    'BmNsdXRjaBgFIAEoDVIGY2x1dGNoEhIKBGdlYXIYBiABKAVSBGdlYXISHQoKZW5naW5lX3JwbR'
    'gHIAEoDVIJZW5naW5lUnBtEhAKA2RycxgIIAEoDVIDZHJzEiwKEnJldl9saWdodHNfcGVyY2Vu'
    'dBgJIAEoDVIQcmV2TGlnaHRzUGVyY2VudBIvChRyZXZfbGlnaHRzX2JpdF92YWx1ZRgKIAEoDV'
    'IRcmV2TGlnaHRzQml0VmFsdWUSLQoSYnJha2VzX3RlbXBlcmF0dXJlGAsgAygNUhFicmFrZXNU'
    'ZW1wZXJhdHVyZRI6Chl0eXJlc19zdXJmYWNlX3RlbXBlcmF0dXJlGAwgAygNUhd0eXJlc1N1cm'
    'ZhY2VUZW1wZXJhdHVyZRI2Chd0eXJlc19pbm5lcl90ZW1wZXJhdHVyZRgNIAMoDVIVdHlyZXNJ'
    'bm5lclRlbXBlcmF0dXJlEi0KEmVuZ2luZV90ZW1wZXJhdHVyZRgOIAEoDVIRZW5naW5lVGVtcG'
    'VyYXR1cmUSJQoOdHlyZXNfcHJlc3N1cmUYDyADKAJSDXR5cmVzUHJlc3N1cmUSIQoMc3VyZmFj'
    'ZV90eXBlGBAgAygNUgtzdXJmYWNlVHlwZQ==');
