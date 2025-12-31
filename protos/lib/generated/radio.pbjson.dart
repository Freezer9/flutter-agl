//
//  Generated code. Do not modify.
//  source: radio.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use bandDescriptor instead')
const Band$json = {
  '1': 'Band',
  '2': [
    {'1': 'BAND_UNSPECIFIED', '2': 0},
    {'1': 'BAND_AM', '2': 1},
    {'1': 'BAND_FM', '2': 2},
    {'1': 'BAND_DBS', '2': 3},
  ],
};

/// Descriptor for `Band`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List bandDescriptor = $convert.base64Decode(
    'CgRCYW5kEhQKEEJBTkRfVU5TUEVDSUZJRUQQABILCgdCQU5EX0FNEAESCwoHQkFORF9GTRACEg'
    'wKCEJBTkRfREJTEAM=');

@$core.Deprecated('Use stereoModeDescriptor instead')
const StereoMode$json = {
  '1': 'StereoMode',
  '2': [
    {'1': 'STEREO_MODE_UNSPECIFIED', '2': 0},
    {'1': 'STEREO_MODE_MONO', '2': 1},
    {'1': 'STEREO_MODE_STEREO', '2': 2},
  ],
};

/// Descriptor for `StereoMode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List stereoModeDescriptor = $convert.base64Decode(
    'CgpTdGVyZW9Nb2RlEhsKF1NURVJFT19NT0RFX1VOU1BFQ0lGSUVEEAASFAoQU1RFUkVPX01PRE'
    'VfTU9OTxABEhYKElNURVJFT19NT0RFX1NURVJFTxAC');

@$core.Deprecated('Use scanDirectionDescriptor instead')
const ScanDirection$json = {
  '1': 'ScanDirection',
  '2': [
    {'1': 'SCAN_DIRECTION_UNSPECIFIED', '2': 0},
    {'1': 'SCAN_DIRECTION_FORWARD', '2': 1},
    {'1': 'SCAN_DIRECTION_BACKWARD', '2': 2},
  ],
};

/// Descriptor for `ScanDirection`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List scanDirectionDescriptor = $convert.base64Decode(
    'Cg1TY2FuRGlyZWN0aW9uEh4KGlNDQU5fRElSRUNUSU9OX1VOU1BFQ0lGSUVEEAASGgoWU0NBTl'
    '9ESVJFQ1RJT05fRk9SV0FSRBABEhsKF1NDQU5fRElSRUNUSU9OX0JBQ0tXQVJEEAI=');

@$core.Deprecated('Use getFrequencyRequestDescriptor instead')
const GetFrequencyRequest$json = {
  '1': 'GetFrequencyRequest',
};

/// Descriptor for `GetFrequencyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getFrequencyRequestDescriptor =
    $convert.base64Decode('ChNHZXRGcmVxdWVuY3lSZXF1ZXN0');

@$core.Deprecated('Use getFrequencyResponseDescriptor instead')
const GetFrequencyResponse$json = {
  '1': 'GetFrequencyResponse',
  '2': [
    {'1': 'frequency', '3': 1, '4': 1, '5': 13, '10': 'frequency'},
  ],
};

/// Descriptor for `GetFrequencyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getFrequencyResponseDescriptor = $convert.base64Decode(
    'ChRHZXRGcmVxdWVuY3lSZXNwb25zZRIcCglmcmVxdWVuY3kYASABKA1SCWZyZXF1ZW5jeQ==');

@$core.Deprecated('Use setFrequencyRequestDescriptor instead')
const SetFrequencyRequest$json = {
  '1': 'SetFrequencyRequest',
  '2': [
    {'1': 'frequency', '3': 1, '4': 1, '5': 13, '10': 'frequency'},
  ],
};

/// Descriptor for `SetFrequencyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setFrequencyRequestDescriptor =
    $convert.base64Decode(
        'ChNTZXRGcmVxdWVuY3lSZXF1ZXN0EhwKCWZyZXF1ZW5jeRgBIAEoDVIJZnJlcXVlbmN5');

@$core.Deprecated('Use setFrequencyResponseDescriptor instead')
const SetFrequencyResponse$json = {
  '1': 'SetFrequencyResponse',
  '2': [
    {'1': 'frequency', '3': 1, '4': 1, '5': 13, '10': 'frequency'},
  ],
};

/// Descriptor for `SetFrequencyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setFrequencyResponseDescriptor = $convert.base64Decode(
    'ChRTZXRGcmVxdWVuY3lSZXNwb25zZRIcCglmcmVxdWVuY3kYASABKA1SCWZyZXF1ZW5jeQ==');

@$core.Deprecated('Use getBandRequestDescriptor instead')
const GetBandRequest$json = {
  '1': 'GetBandRequest',
};

/// Descriptor for `GetBandRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBandRequestDescriptor =
    $convert.base64Decode('Cg5HZXRCYW5kUmVxdWVzdA==');

@$core.Deprecated('Use getBandResponseDescriptor instead')
const GetBandResponse$json = {
  '1': 'GetBandResponse',
  '2': [
    {
      '1': 'band',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.automotivegradelinux.Band',
      '10': 'band'
    },
  ],
};

/// Descriptor for `GetBandResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBandResponseDescriptor = $convert.base64Decode(
    'Cg9HZXRCYW5kUmVzcG9uc2USLgoEYmFuZBgBIAEoDjIaLmF1dG9tb3RpdmVncmFkZWxpbnV4Lk'
    'JhbmRSBGJhbmQ=');

@$core.Deprecated('Use setBandRequestDescriptor instead')
const SetBandRequest$json = {
  '1': 'SetBandRequest',
  '2': [
    {
      '1': 'band',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.automotivegradelinux.Band',
      '10': 'band'
    },
  ],
};

/// Descriptor for `SetBandRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setBandRequestDescriptor = $convert.base64Decode(
    'Cg5TZXRCYW5kUmVxdWVzdBIuCgRiYW5kGAEgASgOMhouYXV0b21vdGl2ZWdyYWRlbGludXguQm'
    'FuZFIEYmFuZA==');

@$core.Deprecated('Use setBandResponseDescriptor instead')
const SetBandResponse$json = {
  '1': 'SetBandResponse',
  '2': [
    {
      '1': 'band',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.automotivegradelinux.Band',
      '10': 'band'
    },
  ],
};

/// Descriptor for `SetBandResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setBandResponseDescriptor = $convert.base64Decode(
    'Cg9TZXRCYW5kUmVzcG9uc2USLgoEYmFuZBgBIAEoDjIaLmF1dG9tb3RpdmVncmFkZWxpbnV4Lk'
    'JhbmRSBGJhbmQ=');

@$core.Deprecated('Use getBandSupportedRequestDescriptor instead')
const GetBandSupportedRequest$json = {
  '1': 'GetBandSupportedRequest',
  '2': [
    {
      '1': 'band',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.automotivegradelinux.Band',
      '10': 'band'
    },
  ],
};

/// Descriptor for `GetBandSupportedRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBandSupportedRequestDescriptor =
    $convert.base64Decode(
        'ChdHZXRCYW5kU3VwcG9ydGVkUmVxdWVzdBIuCgRiYW5kGAEgASgOMhouYXV0b21vdGl2ZWdyYW'
        'RlbGludXguQmFuZFIEYmFuZA==');

@$core.Deprecated('Use getBandSupportedResponseDescriptor instead')
const GetBandSupportedResponse$json = {
  '1': 'GetBandSupportedResponse',
  '2': [
    {'1': 'supported', '3': 1, '4': 1, '5': 8, '10': 'supported'},
  ],
};

/// Descriptor for `GetBandSupportedResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBandSupportedResponseDescriptor =
    $convert.base64Decode(
        'ChhHZXRCYW5kU3VwcG9ydGVkUmVzcG9uc2USHAoJc3VwcG9ydGVkGAEgASgIUglzdXBwb3J0ZW'
        'Q=');

@$core.Deprecated('Use getBandParametersRequestDescriptor instead')
const GetBandParametersRequest$json = {
  '1': 'GetBandParametersRequest',
  '2': [
    {
      '1': 'band',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.automotivegradelinux.Band',
      '10': 'band'
    },
  ],
};

/// Descriptor for `GetBandParametersRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBandParametersRequestDescriptor =
    $convert.base64Decode(
        'ChhHZXRCYW5kUGFyYW1ldGVyc1JlcXVlc3QSLgoEYmFuZBgBIAEoDjIaLmF1dG9tb3RpdmVncm'
        'FkZWxpbnV4LkJhbmRSBGJhbmQ=');

@$core.Deprecated('Use getBandParametersResponseDescriptor instead')
const GetBandParametersResponse$json = {
  '1': 'GetBandParametersResponse',
  '2': [
    {'1': 'min', '3': 1, '4': 1, '5': 13, '10': 'min'},
    {'1': 'max', '3': 2, '4': 1, '5': 13, '10': 'max'},
    {'1': 'step', '3': 3, '4': 1, '5': 13, '10': 'step'},
  ],
};

/// Descriptor for `GetBandParametersResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBandParametersResponseDescriptor =
    $convert.base64Decode(
        'ChlHZXRCYW5kUGFyYW1ldGVyc1Jlc3BvbnNlEhAKA21pbhgBIAEoDVIDbWluEhAKA21heBgCIA'
        'EoDVIDbWF4EhIKBHN0ZXAYAyABKA1SBHN0ZXA=');

@$core.Deprecated('Use getStereoModeRequestDescriptor instead')
const GetStereoModeRequest$json = {
  '1': 'GetStereoModeRequest',
};

/// Descriptor for `GetStereoModeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getStereoModeRequestDescriptor =
    $convert.base64Decode('ChRHZXRTdGVyZW9Nb2RlUmVxdWVzdA==');

@$core.Deprecated('Use getStereoModeResponseDescriptor instead')
const GetStereoModeResponse$json = {
  '1': 'GetStereoModeResponse',
  '2': [
    {
      '1': 'mode',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.automotivegradelinux.StereoMode',
      '10': 'mode'
    },
  ],
};

/// Descriptor for `GetStereoModeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getStereoModeResponseDescriptor = $convert.base64Decode(
    'ChVHZXRTdGVyZW9Nb2RlUmVzcG9uc2USNAoEbW9kZRgBIAEoDjIgLmF1dG9tb3RpdmVncmFkZW'
    'xpbnV4LlN0ZXJlb01vZGVSBG1vZGU=');

@$core.Deprecated('Use setStereoModeRequestDescriptor instead')
const SetStereoModeRequest$json = {
  '1': 'SetStereoModeRequest',
  '2': [
    {
      '1': 'mode',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.automotivegradelinux.StereoMode',
      '10': 'mode'
    },
  ],
};

/// Descriptor for `SetStereoModeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setStereoModeRequestDescriptor = $convert.base64Decode(
    'ChRTZXRTdGVyZW9Nb2RlUmVxdWVzdBI0CgRtb2RlGAEgASgOMiAuYXV0b21vdGl2ZWdyYWRlbG'
    'ludXguU3RlcmVvTW9kZVIEbW9kZQ==');

@$core.Deprecated('Use setStereoModeResponseDescriptor instead')
const SetStereoModeResponse$json = {
  '1': 'SetStereoModeResponse',
  '2': [
    {
      '1': 'mode',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.automotivegradelinux.StereoMode',
      '10': 'mode'
    },
  ],
};

/// Descriptor for `SetStereoModeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setStereoModeResponseDescriptor = $convert.base64Decode(
    'ChVTZXRTdGVyZW9Nb2RlUmVzcG9uc2USNAoEbW9kZRgBIAEoDjIgLmF1dG9tb3RpdmVncmFkZW'
    'xpbnV4LlN0ZXJlb01vZGVSBG1vZGU=');

@$core.Deprecated('Use startRequestDescriptor instead')
const StartRequest$json = {
  '1': 'StartRequest',
};

/// Descriptor for `StartRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List startRequestDescriptor =
    $convert.base64Decode('CgxTdGFydFJlcXVlc3Q=');

@$core.Deprecated('Use startResponseDescriptor instead')
const StartResponse$json = {
  '1': 'StartResponse',
};

/// Descriptor for `StartResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List startResponseDescriptor =
    $convert.base64Decode('Cg1TdGFydFJlc3BvbnNl');

@$core.Deprecated('Use stopRequestDescriptor instead')
const StopRequest$json = {
  '1': 'StopRequest',
};

/// Descriptor for `StopRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stopRequestDescriptor =
    $convert.base64Decode('CgtTdG9wUmVxdWVzdA==');

@$core.Deprecated('Use stopResponseDescriptor instead')
const StopResponse$json = {
  '1': 'StopResponse',
};

/// Descriptor for `StopResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stopResponseDescriptor =
    $convert.base64Decode('CgxTdG9wUmVzcG9uc2U=');

@$core.Deprecated('Use scanStartRequestDescriptor instead')
const ScanStartRequest$json = {
  '1': 'ScanStartRequest',
  '2': [
    {
      '1': 'direction',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.automotivegradelinux.ScanDirection',
      '10': 'direction'
    },
  ],
};

/// Descriptor for `ScanStartRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scanStartRequestDescriptor = $convert.base64Decode(
    'ChBTY2FuU3RhcnRSZXF1ZXN0EkEKCWRpcmVjdGlvbhgBIAEoDjIjLmF1dG9tb3RpdmVncmFkZW'
    'xpbnV4LlNjYW5EaXJlY3Rpb25SCWRpcmVjdGlvbg==');

@$core.Deprecated('Use scanStartResponseDescriptor instead')
const ScanStartResponse$json = {
  '1': 'ScanStartResponse',
};

/// Descriptor for `ScanStartResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scanStartResponseDescriptor =
    $convert.base64Decode('ChFTY2FuU3RhcnRSZXNwb25zZQ==');

@$core.Deprecated('Use scanStopRequestDescriptor instead')
const ScanStopRequest$json = {
  '1': 'ScanStopRequest',
};

/// Descriptor for `ScanStopRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scanStopRequestDescriptor =
    $convert.base64Decode('Cg9TY2FuU3RvcFJlcXVlc3Q=');

@$core.Deprecated('Use scanStopResponseDescriptor instead')
const ScanStopResponse$json = {
  '1': 'ScanStopResponse',
};

/// Descriptor for `ScanStopResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scanStopResponseDescriptor =
    $convert.base64Decode('ChBTY2FuU3RvcFJlc3BvbnNl');

@$core.Deprecated('Use getRDSRequestDescriptor instead')
const GetRDSRequest$json = {
  '1': 'GetRDSRequest',
};

/// Descriptor for `GetRDSRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRDSRequestDescriptor =
    $convert.base64Decode('Cg1HZXRSRFNSZXF1ZXN0');

@$core.Deprecated('Use getRDSResponseDescriptor instead')
const GetRDSResponse$json = {
  '1': 'GetRDSResponse',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'radio_text', '3': 2, '4': 1, '5': 9, '10': 'radioText'},
    {'1': 'alternatives', '3': 3, '4': 1, '5': 9, '10': 'alternatives'},
    {'1': 'minute', '3': 4, '4': 1, '5': 9, '10': 'minute'},
    {'1': 'hour', '3': 5, '4': 1, '5': 9, '10': 'hour'},
    {'1': 'day', '3': 6, '4': 1, '5': 9, '10': 'day'},
    {'1': 'month', '3': 7, '4': 1, '5': 9, '10': 'month'},
    {'1': 'year', '3': 8, '4': 1, '5': 9, '10': 'year'},
    {'1': 'pi', '3': 9, '4': 1, '5': 9, '10': 'pi'},
    {'1': 'pty', '3': 10, '4': 1, '5': 9, '10': 'pty'},
    {'1': 'ta', '3': 11, '4': 1, '5': 9, '10': 'ta'},
    {'1': 'tp', '3': 12, '4': 1, '5': 9, '10': 'tp'},
    {'1': 'ms', '3': 13, '4': 1, '5': 9, '10': 'ms'},
  ],
};

/// Descriptor for `GetRDSResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRDSResponseDescriptor = $convert.base64Decode(
    'Cg5HZXRSRFNSZXNwb25zZRISCgRuYW1lGAEgASgJUgRuYW1lEh0KCnJhZGlvX3RleHQYAiABKA'
    'lSCXJhZGlvVGV4dBIiCgxhbHRlcm5hdGl2ZXMYAyABKAlSDGFsdGVybmF0aXZlcxIWCgZtaW51'
    'dGUYBCABKAlSBm1pbnV0ZRISCgRob3VyGAUgASgJUgRob3VyEhAKA2RheRgGIAEoCVIDZGF5Eh'
    'QKBW1vbnRoGAcgASgJUgVtb250aBISCgR5ZWFyGAggASgJUgR5ZWFyEg4KAnBpGAkgASgJUgJw'
    'aRIQCgNwdHkYCiABKAlSA3B0eRIOCgJ0YRgLIAEoCVICdGESDgoCdHAYDCABKAlSAnRwEg4KAm'
    '1zGA0gASgJUgJtcw==');

@$core.Deprecated('Use getQualityRequestDescriptor instead')
const GetQualityRequest$json = {
  '1': 'GetQualityRequest',
};

/// Descriptor for `GetQualityRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getQualityRequestDescriptor =
    $convert.base64Decode('ChFHZXRRdWFsaXR5UmVxdWVzdA==');

@$core.Deprecated('Use getQualityResponseDescriptor instead')
const GetQualityResponse$json = {
  '1': 'GetQualityResponse',
};

/// Descriptor for `GetQualityResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getQualityResponseDescriptor =
    $convert.base64Decode('ChJHZXRRdWFsaXR5UmVzcG9uc2U=');

@$core.Deprecated('Use setAlternativeFrequencyRequestDescriptor instead')
const SetAlternativeFrequencyRequest$json = {
  '1': 'SetAlternativeFrequencyRequest',
  '2': [
    {'1': 'frequency', '3': 1, '4': 1, '5': 13, '10': 'frequency'},
  ],
};

/// Descriptor for `SetAlternativeFrequencyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setAlternativeFrequencyRequestDescriptor =
    $convert.base64Decode(
        'Ch5TZXRBbHRlcm5hdGl2ZUZyZXF1ZW5jeVJlcXVlc3QSHAoJZnJlcXVlbmN5GAEgASgNUglmcm'
        'VxdWVuY3k=');

@$core.Deprecated('Use setAlternativeFrequencyResponseDescriptor instead')
const SetAlternativeFrequencyResponse$json = {
  '1': 'SetAlternativeFrequencyResponse',
  '2': [
    {'1': 'frequency', '3': 1, '4': 1, '5': 13, '10': 'frequency'},
  ],
};

/// Descriptor for `SetAlternativeFrequencyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setAlternativeFrequencyResponseDescriptor =
    $convert.base64Decode(
        'Ch9TZXRBbHRlcm5hdGl2ZUZyZXF1ZW5jeVJlc3BvbnNlEhwKCWZyZXF1ZW5jeRgBIAEoDVIJZn'
        'JlcXVlbmN5');

@$core.Deprecated('Use statusRequestDescriptor instead')
const StatusRequest$json = {
  '1': 'StatusRequest',
};

/// Descriptor for `StatusRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List statusRequestDescriptor =
    $convert.base64Decode('Cg1TdGF0dXNSZXF1ZXN0');

@$core.Deprecated('Use bandStatusDescriptor instead')
const BandStatus$json = {
  '1': 'BandStatus',
  '2': [
    {
      '1': 'band',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.automotivegradelinux.Band',
      '10': 'band'
    },
  ],
};

/// Descriptor for `BandStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bandStatusDescriptor = $convert.base64Decode(
    'CgpCYW5kU3RhdHVzEi4KBGJhbmQYASABKA4yGi5hdXRvbW90aXZlZ3JhZGVsaW51eC5CYW5kUg'
    'RiYW5k');

@$core.Deprecated('Use frequencyStatusDescriptor instead')
const FrequencyStatus$json = {
  '1': 'FrequencyStatus',
  '2': [
    {'1': 'frequency', '3': 1, '4': 1, '5': 13, '10': 'frequency'},
  ],
};

/// Descriptor for `FrequencyStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List frequencyStatusDescriptor = $convert.base64Decode(
    'Cg9GcmVxdWVuY3lTdGF0dXMSHAoJZnJlcXVlbmN5GAEgASgNUglmcmVxdWVuY3k=');

@$core.Deprecated('Use playStatusDescriptor instead')
const PlayStatus$json = {
  '1': 'PlayStatus',
  '2': [
    {'1': 'playing', '3': 1, '4': 1, '5': 8, '10': 'playing'},
  ],
};

/// Descriptor for `PlayStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List playStatusDescriptor = $convert
    .base64Decode('CgpQbGF5U3RhdHVzEhgKB3BsYXlpbmcYASABKAhSB3BsYXlpbmc=');

@$core.Deprecated('Use scanStatusDescriptor instead')
const ScanStatus$json = {
  '1': 'ScanStatus',
  '2': [
    {'1': 'station_found', '3': 1, '4': 1, '5': 8, '10': 'stationFound'},
  ],
};

/// Descriptor for `ScanStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scanStatusDescriptor = $convert.base64Decode(
    'CgpTY2FuU3RhdHVzEiMKDXN0YXRpb25fZm91bmQYASABKAhSDHN0YXRpb25Gb3VuZA==');

@$core.Deprecated('Use stereoStatusDescriptor instead')
const StereoStatus$json = {
  '1': 'StereoStatus',
  '2': [
    {
      '1': 'mode',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.automotivegradelinux.StereoMode',
      '10': 'mode'
    },
  ],
};

/// Descriptor for `StereoStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stereoStatusDescriptor = $convert.base64Decode(
    'CgxTdGVyZW9TdGF0dXMSNAoEbW9kZRgBIAEoDjIgLmF1dG9tb3RpdmVncmFkZWxpbnV4LlN0ZX'
    'Jlb01vZGVSBG1vZGU=');

@$core.Deprecated('Use statusResponseDescriptor instead')
const StatusResponse$json = {
  '1': 'StatusResponse',
  '2': [
    {
      '1': 'band',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.automotivegradelinux.BandStatus',
      '9': 0,
      '10': 'band'
    },
    {
      '1': 'frequency',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.automotivegradelinux.FrequencyStatus',
      '9': 0,
      '10': 'frequency'
    },
    {
      '1': 'play',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.automotivegradelinux.PlayStatus',
      '9': 0,
      '10': 'play'
    },
    {
      '1': 'stereo',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.automotivegradelinux.StereoStatus',
      '9': 0,
      '10': 'stereo'
    },
    {
      '1': 'scan',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.automotivegradelinux.ScanStatus',
      '9': 0,
      '10': 'scan'
    },
  ],
  '8': [
    {'1': 'status'},
  ],
};

/// Descriptor for `StatusResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List statusResponseDescriptor = $convert.base64Decode(
    'Cg5TdGF0dXNSZXNwb25zZRI2CgRiYW5kGAEgASgLMiAuYXV0b21vdGl2ZWdyYWRlbGludXguQm'
    'FuZFN0YXR1c0gAUgRiYW5kEkUKCWZyZXF1ZW5jeRgCIAEoCzIlLmF1dG9tb3RpdmVncmFkZWxp'
    'bnV4LkZyZXF1ZW5jeVN0YXR1c0gAUglmcmVxdWVuY3kSNgoEcGxheRgDIAEoCzIgLmF1dG9tb3'
    'RpdmVncmFkZWxpbnV4LlBsYXlTdGF0dXNIAFIEcGxheRI8CgZzdGVyZW8YBCABKAsyIi5hdXRv'
    'bW90aXZlZ3JhZGVsaW51eC5TdGVyZW9TdGF0dXNIAFIGc3RlcmVvEjYKBHNjYW4YBSABKAsyIC'
    '5hdXRvbW90aXZlZ3JhZGVsaW51eC5TY2FuU3RhdHVzSABSBHNjYW5CCAoGc3RhdHVz');
