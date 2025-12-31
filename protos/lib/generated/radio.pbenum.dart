//
//  Generated code. Do not modify.
//  source: radio.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Band extends $pb.ProtobufEnum {
  static const Band BAND_UNSPECIFIED =
      Band._(0, _omitEnumNames ? '' : 'BAND_UNSPECIFIED');
  static const Band BAND_AM = Band._(1, _omitEnumNames ? '' : 'BAND_AM');
  static const Band BAND_FM = Band._(2, _omitEnumNames ? '' : 'BAND_FM');
  static const Band BAND_DBS = Band._(3, _omitEnumNames ? '' : 'BAND_DBS');

  static const $core.List<Band> values = <Band>[
    BAND_UNSPECIFIED,
    BAND_AM,
    BAND_FM,
    BAND_DBS,
  ];

  static final $core.Map<$core.int, Band> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static Band? valueOf($core.int value) => _byValue[value];

  const Band._($core.int v, $core.String n) : super(v, n);
}

class StereoMode extends $pb.ProtobufEnum {
  static const StereoMode STEREO_MODE_UNSPECIFIED =
      StereoMode._(0, _omitEnumNames ? '' : 'STEREO_MODE_UNSPECIFIED');
  static const StereoMode STEREO_MODE_MONO =
      StereoMode._(1, _omitEnumNames ? '' : 'STEREO_MODE_MONO');
  static const StereoMode STEREO_MODE_STEREO =
      StereoMode._(2, _omitEnumNames ? '' : 'STEREO_MODE_STEREO');

  static const $core.List<StereoMode> values = <StereoMode>[
    STEREO_MODE_UNSPECIFIED,
    STEREO_MODE_MONO,
    STEREO_MODE_STEREO,
  ];

  static final $core.Map<$core.int, StereoMode> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static StereoMode? valueOf($core.int value) => _byValue[value];

  const StereoMode._($core.int v, $core.String n) : super(v, n);
}

class ScanDirection extends $pb.ProtobufEnum {
  static const ScanDirection SCAN_DIRECTION_UNSPECIFIED =
      ScanDirection._(0, _omitEnumNames ? '' : 'SCAN_DIRECTION_UNSPECIFIED');
  static const ScanDirection SCAN_DIRECTION_FORWARD =
      ScanDirection._(1, _omitEnumNames ? '' : 'SCAN_DIRECTION_FORWARD');
  static const ScanDirection SCAN_DIRECTION_BACKWARD =
      ScanDirection._(2, _omitEnumNames ? '' : 'SCAN_DIRECTION_BACKWARD');

  static const $core.List<ScanDirection> values = <ScanDirection>[
    SCAN_DIRECTION_UNSPECIFIED,
    SCAN_DIRECTION_FORWARD,
    SCAN_DIRECTION_BACKWARD,
  ];

  static final $core.Map<$core.int, ScanDirection> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static ScanDirection? valueOf($core.int value) => _byValue[value];

  const ScanDirection._($core.int v, $core.String n) : super(v, n);
}

const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
