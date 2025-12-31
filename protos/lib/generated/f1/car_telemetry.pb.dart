// This is a generated file - do not edit.
//
// Generated from f1/car_telemetry.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// Protocol Buffers - F1 Car Telemetry Data
class CarTelemetry extends $pb.GeneratedMessage {
  factory CarTelemetry({
    $core.int? speed,
    $core.double? throttle,
    $core.double? steer,
    $core.double? brake,
    $core.int? clutch,
    $core.int? gear,
    $core.int? engineRpm,
    $core.int? drs,
    $core.int? revLightsPercent,
    $core.int? revLightsBitValue,
    $core.Iterable<$core.int>? brakesTemperature,
    $core.Iterable<$core.int>? tyresSurfaceTemperature,
    $core.Iterable<$core.int>? tyresInnerTemperature,
    $core.int? engineTemperature,
    $core.Iterable<$core.double>? tyresPressure,
    $core.Iterable<$core.int>? surfaceType,
  }) {
    final result = create();
    if (speed != null) result.speed = speed;
    if (throttle != null) result.throttle = throttle;
    if (steer != null) result.steer = steer;
    if (brake != null) result.brake = brake;
    if (clutch != null) result.clutch = clutch;
    if (gear != null) result.gear = gear;
    if (engineRpm != null) result.engineRpm = engineRpm;
    if (drs != null) result.drs = drs;
    if (revLightsPercent != null) result.revLightsPercent = revLightsPercent;
    if (revLightsBitValue != null) result.revLightsBitValue = revLightsBitValue;
    if (brakesTemperature != null)
      result.brakesTemperature.addAll(brakesTemperature);
    if (tyresSurfaceTemperature != null)
      result.tyresSurfaceTemperature.addAll(tyresSurfaceTemperature);
    if (tyresInnerTemperature != null)
      result.tyresInnerTemperature.addAll(tyresInnerTemperature);
    if (engineTemperature != null) result.engineTemperature = engineTemperature;
    if (tyresPressure != null) result.tyresPressure.addAll(tyresPressure);
    if (surfaceType != null) result.surfaceType.addAll(surfaceType);
    return result;
  }

  CarTelemetry._();

  factory CarTelemetry.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CarTelemetry.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CarTelemetry',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'f1'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'speed', fieldType: $pb.PbFieldType.OU3)
    ..aD(2, _omitFieldNames ? '' : 'throttle', fieldType: $pb.PbFieldType.OF)
    ..aD(3, _omitFieldNames ? '' : 'steer', fieldType: $pb.PbFieldType.OF)
    ..aD(4, _omitFieldNames ? '' : 'brake', fieldType: $pb.PbFieldType.OF)
    ..aI(5, _omitFieldNames ? '' : 'clutch', fieldType: $pb.PbFieldType.OU3)
    ..aI(6, _omitFieldNames ? '' : 'gear')
    ..aI(7, _omitFieldNames ? '' : 'engineRpm', fieldType: $pb.PbFieldType.OU3)
    ..aI(8, _omitFieldNames ? '' : 'drs', fieldType: $pb.PbFieldType.OU3)
    ..aI(9, _omitFieldNames ? '' : 'revLightsPercent',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(10, _omitFieldNames ? '' : 'revLightsBitValue',
        fieldType: $pb.PbFieldType.OU3)
    ..p<$core.int>(
        11, _omitFieldNames ? '' : 'brakesTemperature', $pb.PbFieldType.KU3)
    ..p<$core.int>(12, _omitFieldNames ? '' : 'tyresSurfaceTemperature',
        $pb.PbFieldType.KU3)
    ..p<$core.int>(
        13, _omitFieldNames ? '' : 'tyresInnerTemperature', $pb.PbFieldType.KU3)
    ..aI(14, _omitFieldNames ? '' : 'engineTemperature',
        fieldType: $pb.PbFieldType.OU3)
    ..p<$core.double>(
        15, _omitFieldNames ? '' : 'tyresPressure', $pb.PbFieldType.KF)
    ..p<$core.int>(
        16, _omitFieldNames ? '' : 'surfaceType', $pb.PbFieldType.KU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CarTelemetry clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CarTelemetry copyWith(void Function(CarTelemetry) updates) =>
      super.copyWith((message) => updates(message as CarTelemetry))
          as CarTelemetry;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CarTelemetry create() => CarTelemetry._();
  @$core.override
  CarTelemetry createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CarTelemetry getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CarTelemetry>(create);
  static CarTelemetry? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get speed => $_getIZ(0);
  @$pb.TagNumber(1)
  set speed($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSpeed() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpeed() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get throttle => $_getN(1);
  @$pb.TagNumber(2)
  set throttle($core.double value) => $_setFloat(1, value);
  @$pb.TagNumber(2)
  $core.bool hasThrottle() => $_has(1);
  @$pb.TagNumber(2)
  void clearThrottle() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get steer => $_getN(2);
  @$pb.TagNumber(3)
  set steer($core.double value) => $_setFloat(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSteer() => $_has(2);
  @$pb.TagNumber(3)
  void clearSteer() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get brake => $_getN(3);
  @$pb.TagNumber(4)
  set brake($core.double value) => $_setFloat(3, value);
  @$pb.TagNumber(4)
  $core.bool hasBrake() => $_has(3);
  @$pb.TagNumber(4)
  void clearBrake() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get clutch => $_getIZ(4);
  @$pb.TagNumber(5)
  set clutch($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasClutch() => $_has(4);
  @$pb.TagNumber(5)
  void clearClutch() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get gear => $_getIZ(5);
  @$pb.TagNumber(6)
  set gear($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasGear() => $_has(5);
  @$pb.TagNumber(6)
  void clearGear() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get engineRpm => $_getIZ(6);
  @$pb.TagNumber(7)
  set engineRpm($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasEngineRpm() => $_has(6);
  @$pb.TagNumber(7)
  void clearEngineRpm() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get drs => $_getIZ(7);
  @$pb.TagNumber(8)
  set drs($core.int value) => $_setUnsignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasDrs() => $_has(7);
  @$pb.TagNumber(8)
  void clearDrs() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.int get revLightsPercent => $_getIZ(8);
  @$pb.TagNumber(9)
  set revLightsPercent($core.int value) => $_setUnsignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasRevLightsPercent() => $_has(8);
  @$pb.TagNumber(9)
  void clearRevLightsPercent() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.int get revLightsBitValue => $_getIZ(9);
  @$pb.TagNumber(10)
  set revLightsBitValue($core.int value) => $_setUnsignedInt32(9, value);
  @$pb.TagNumber(10)
  $core.bool hasRevLightsBitValue() => $_has(9);
  @$pb.TagNumber(10)
  void clearRevLightsBitValue() => $_clearField(10);

  /// Brakes temperature (celsius) - [RL, RR, FL, FR]
  @$pb.TagNumber(11)
  $pb.PbList<$core.int> get brakesTemperature => $_getList(10);

  /// Tyres surface temperature (celsius) - [RL, RR, FL, FR]
  @$pb.TagNumber(12)
  $pb.PbList<$core.int> get tyresSurfaceTemperature => $_getList(11);

  /// Tyres inner temperature (celsius) - [RL, RR, FL, FR]
  @$pb.TagNumber(13)
  $pb.PbList<$core.int> get tyresInnerTemperature => $_getList(12);

  @$pb.TagNumber(14)
  $core.int get engineTemperature => $_getIZ(13);
  @$pb.TagNumber(14)
  set engineTemperature($core.int value) => $_setUnsignedInt32(13, value);
  @$pb.TagNumber(14)
  $core.bool hasEngineTemperature() => $_has(13);
  @$pb.TagNumber(14)
  void clearEngineTemperature() => $_clearField(14);

  /// Tyres pressure (PSI) - [RL, RR, FL, FR]
  @$pb.TagNumber(15)
  $pb.PbList<$core.double> get tyresPressure => $_getList(14);

  /// Driving surface type - [RL, RR, FL, FR]
  @$pb.TagNumber(16)
  $pb.PbList<$core.int> get surfaceType => $_getList(15);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
