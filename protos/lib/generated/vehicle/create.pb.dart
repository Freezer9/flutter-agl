// This is a generated file - do not edit.
//
// Generated from vehicle/create.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// Create Vehicle Telemetry Data Message
/// - 1 byte header (0xCA)
/// - 1 byte ID
/// - 2 bytes front left wheel angle (signed int16)
/// - 2 bytes front right wheel angle (signed int16)
/// - 2 bytes rear left wheel angle (signed int16)
/// - 2 bytes rear right wheel angle (signed int16)
/// - 2 bytes vehicle speed (unsigned int16)
/// - 1 byte sequence/checksum
class SimulatorTelemetry extends $pb.GeneratedMessage {
  factory SimulatorTelemetry({
    $core.int? id,
    $core.double? frontLeftAngle,
    $core.double? frontRightAngle,
    $core.double? rearLeftAngle,
    $core.double? rearRightAngle,
    $core.double? speed,
    $core.int? sequence,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (frontLeftAngle != null) result.frontLeftAngle = frontLeftAngle;
    if (frontRightAngle != null) result.frontRightAngle = frontRightAngle;
    if (rearLeftAngle != null) result.rearLeftAngle = rearLeftAngle;
    if (rearRightAngle != null) result.rearRightAngle = rearRightAngle;
    if (speed != null) result.speed = speed;
    if (sequence != null) result.sequence = sequence;
    return result;
  }

  SimulatorTelemetry._();

  factory SimulatorTelemetry.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SimulatorTelemetry.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SimulatorTelemetry',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'vehicle'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'id', fieldType: $pb.PbFieldType.OU3)
    ..aD(2, _omitFieldNames ? '' : 'frontLeftAngle')
    ..aD(3, _omitFieldNames ? '' : 'frontRightAngle')
    ..aD(4, _omitFieldNames ? '' : 'rearLeftAngle')
    ..aD(5, _omitFieldNames ? '' : 'rearRightAngle')
    ..aD(6, _omitFieldNames ? '' : 'speed')
    ..aI(7, _omitFieldNames ? '' : 'sequence', fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SimulatorTelemetry clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SimulatorTelemetry copyWith(void Function(SimulatorTelemetry) updates) =>
      super.copyWith((message) => updates(message as SimulatorTelemetry))
          as SimulatorTelemetry;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SimulatorTelemetry create() => SimulatorTelemetry._();
  @$core.override
  SimulatorTelemetry createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SimulatorTelemetry getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SimulatorTelemetry>(create);
  static SimulatorTelemetry? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get frontLeftAngle => $_getN(1);
  @$pb.TagNumber(2)
  set frontLeftAngle($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasFrontLeftAngle() => $_has(1);
  @$pb.TagNumber(2)
  void clearFrontLeftAngle() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get frontRightAngle => $_getN(2);
  @$pb.TagNumber(3)
  set frontRightAngle($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasFrontRightAngle() => $_has(2);
  @$pb.TagNumber(3)
  void clearFrontRightAngle() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get rearLeftAngle => $_getN(3);
  @$pb.TagNumber(4)
  set rearLeftAngle($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasRearLeftAngle() => $_has(3);
  @$pb.TagNumber(4)
  void clearRearLeftAngle() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get rearRightAngle => $_getN(4);
  @$pb.TagNumber(5)
  set rearRightAngle($core.double value) => $_setDouble(4, value);
  @$pb.TagNumber(5)
  $core.bool hasRearRightAngle() => $_has(4);
  @$pb.TagNumber(5)
  void clearRearRightAngle() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.double get speed => $_getN(5);
  @$pb.TagNumber(6)
  set speed($core.double value) => $_setDouble(5, value);
  @$pb.TagNumber(6)
  $core.bool hasSpeed() => $_has(5);
  @$pb.TagNumber(6)
  void clearSpeed() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get sequence => $_getIZ(6);
  @$pb.TagNumber(7)
  set sequence($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasSequence() => $_has(6);
  @$pb.TagNumber(7)
  void clearSequence() => $_clearField(7);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
