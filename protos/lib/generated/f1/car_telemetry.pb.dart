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
    $core.double? speed,
    $core.double? throttle,
    $core.double? brake,
    $core.int? gear,
    $core.double? engineRpm,
    $core.double? drs,
    $core.double? frontLeftTyrePressure,
    $core.double? frontRightTyrePressure,
    $core.double? rearLeftTyrePressure,
    $core.double? rearRightTyrePressure,
    $core.double? frontLeftWheelAngle,
    $core.double? frontRightWheelAngle,
    $core.double? rearLeftWheelAngle,
    $core.double? rearRightWheelAngle,
  }) {
    final result = create();
    if (speed != null) result.speed = speed;
    if (throttle != null) result.throttle = throttle;
    if (brake != null) result.brake = brake;
    if (gear != null) result.gear = gear;
    if (engineRpm != null) result.engineRpm = engineRpm;
    if (drs != null) result.drs = drs;
    if (frontLeftTyrePressure != null)
      result.frontLeftTyrePressure = frontLeftTyrePressure;
    if (frontRightTyrePressure != null)
      result.frontRightTyrePressure = frontRightTyrePressure;
    if (rearLeftTyrePressure != null)
      result.rearLeftTyrePressure = rearLeftTyrePressure;
    if (rearRightTyrePressure != null)
      result.rearRightTyrePressure = rearRightTyrePressure;
    if (frontLeftWheelAngle != null)
      result.frontLeftWheelAngle = frontLeftWheelAngle;
    if (frontRightWheelAngle != null)
      result.frontRightWheelAngle = frontRightWheelAngle;
    if (rearLeftWheelAngle != null)
      result.rearLeftWheelAngle = rearLeftWheelAngle;
    if (rearRightWheelAngle != null)
      result.rearRightWheelAngle = rearRightWheelAngle;
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
    ..aD(1, _omitFieldNames ? '' : 'speed', fieldType: $pb.PbFieldType.OF)
    ..aD(2, _omitFieldNames ? '' : 'throttle', fieldType: $pb.PbFieldType.OF)
    ..aD(3, _omitFieldNames ? '' : 'brake', fieldType: $pb.PbFieldType.OF)
    ..aI(4, _omitFieldNames ? '' : 'gear')
    ..aD(5, _omitFieldNames ? '' : 'engineRpm', fieldType: $pb.PbFieldType.OF)
    ..aD(6, _omitFieldNames ? '' : 'drs', fieldType: $pb.PbFieldType.OF)
    ..aD(7, _omitFieldNames ? '' : 'frontLeftTyrePressure',
        fieldType: $pb.PbFieldType.OF)
    ..aD(8, _omitFieldNames ? '' : 'frontRightTyrePressure',
        fieldType: $pb.PbFieldType.OF)
    ..aD(9, _omitFieldNames ? '' : 'rearLeftTyrePressure',
        fieldType: $pb.PbFieldType.OF)
    ..aD(10, _omitFieldNames ? '' : 'rearRightTyrePressure',
        fieldType: $pb.PbFieldType.OF)
    ..aD(11, _omitFieldNames ? '' : 'frontLeftWheelAngle',
        fieldType: $pb.PbFieldType.OF)
    ..aD(12, _omitFieldNames ? '' : 'frontRightWheelAngle',
        fieldType: $pb.PbFieldType.OF)
    ..aD(13, _omitFieldNames ? '' : 'rearLeftWheelAngle',
        fieldType: $pb.PbFieldType.OF)
    ..aD(14, _omitFieldNames ? '' : 'rearRightWheelAngle',
        fieldType: $pb.PbFieldType.OF)
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
  $core.double get speed => $_getN(0);
  @$pb.TagNumber(1)
  set speed($core.double value) => $_setFloat(0, value);
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
  $core.double get brake => $_getN(2);
  @$pb.TagNumber(3)
  set brake($core.double value) => $_setFloat(2, value);
  @$pb.TagNumber(3)
  $core.bool hasBrake() => $_has(2);
  @$pb.TagNumber(3)
  void clearBrake() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get gear => $_getIZ(3);
  @$pb.TagNumber(4)
  set gear($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasGear() => $_has(3);
  @$pb.TagNumber(4)
  void clearGear() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get engineRpm => $_getN(4);
  @$pb.TagNumber(5)
  set engineRpm($core.double value) => $_setFloat(4, value);
  @$pb.TagNumber(5)
  $core.bool hasEngineRpm() => $_has(4);
  @$pb.TagNumber(5)
  void clearEngineRpm() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.double get drs => $_getN(5);
  @$pb.TagNumber(6)
  set drs($core.double value) => $_setFloat(5, value);
  @$pb.TagNumber(6)
  $core.bool hasDrs() => $_has(5);
  @$pb.TagNumber(6)
  void clearDrs() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.double get frontLeftTyrePressure => $_getN(6);
  @$pb.TagNumber(7)
  set frontLeftTyrePressure($core.double value) => $_setFloat(6, value);
  @$pb.TagNumber(7)
  $core.bool hasFrontLeftTyrePressure() => $_has(6);
  @$pb.TagNumber(7)
  void clearFrontLeftTyrePressure() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.double get frontRightTyrePressure => $_getN(7);
  @$pb.TagNumber(8)
  set frontRightTyrePressure($core.double value) => $_setFloat(7, value);
  @$pb.TagNumber(8)
  $core.bool hasFrontRightTyrePressure() => $_has(7);
  @$pb.TagNumber(8)
  void clearFrontRightTyrePressure() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.double get rearLeftTyrePressure => $_getN(8);
  @$pb.TagNumber(9)
  set rearLeftTyrePressure($core.double value) => $_setFloat(8, value);
  @$pb.TagNumber(9)
  $core.bool hasRearLeftTyrePressure() => $_has(8);
  @$pb.TagNumber(9)
  void clearRearLeftTyrePressure() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.double get rearRightTyrePressure => $_getN(9);
  @$pb.TagNumber(10)
  set rearRightTyrePressure($core.double value) => $_setFloat(9, value);
  @$pb.TagNumber(10)
  $core.bool hasRearRightTyrePressure() => $_has(9);
  @$pb.TagNumber(10)
  void clearRearRightTyrePressure() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.double get frontLeftWheelAngle => $_getN(10);
  @$pb.TagNumber(11)
  set frontLeftWheelAngle($core.double value) => $_setFloat(10, value);
  @$pb.TagNumber(11)
  $core.bool hasFrontLeftWheelAngle() => $_has(10);
  @$pb.TagNumber(11)
  void clearFrontLeftWheelAngle() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.double get frontRightWheelAngle => $_getN(11);
  @$pb.TagNumber(12)
  set frontRightWheelAngle($core.double value) => $_setFloat(11, value);
  @$pb.TagNumber(12)
  $core.bool hasFrontRightWheelAngle() => $_has(11);
  @$pb.TagNumber(12)
  void clearFrontRightWheelAngle() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.double get rearLeftWheelAngle => $_getN(12);
  @$pb.TagNumber(13)
  set rearLeftWheelAngle($core.double value) => $_setFloat(12, value);
  @$pb.TagNumber(13)
  $core.bool hasRearLeftWheelAngle() => $_has(12);
  @$pb.TagNumber(13)
  void clearRearLeftWheelAngle() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.double get rearRightWheelAngle => $_getN(13);
  @$pb.TagNumber(14)
  set rearRightWheelAngle($core.double value) => $_setFloat(13, value);
  @$pb.TagNumber(14)
  $core.bool hasRearRightWheelAngle() => $_has(13);
  @$pb.TagNumber(14)
  void clearRearRightWheelAngle() => $_clearField(14);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
