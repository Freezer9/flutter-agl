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

@$core.Deprecated('Use carDamageDescriptor instead')
const CarDamage$json = {
  '1': 'CarDamage',
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

/// Descriptor for `CarDamage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List carDamageDescriptor = $convert.base64Decode(
    'CglDYXJEYW1hZ2USHQoKdHlyZXNfd2VhchgBIAMoAlIJdHlyZXNXZWFyEiEKDHR5cmVzX2RhbW'
    'FnZRgCIAMoDVILdHlyZXNEYW1hZ2USIwoNYnJha2VzX2RhbWFnZRgDIAMoDVIMYnJha2VzRGFt'
    'YWdlEjMKFmZyb250X2xlZnRfd2luZ19kYW1hZ2UYBCABKA1SE2Zyb250TGVmdFdpbmdEYW1hZ2'
    'USNQoXZnJvbnRfcmlnaHRfd2luZ19kYW1hZ2UYBSABKA1SFGZyb250UmlnaHRXaW5nRGFtYWdl'
    'EigKEHJlYXJfd2luZ19kYW1hZ2UYBiABKA1SDnJlYXJXaW5nRGFtYWdlEiEKDGZsb29yX2RhbW'
    'FnZRgHIAEoDVILZmxvb3JEYW1hZ2USJwoPZGlmZnVzZXJfZGFtYWdlGAggASgNUg5kaWZmdXNl'
    'ckRhbWFnZRIlCg5zaWRlcG9kX2RhbWFnZRgJIAEoDVINc2lkZXBvZERhbWFnZRIbCglkcnNfZm'
    'F1bHQYCiABKA1SCGRyc0ZhdWx0EhsKCWVyc19mYXVsdBgLIAEoDVIIZXJzRmF1bHQSJgoPZ2Vh'
    'cl9ib3hfZGFtYWdlGAwgASgNUg1nZWFyQm94RGFtYWdlEiMKDWVuZ2luZV9kYW1hZ2UYDSABKA'
    '1SDGVuZ2luZURhbWFnZRIoChBlbmdpbmVfbWd1aF93ZWFyGA4gASgNUg5lbmdpbmVNZ3VoV2Vh'
    'chIkCg5lbmdpbmVfZXNfd2VhchgPIAEoDVIMZW5naW5lRXNXZWFyEiQKDmVuZ2luZV9jZV93ZW'
    'FyGBAgASgNUgxlbmdpbmVDZVdlYXISJgoPZW5naW5lX2ljZV93ZWFyGBEgASgNUg1lbmdpbmVJ'
    'Y2VXZWFyEigKEGVuZ2luZV9tZ3VrX3dlYXIYEiABKA1SDmVuZ2luZU1ndWtXZWFyEiQKDmVuZ2'
    'luZV90Y193ZWFyGBMgASgNUgxlbmdpbmVUY1dlYXISIQoMZW5naW5lX2Jsb3duGBQgASgNUgtl'
    'bmdpbmVCbG93bhIjCg1lbmdpbmVfc2VpemVkGBUgASgNUgxlbmdpbmVTZWl6ZWQ=');
