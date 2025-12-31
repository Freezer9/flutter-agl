// This is a generated file - do not edit.
//
// Generated from f1/car_status.proto.

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

@$core.Deprecated('Use carStatusDescriptor instead')
const CarStatus$json = {
  '1': 'CarStatus',
  '2': [
    {'1': 'traction_control', '3': 1, '4': 1, '5': 13, '10': 'tractionControl'},
    {'1': 'anti_lock_brakes', '3': 2, '4': 1, '5': 13, '10': 'antiLockBrakes'},
    {'1': 'fuel_mix', '3': 3, '4': 1, '5': 13, '10': 'fuelMix'},
    {'1': 'front_brake_bias', '3': 4, '4': 1, '5': 13, '10': 'frontBrakeBias'},
    {
      '1': 'pit_limiter_status',
      '3': 5,
      '4': 1,
      '5': 13,
      '10': 'pitLimiterStatus'
    },
    {'1': 'fuel_in_tank', '3': 6, '4': 1, '5': 2, '10': 'fuelInTank'},
    {'1': 'fuel_capacity', '3': 7, '4': 1, '5': 2, '10': 'fuelCapacity'},
    {
      '1': 'fuel_remaining_laps',
      '3': 8,
      '4': 1,
      '5': 2,
      '10': 'fuelRemainingLaps'
    },
    {'1': 'max_rpm', '3': 9, '4': 1, '5': 13, '10': 'maxRpm'},
    {'1': 'idle_rpm', '3': 10, '4': 1, '5': 13, '10': 'idleRpm'},
    {'1': 'max_gears', '3': 11, '4': 1, '5': 13, '10': 'maxGears'},
    {'1': 'drs_allowed', '3': 12, '4': 1, '5': 13, '10': 'drsAllowed'},
    {
      '1': 'drs_activation_distance',
      '3': 13,
      '4': 1,
      '5': 13,
      '10': 'drsActivationDistance'
    },
    {
      '1': 'actual_tyre_compound',
      '3': 14,
      '4': 1,
      '5': 13,
      '10': 'actualTyreCompound'
    },
    {
      '1': 'visual_tyre_compound',
      '3': 15,
      '4': 1,
      '5': 13,
      '10': 'visualTyreCompound'
    },
    {'1': 'tyres_age_laps', '3': 16, '4': 1, '5': 13, '10': 'tyresAgeLaps'},
    {
      '1': 'vehicle_fia_flags',
      '3': 17,
      '4': 1,
      '5': 5,
      '10': 'vehicleFiaFlags'
    },
    {'1': 'engine_power_ice', '3': 18, '4': 1, '5': 2, '10': 'enginePowerIce'},
    {
      '1': 'engine_power_mguk',
      '3': 19,
      '4': 1,
      '5': 2,
      '10': 'enginePowerMguk'
    },
    {'1': 'ers_store_energy', '3': 20, '4': 1, '5': 2, '10': 'ersStoreEnergy'},
    {'1': 'ers_deploy_mode', '3': 21, '4': 1, '5': 13, '10': 'ersDeployMode'},
    {
      '1': 'ers_harvested_this_lap_mguk',
      '3': 22,
      '4': 1,
      '5': 2,
      '10': 'ersHarvestedThisLapMguk'
    },
    {
      '1': 'ers_harvested_this_lap_mguh',
      '3': 23,
      '4': 1,
      '5': 2,
      '10': 'ersHarvestedThisLapMguh'
    },
    {
      '1': 'ers_deployed_this_lap',
      '3': 24,
      '4': 1,
      '5': 2,
      '10': 'ersDeployedThisLap'
    },
    {'1': 'network_paused', '3': 25, '4': 1, '5': 13, '10': 'networkPaused'},
  ],
};

/// Descriptor for `CarStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List carStatusDescriptor = $convert.base64Decode(
    'CglDYXJTdGF0dXMSKQoQdHJhY3Rpb25fY29udHJvbBgBIAEoDVIPdHJhY3Rpb25Db250cm9sEi'
    'gKEGFudGlfbG9ja19icmFrZXMYAiABKA1SDmFudGlMb2NrQnJha2VzEhkKCGZ1ZWxfbWl4GAMg'
    'ASgNUgdmdWVsTWl4EigKEGZyb250X2JyYWtlX2JpYXMYBCABKA1SDmZyb250QnJha2VCaWFzEi'
    'wKEnBpdF9saW1pdGVyX3N0YXR1cxgFIAEoDVIQcGl0TGltaXRlclN0YXR1cxIgCgxmdWVsX2lu'
    'X3RhbmsYBiABKAJSCmZ1ZWxJblRhbmsSIwoNZnVlbF9jYXBhY2l0eRgHIAEoAlIMZnVlbENhcG'
    'FjaXR5Ei4KE2Z1ZWxfcmVtYWluaW5nX2xhcHMYCCABKAJSEWZ1ZWxSZW1haW5pbmdMYXBzEhcK'
    'B21heF9ycG0YCSABKA1SBm1heFJwbRIZCghpZGxlX3JwbRgKIAEoDVIHaWRsZVJwbRIbCgltYX'
    'hfZ2VhcnMYCyABKA1SCG1heEdlYXJzEh8KC2Ryc19hbGxvd2VkGAwgASgNUgpkcnNBbGxvd2Vk'
    'EjYKF2Ryc19hY3RpdmF0aW9uX2Rpc3RhbmNlGA0gASgNUhVkcnNBY3RpdmF0aW9uRGlzdGFuY2'
    'USMAoUYWN0dWFsX3R5cmVfY29tcG91bmQYDiABKA1SEmFjdHVhbFR5cmVDb21wb3VuZBIwChR2'
    'aXN1YWxfdHlyZV9jb21wb3VuZBgPIAEoDVISdmlzdWFsVHlyZUNvbXBvdW5kEiQKDnR5cmVzX2'
    'FnZV9sYXBzGBAgASgNUgx0eXJlc0FnZUxhcHMSKgoRdmVoaWNsZV9maWFfZmxhZ3MYESABKAVS'
    'D3ZlaGljbGVGaWFGbGFncxIoChBlbmdpbmVfcG93ZXJfaWNlGBIgASgCUg5lbmdpbmVQb3dlck'
    'ljZRIqChFlbmdpbmVfcG93ZXJfbWd1axgTIAEoAlIPZW5naW5lUG93ZXJNZ3VrEigKEGVyc19z'
    'dG9yZV9lbmVyZ3kYFCABKAJSDmVyc1N0b3JlRW5lcmd5EiYKD2Vyc19kZXBsb3lfbW9kZRgVIA'
    'EoDVINZXJzRGVwbG95TW9kZRI8ChtlcnNfaGFydmVzdGVkX3RoaXNfbGFwX21ndWsYFiABKAJS'
    'F2Vyc0hhcnZlc3RlZFRoaXNMYXBNZ3VrEjwKG2Vyc19oYXJ2ZXN0ZWRfdGhpc19sYXBfbWd1aB'
    'gXIAEoAlIXZXJzSGFydmVzdGVkVGhpc0xhcE1ndWgSMQoVZXJzX2RlcGxveWVkX3RoaXNfbGFw'
    'GBggASgCUhJlcnNEZXBsb3llZFRoaXNMYXASJQoObmV0d29ya19wYXVzZWQYGSABKA1SDW5ldH'
    'dvcmtQYXVzZWQ=');
