// This is a generated file - do not edit.
//
// Generated from f1/car_damage.proto.

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

@$core.Deprecated('Use carDamageDataDescriptor instead')
const CarDamageData$json = {
  '1': 'CarDamageData',
  '2': [
    {'1': 'tyres_wear', '3': 1, '4': 3, '5': 2, '10': 'tyresWear'},
    {'1': 'tyres_damage', '3': 2, '4': 3, '5': 13, '10': 'tyresDamage'},
    {'1': 'brakes_damage', '3': 3, '4': 3, '5': 13, '10': 'brakesDamage'},
    {
      '1': 'front_left_wing_damage',
      '3': 4,
      '4': 1,
      '5': 13,
      '10': 'frontLeftWingDamage'
    },
    {
      '1': 'front_right_wing_damage',
      '3': 5,
      '4': 1,
      '5': 13,
      '10': 'frontRightWingDamage'
    },
    {'1': 'rear_wing_damage', '3': 6, '4': 1, '5': 13, '10': 'rearWingDamage'},
    {'1': 'floor_damage', '3': 7, '4': 1, '5': 13, '10': 'floorDamage'},
    {'1': 'diffuser_damage', '3': 8, '4': 1, '5': 13, '10': 'diffuserDamage'},
    {'1': 'sidepod_damage', '3': 9, '4': 1, '5': 13, '10': 'sidepodDamage'},
    {'1': 'drs_fault', '3': 10, '4': 1, '5': 13, '10': 'drsFault'},
    {'1': 'ers_fault', '3': 11, '4': 1, '5': 13, '10': 'ersFault'},
    {'1': 'gear_box_damage', '3': 12, '4': 1, '5': 13, '10': 'gearBoxDamage'},
    {'1': 'engine_damage', '3': 13, '4': 1, '5': 13, '10': 'engineDamage'},
    {'1': 'engine_mguh_wear', '3': 14, '4': 1, '5': 13, '10': 'engineMguhWear'},
    {'1': 'engine_es_wear', '3': 15, '4': 1, '5': 13, '10': 'engineEsWear'},
    {'1': 'engine_ce_wear', '3': 16, '4': 1, '5': 13, '10': 'engineCeWear'},
    {'1': 'engine_ice_wear', '3': 17, '4': 1, '5': 13, '10': 'engineIceWear'},
    {'1': 'engine_mguk_wear', '3': 18, '4': 1, '5': 13, '10': 'engineMgukWear'},
    {'1': 'engine_tc_wear', '3': 19, '4': 1, '5': 13, '10': 'engineTcWear'},
    {'1': 'engine_blown', '3': 20, '4': 1, '5': 13, '10': 'engineBlown'},
    {'1': 'engine_seized', '3': 21, '4': 1, '5': 13, '10': 'engineSeized'},
  ],
};

/// Descriptor for `CarDamageData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List carDamageDataDescriptor = $convert.base64Decode(
    'Cg1DYXJEYW1hZ2VEYXRhEh0KCnR5cmVzX3dlYXIYASADKAJSCXR5cmVzV2VhchIhCgx0eXJlc1'
    '9kYW1hZ2UYAiADKA1SC3R5cmVzRGFtYWdlEiMKDWJyYWtlc19kYW1hZ2UYAyADKA1SDGJyYWtl'
    'c0RhbWFnZRIzChZmcm9udF9sZWZ0X3dpbmdfZGFtYWdlGAQgASgNUhNmcm9udExlZnRXaW5nRG'
    'FtYWdlEjUKF2Zyb250X3JpZ2h0X3dpbmdfZGFtYWdlGAUgASgNUhRmcm9udFJpZ2h0V2luZ0Rh'
    'bWFnZRIoChByZWFyX3dpbmdfZGFtYWdlGAYgASgNUg5yZWFyV2luZ0RhbWFnZRIhCgxmbG9vcl'
    '9kYW1hZ2UYByABKA1SC2Zsb29yRGFtYWdlEicKD2RpZmZ1c2VyX2RhbWFnZRgIIAEoDVIOZGlm'
    'ZnVzZXJEYW1hZ2USJQoOc2lkZXBvZF9kYW1hZ2UYCSABKA1SDXNpZGVwb2REYW1hZ2USGwoJZH'
    'JzX2ZhdWx0GAogASgNUghkcnNGYXVsdBIbCgllcnNfZmF1bHQYCyABKA1SCGVyc0ZhdWx0EiYK'
    'D2dlYXJfYm94X2RhbWFnZRgMIAEoDVINZ2VhckJveERhbWFnZRIjCg1lbmdpbmVfZGFtYWdlGA'
    '0gASgNUgxlbmdpbmVEYW1hZ2USKAoQZW5naW5lX21ndWhfd2VhchgOIAEoDVIOZW5naW5lTWd1'
    'aFdlYXISJAoOZW5naW5lX2VzX3dlYXIYDyABKA1SDGVuZ2luZUVzV2VhchIkCg5lbmdpbmVfY2'
    'Vfd2VhchgQIAEoDVIMZW5naW5lQ2VXZWFyEiYKD2VuZ2luZV9pY2Vfd2VhchgRIAEoDVINZW5n'
    'aW5lSWNlV2VhchIoChBlbmdpbmVfbWd1a193ZWFyGBIgASgNUg5lbmdpbmVNZ3VrV2VhchIkCg'
    '5lbmdpbmVfdGNfd2VhchgTIAEoDVIMZW5naW5lVGNXZWFyEiEKDGVuZ2luZV9ibG93bhgUIAEo'
    'DVILZW5naW5lQmxvd24SIwoNZW5naW5lX3NlaXplZBgVIAEoDVIMZW5naW5lU2VpemVk');
