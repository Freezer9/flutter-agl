// This is a generated file - do not edit.
//
// Generated from f1/message.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'car_damage.pb.dart' as $2;
import 'car_status.pb.dart' as $1;
import 'car_telemetry.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

enum VehicleMessage_Payload { telemetry, status, damage, notSet }

/// Protocol Buffers - F1 Vehicle Message
class VehicleMessage extends $pb.GeneratedMessage {
  factory VehicleMessage({
    $0.CarTelemetry? telemetry,
    $1.CarStatus? status,
    $2.CarDamage? damage,
  }) {
    final result = create();
    if (telemetry != null) result.telemetry = telemetry;
    if (status != null) result.status = status;
    if (damage != null) result.damage = damage;
    return result;
  }

  VehicleMessage._();

  factory VehicleMessage.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory VehicleMessage.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, VehicleMessage_Payload>
      _VehicleMessage_PayloadByTag = {
    1: VehicleMessage_Payload.telemetry,
    2: VehicleMessage_Payload.status,
    3: VehicleMessage_Payload.damage,
    0: VehicleMessage_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VehicleMessage',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'f1'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<$0.CarTelemetry>(1, _omitFieldNames ? '' : 'telemetry',
        subBuilder: $0.CarTelemetry.create)
    ..aOM<$1.CarStatus>(2, _omitFieldNames ? '' : 'status',
        subBuilder: $1.CarStatus.create)
    ..aOM<$2.CarDamage>(3, _omitFieldNames ? '' : 'damage',
        subBuilder: $2.CarDamage.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VehicleMessage clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VehicleMessage copyWith(void Function(VehicleMessage) updates) =>
      super.copyWith((message) => updates(message as VehicleMessage))
          as VehicleMessage;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VehicleMessage create() => VehicleMessage._();
  @$core.override
  VehicleMessage createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static VehicleMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VehicleMessage>(create);
  static VehicleMessage? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  VehicleMessage_Payload whichPayload() =>
      _VehicleMessage_PayloadByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  void clearPayload() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $0.CarTelemetry get telemetry => $_getN(0);
  @$pb.TagNumber(1)
  set telemetry($0.CarTelemetry value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasTelemetry() => $_has(0);
  @$pb.TagNumber(1)
  void clearTelemetry() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.CarTelemetry ensureTelemetry() => $_ensure(0);

  @$pb.TagNumber(2)
  $1.CarStatus get status => $_getN(1);
  @$pb.TagNumber(2)
  set status($1.CarStatus value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.CarStatus ensureStatus() => $_ensure(1);

  @$pb.TagNumber(3)
  $2.CarDamage get damage => $_getN(2);
  @$pb.TagNumber(3)
  set damage($2.CarDamage value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasDamage() => $_has(2);
  @$pb.TagNumber(3)
  void clearDamage() => $_clearField(3);
  @$pb.TagNumber(3)
  $2.CarDamage ensureDamage() => $_ensure(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
