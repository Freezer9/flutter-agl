// This is a generated file - do not edit.
//
// Generated from f1/car_status.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// Protocol Buffers - F1 Car Status Data
class CarStatus extends $pb.GeneratedMessage {
  factory CarStatus({
    $core.int? tractionControl,
    $core.int? antiLockBrakes,
    $core.int? fuelMix,
    $core.int? frontBrakeBias,
    $core.int? pitLimiterStatus,
    $core.double? fuelInTank,
    $core.double? fuelCapacity,
    $core.double? fuelRemainingLaps,
    $core.int? maxRpm,
    $core.int? idleRpm,
    $core.int? maxGears,
    $core.int? drsAllowed,
    $core.int? drsActivationDistance,
    $core.int? actualTyreCompound,
    $core.int? visualTyreCompound,
    $core.int? tyresAgeLaps,
    $core.int? vehicleFiaFlags,
    $core.double? enginePowerIce,
    $core.double? enginePowerMguk,
    $core.double? ersStoreEnergy,
    $core.int? ersDeployMode,
    $core.double? ersHarvestedThisLapMguk,
    $core.double? ersHarvestedThisLapMguh,
    $core.double? ersDeployedThisLap,
    $core.int? networkPaused,
  }) {
    final result = create();
    if (tractionControl != null) result.tractionControl = tractionControl;
    if (antiLockBrakes != null) result.antiLockBrakes = antiLockBrakes;
    if (fuelMix != null) result.fuelMix = fuelMix;
    if (frontBrakeBias != null) result.frontBrakeBias = frontBrakeBias;
    if (pitLimiterStatus != null) result.pitLimiterStatus = pitLimiterStatus;
    if (fuelInTank != null) result.fuelInTank = fuelInTank;
    if (fuelCapacity != null) result.fuelCapacity = fuelCapacity;
    if (fuelRemainingLaps != null) result.fuelRemainingLaps = fuelRemainingLaps;
    if (maxRpm != null) result.maxRpm = maxRpm;
    if (idleRpm != null) result.idleRpm = idleRpm;
    if (maxGears != null) result.maxGears = maxGears;
    if (drsAllowed != null) result.drsAllowed = drsAllowed;
    if (drsActivationDistance != null)
      result.drsActivationDistance = drsActivationDistance;
    if (actualTyreCompound != null)
      result.actualTyreCompound = actualTyreCompound;
    if (visualTyreCompound != null)
      result.visualTyreCompound = visualTyreCompound;
    if (tyresAgeLaps != null) result.tyresAgeLaps = tyresAgeLaps;
    if (vehicleFiaFlags != null) result.vehicleFiaFlags = vehicleFiaFlags;
    if (enginePowerIce != null) result.enginePowerIce = enginePowerIce;
    if (enginePowerMguk != null) result.enginePowerMguk = enginePowerMguk;
    if (ersStoreEnergy != null) result.ersStoreEnergy = ersStoreEnergy;
    if (ersDeployMode != null) result.ersDeployMode = ersDeployMode;
    if (ersHarvestedThisLapMguk != null)
      result.ersHarvestedThisLapMguk = ersHarvestedThisLapMguk;
    if (ersHarvestedThisLapMguh != null)
      result.ersHarvestedThisLapMguh = ersHarvestedThisLapMguh;
    if (ersDeployedThisLap != null)
      result.ersDeployedThisLap = ersDeployedThisLap;
    if (networkPaused != null) result.networkPaused = networkPaused;
    return result;
  }

  CarStatus._();

  factory CarStatus.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CarStatus.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CarStatus',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'f1'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'tractionControl',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(2, _omitFieldNames ? '' : 'antiLockBrakes',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(3, _omitFieldNames ? '' : 'fuelMix', fieldType: $pb.PbFieldType.OU3)
    ..aI(4, _omitFieldNames ? '' : 'frontBrakeBias',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(5, _omitFieldNames ? '' : 'pitLimiterStatus',
        fieldType: $pb.PbFieldType.OU3)
    ..aD(6, _omitFieldNames ? '' : 'fuelInTank', fieldType: $pb.PbFieldType.OF)
    ..aD(7, _omitFieldNames ? '' : 'fuelCapacity',
        fieldType: $pb.PbFieldType.OF)
    ..aD(8, _omitFieldNames ? '' : 'fuelRemainingLaps',
        fieldType: $pb.PbFieldType.OF)
    ..aI(9, _omitFieldNames ? '' : 'maxRpm', fieldType: $pb.PbFieldType.OU3)
    ..aI(10, _omitFieldNames ? '' : 'idleRpm', fieldType: $pb.PbFieldType.OU3)
    ..aI(11, _omitFieldNames ? '' : 'maxGears', fieldType: $pb.PbFieldType.OU3)
    ..aI(12, _omitFieldNames ? '' : 'drsAllowed',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(13, _omitFieldNames ? '' : 'drsActivationDistance',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(14, _omitFieldNames ? '' : 'actualTyreCompound',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(15, _omitFieldNames ? '' : 'visualTyreCompound',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(16, _omitFieldNames ? '' : 'tyresAgeLaps',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(17, _omitFieldNames ? '' : 'vehicleFiaFlags')
    ..aD(18, _omitFieldNames ? '' : 'enginePowerIce',
        fieldType: $pb.PbFieldType.OF)
    ..aD(19, _omitFieldNames ? '' : 'enginePowerMguk',
        fieldType: $pb.PbFieldType.OF)
    ..aD(20, _omitFieldNames ? '' : 'ersStoreEnergy',
        fieldType: $pb.PbFieldType.OF)
    ..aI(21, _omitFieldNames ? '' : 'ersDeployMode',
        fieldType: $pb.PbFieldType.OU3)
    ..aD(22, _omitFieldNames ? '' : 'ersHarvestedThisLapMguk',
        fieldType: $pb.PbFieldType.OF)
    ..aD(23, _omitFieldNames ? '' : 'ersHarvestedThisLapMguh',
        fieldType: $pb.PbFieldType.OF)
    ..aD(24, _omitFieldNames ? '' : 'ersDeployedThisLap',
        fieldType: $pb.PbFieldType.OF)
    ..aI(25, _omitFieldNames ? '' : 'networkPaused',
        fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CarStatus clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CarStatus copyWith(void Function(CarStatus) updates) =>
      super.copyWith((message) => updates(message as CarStatus)) as CarStatus;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CarStatus create() => CarStatus._();
  @$core.override
  CarStatus createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CarStatus getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CarStatus>(create);
  static CarStatus? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get tractionControl => $_getIZ(0);
  @$pb.TagNumber(1)
  set tractionControl($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTractionControl() => $_has(0);
  @$pb.TagNumber(1)
  void clearTractionControl() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get antiLockBrakes => $_getIZ(1);
  @$pb.TagNumber(2)
  set antiLockBrakes($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAntiLockBrakes() => $_has(1);
  @$pb.TagNumber(2)
  void clearAntiLockBrakes() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get fuelMix => $_getIZ(2);
  @$pb.TagNumber(3)
  set fuelMix($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasFuelMix() => $_has(2);
  @$pb.TagNumber(3)
  void clearFuelMix() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get frontBrakeBias => $_getIZ(3);
  @$pb.TagNumber(4)
  set frontBrakeBias($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasFrontBrakeBias() => $_has(3);
  @$pb.TagNumber(4)
  void clearFrontBrakeBias() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get pitLimiterStatus => $_getIZ(4);
  @$pb.TagNumber(5)
  set pitLimiterStatus($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasPitLimiterStatus() => $_has(4);
  @$pb.TagNumber(5)
  void clearPitLimiterStatus() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.double get fuelInTank => $_getN(5);
  @$pb.TagNumber(6)
  set fuelInTank($core.double value) => $_setFloat(5, value);
  @$pb.TagNumber(6)
  $core.bool hasFuelInTank() => $_has(5);
  @$pb.TagNumber(6)
  void clearFuelInTank() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.double get fuelCapacity => $_getN(6);
  @$pb.TagNumber(7)
  set fuelCapacity($core.double value) => $_setFloat(6, value);
  @$pb.TagNumber(7)
  $core.bool hasFuelCapacity() => $_has(6);
  @$pb.TagNumber(7)
  void clearFuelCapacity() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.double get fuelRemainingLaps => $_getN(7);
  @$pb.TagNumber(8)
  set fuelRemainingLaps($core.double value) => $_setFloat(7, value);
  @$pb.TagNumber(8)
  $core.bool hasFuelRemainingLaps() => $_has(7);
  @$pb.TagNumber(8)
  void clearFuelRemainingLaps() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.int get maxRpm => $_getIZ(8);
  @$pb.TagNumber(9)
  set maxRpm($core.int value) => $_setUnsignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasMaxRpm() => $_has(8);
  @$pb.TagNumber(9)
  void clearMaxRpm() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.int get idleRpm => $_getIZ(9);
  @$pb.TagNumber(10)
  set idleRpm($core.int value) => $_setUnsignedInt32(9, value);
  @$pb.TagNumber(10)
  $core.bool hasIdleRpm() => $_has(9);
  @$pb.TagNumber(10)
  void clearIdleRpm() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.int get maxGears => $_getIZ(10);
  @$pb.TagNumber(11)
  set maxGears($core.int value) => $_setUnsignedInt32(10, value);
  @$pb.TagNumber(11)
  $core.bool hasMaxGears() => $_has(10);
  @$pb.TagNumber(11)
  void clearMaxGears() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.int get drsAllowed => $_getIZ(11);
  @$pb.TagNumber(12)
  set drsAllowed($core.int value) => $_setUnsignedInt32(11, value);
  @$pb.TagNumber(12)
  $core.bool hasDrsAllowed() => $_has(11);
  @$pb.TagNumber(12)
  void clearDrsAllowed() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.int get drsActivationDistance => $_getIZ(12);
  @$pb.TagNumber(13)
  set drsActivationDistance($core.int value) => $_setUnsignedInt32(12, value);
  @$pb.TagNumber(13)
  $core.bool hasDrsActivationDistance() => $_has(12);
  @$pb.TagNumber(13)
  void clearDrsActivationDistance() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.int get actualTyreCompound => $_getIZ(13);
  @$pb.TagNumber(14)
  set actualTyreCompound($core.int value) => $_setUnsignedInt32(13, value);
  @$pb.TagNumber(14)
  $core.bool hasActualTyreCompound() => $_has(13);
  @$pb.TagNumber(14)
  void clearActualTyreCompound() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.int get visualTyreCompound => $_getIZ(14);
  @$pb.TagNumber(15)
  set visualTyreCompound($core.int value) => $_setUnsignedInt32(14, value);
  @$pb.TagNumber(15)
  $core.bool hasVisualTyreCompound() => $_has(14);
  @$pb.TagNumber(15)
  void clearVisualTyreCompound() => $_clearField(15);

  @$pb.TagNumber(16)
  $core.int get tyresAgeLaps => $_getIZ(15);
  @$pb.TagNumber(16)
  set tyresAgeLaps($core.int value) => $_setUnsignedInt32(15, value);
  @$pb.TagNumber(16)
  $core.bool hasTyresAgeLaps() => $_has(15);
  @$pb.TagNumber(16)
  void clearTyresAgeLaps() => $_clearField(16);

  @$pb.TagNumber(17)
  $core.int get vehicleFiaFlags => $_getIZ(16);
  @$pb.TagNumber(17)
  set vehicleFiaFlags($core.int value) => $_setSignedInt32(16, value);
  @$pb.TagNumber(17)
  $core.bool hasVehicleFiaFlags() => $_has(16);
  @$pb.TagNumber(17)
  void clearVehicleFiaFlags() => $_clearField(17);

  @$pb.TagNumber(18)
  $core.double get enginePowerIce => $_getN(17);
  @$pb.TagNumber(18)
  set enginePowerIce($core.double value) => $_setFloat(17, value);
  @$pb.TagNumber(18)
  $core.bool hasEnginePowerIce() => $_has(17);
  @$pb.TagNumber(18)
  void clearEnginePowerIce() => $_clearField(18);

  @$pb.TagNumber(19)
  $core.double get enginePowerMguk => $_getN(18);
  @$pb.TagNumber(19)
  set enginePowerMguk($core.double value) => $_setFloat(18, value);
  @$pb.TagNumber(19)
  $core.bool hasEnginePowerMguk() => $_has(18);
  @$pb.TagNumber(19)
  void clearEnginePowerMguk() => $_clearField(19);

  @$pb.TagNumber(20)
  $core.double get ersStoreEnergy => $_getN(19);
  @$pb.TagNumber(20)
  set ersStoreEnergy($core.double value) => $_setFloat(19, value);
  @$pb.TagNumber(20)
  $core.bool hasErsStoreEnergy() => $_has(19);
  @$pb.TagNumber(20)
  void clearErsStoreEnergy() => $_clearField(20);

  @$pb.TagNumber(21)
  $core.int get ersDeployMode => $_getIZ(20);
  @$pb.TagNumber(21)
  set ersDeployMode($core.int value) => $_setUnsignedInt32(20, value);
  @$pb.TagNumber(21)
  $core.bool hasErsDeployMode() => $_has(20);
  @$pb.TagNumber(21)
  void clearErsDeployMode() => $_clearField(21);

  @$pb.TagNumber(22)
  $core.double get ersHarvestedThisLapMguk => $_getN(21);
  @$pb.TagNumber(22)
  set ersHarvestedThisLapMguk($core.double value) => $_setFloat(21, value);
  @$pb.TagNumber(22)
  $core.bool hasErsHarvestedThisLapMguk() => $_has(21);
  @$pb.TagNumber(22)
  void clearErsHarvestedThisLapMguk() => $_clearField(22);

  @$pb.TagNumber(23)
  $core.double get ersHarvestedThisLapMguh => $_getN(22);
  @$pb.TagNumber(23)
  set ersHarvestedThisLapMguh($core.double value) => $_setFloat(22, value);
  @$pb.TagNumber(23)
  $core.bool hasErsHarvestedThisLapMguh() => $_has(22);
  @$pb.TagNumber(23)
  void clearErsHarvestedThisLapMguh() => $_clearField(23);

  @$pb.TagNumber(24)
  $core.double get ersDeployedThisLap => $_getN(23);
  @$pb.TagNumber(24)
  set ersDeployedThisLap($core.double value) => $_setFloat(23, value);
  @$pb.TagNumber(24)
  $core.bool hasErsDeployedThisLap() => $_has(23);
  @$pb.TagNumber(24)
  void clearErsDeployedThisLap() => $_clearField(24);

  @$pb.TagNumber(25)
  $core.int get networkPaused => $_getIZ(24);
  @$pb.TagNumber(25)
  set networkPaused($core.int value) => $_setUnsignedInt32(24, value);
  @$pb.TagNumber(25)
  $core.bool hasNetworkPaused() => $_has(24);
  @$pb.TagNumber(25)
  void clearNetworkPaused() => $_clearField(25);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
