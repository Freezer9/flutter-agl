// This is a generated file - do not edit.
//
// Generated from f1/car_damage.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// Protocol Buffers - F1 Car Damage Data
class CarDamageData extends $pb.GeneratedMessage {
  factory CarDamageData({
    $core.Iterable<$core.double>? tyresWear,
    $core.Iterable<$core.int>? tyresDamage,
    $core.Iterable<$core.int>? brakesDamage,
    $core.int? frontLeftWingDamage,
    $core.int? frontRightWingDamage,
    $core.int? rearWingDamage,
    $core.int? floorDamage,
    $core.int? diffuserDamage,
    $core.int? sidepodDamage,
    $core.int? drsFault,
    $core.int? ersFault,
    $core.int? gearBoxDamage,
    $core.int? engineDamage,
    $core.int? engineMguhWear,
    $core.int? engineEsWear,
    $core.int? engineCeWear,
    $core.int? engineIceWear,
    $core.int? engineMgukWear,
    $core.int? engineTcWear,
    $core.int? engineBlown,
    $core.int? engineSeized,
  }) {
    final result = create();
    if (tyresWear != null) result.tyresWear.addAll(tyresWear);
    if (tyresDamage != null) result.tyresDamage.addAll(tyresDamage);
    if (brakesDamage != null) result.brakesDamage.addAll(brakesDamage);
    if (frontLeftWingDamage != null)
      result.frontLeftWingDamage = frontLeftWingDamage;
    if (frontRightWingDamage != null)
      result.frontRightWingDamage = frontRightWingDamage;
    if (rearWingDamage != null) result.rearWingDamage = rearWingDamage;
    if (floorDamage != null) result.floorDamage = floorDamage;
    if (diffuserDamage != null) result.diffuserDamage = diffuserDamage;
    if (sidepodDamage != null) result.sidepodDamage = sidepodDamage;
    if (drsFault != null) result.drsFault = drsFault;
    if (ersFault != null) result.ersFault = ersFault;
    if (gearBoxDamage != null) result.gearBoxDamage = gearBoxDamage;
    if (engineDamage != null) result.engineDamage = engineDamage;
    if (engineMguhWear != null) result.engineMguhWear = engineMguhWear;
    if (engineEsWear != null) result.engineEsWear = engineEsWear;
    if (engineCeWear != null) result.engineCeWear = engineCeWear;
    if (engineIceWear != null) result.engineIceWear = engineIceWear;
    if (engineMgukWear != null) result.engineMgukWear = engineMgukWear;
    if (engineTcWear != null) result.engineTcWear = engineTcWear;
    if (engineBlown != null) result.engineBlown = engineBlown;
    if (engineSeized != null) result.engineSeized = engineSeized;
    return result;
  }

  CarDamageData._();

  factory CarDamageData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CarDamageData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CarDamageData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'f1'),
      createEmptyInstance: create)
    ..p<$core.double>(1, _omitFieldNames ? '' : 'tyresWear', $pb.PbFieldType.KF)
    ..p<$core.int>(2, _omitFieldNames ? '' : 'tyresDamage', $pb.PbFieldType.KU3)
    ..p<$core.int>(
        3, _omitFieldNames ? '' : 'brakesDamage', $pb.PbFieldType.KU3)
    ..aI(4, _omitFieldNames ? '' : 'frontLeftWingDamage',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(5, _omitFieldNames ? '' : 'frontRightWingDamage',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(6, _omitFieldNames ? '' : 'rearWingDamage',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(7, _omitFieldNames ? '' : 'floorDamage',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(8, _omitFieldNames ? '' : 'diffuserDamage',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(9, _omitFieldNames ? '' : 'sidepodDamage',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(10, _omitFieldNames ? '' : 'drsFault', fieldType: $pb.PbFieldType.OU3)
    ..aI(11, _omitFieldNames ? '' : 'ersFault', fieldType: $pb.PbFieldType.OU3)
    ..aI(12, _omitFieldNames ? '' : 'gearBoxDamage',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(13, _omitFieldNames ? '' : 'engineDamage',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(14, _omitFieldNames ? '' : 'engineMguhWear',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(15, _omitFieldNames ? '' : 'engineEsWear',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(16, _omitFieldNames ? '' : 'engineCeWear',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(17, _omitFieldNames ? '' : 'engineIceWear',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(18, _omitFieldNames ? '' : 'engineMgukWear',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(19, _omitFieldNames ? '' : 'engineTcWear',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(20, _omitFieldNames ? '' : 'engineBlown',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(21, _omitFieldNames ? '' : 'engineSeized',
        fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CarDamageData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CarDamageData copyWith(void Function(CarDamageData) updates) =>
      super.copyWith((message) => updates(message as CarDamageData))
          as CarDamageData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CarDamageData create() => CarDamageData._();
  @$core.override
  CarDamageData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CarDamageData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CarDamageData>(create);
  static CarDamageData? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.double> get tyresWear => $_getList(0);

  @$pb.TagNumber(2)
  $pb.PbList<$core.int> get tyresDamage => $_getList(1);

  @$pb.TagNumber(3)
  $pb.PbList<$core.int> get brakesDamage => $_getList(2);

  @$pb.TagNumber(4)
  $core.int get frontLeftWingDamage => $_getIZ(3);
  @$pb.TagNumber(4)
  set frontLeftWingDamage($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasFrontLeftWingDamage() => $_has(3);
  @$pb.TagNumber(4)
  void clearFrontLeftWingDamage() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get frontRightWingDamage => $_getIZ(4);
  @$pb.TagNumber(5)
  set frontRightWingDamage($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasFrontRightWingDamage() => $_has(4);
  @$pb.TagNumber(5)
  void clearFrontRightWingDamage() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get rearWingDamage => $_getIZ(5);
  @$pb.TagNumber(6)
  set rearWingDamage($core.int value) => $_setUnsignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasRearWingDamage() => $_has(5);
  @$pb.TagNumber(6)
  void clearRearWingDamage() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get floorDamage => $_getIZ(6);
  @$pb.TagNumber(7)
  set floorDamage($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasFloorDamage() => $_has(6);
  @$pb.TagNumber(7)
  void clearFloorDamage() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get diffuserDamage => $_getIZ(7);
  @$pb.TagNumber(8)
  set diffuserDamage($core.int value) => $_setUnsignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasDiffuserDamage() => $_has(7);
  @$pb.TagNumber(8)
  void clearDiffuserDamage() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.int get sidepodDamage => $_getIZ(8);
  @$pb.TagNumber(9)
  set sidepodDamage($core.int value) => $_setUnsignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasSidepodDamage() => $_has(8);
  @$pb.TagNumber(9)
  void clearSidepodDamage() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.int get drsFault => $_getIZ(9);
  @$pb.TagNumber(10)
  set drsFault($core.int value) => $_setUnsignedInt32(9, value);
  @$pb.TagNumber(10)
  $core.bool hasDrsFault() => $_has(9);
  @$pb.TagNumber(10)
  void clearDrsFault() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.int get ersFault => $_getIZ(10);
  @$pb.TagNumber(11)
  set ersFault($core.int value) => $_setUnsignedInt32(10, value);
  @$pb.TagNumber(11)
  $core.bool hasErsFault() => $_has(10);
  @$pb.TagNumber(11)
  void clearErsFault() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.int get gearBoxDamage => $_getIZ(11);
  @$pb.TagNumber(12)
  set gearBoxDamage($core.int value) => $_setUnsignedInt32(11, value);
  @$pb.TagNumber(12)
  $core.bool hasGearBoxDamage() => $_has(11);
  @$pb.TagNumber(12)
  void clearGearBoxDamage() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.int get engineDamage => $_getIZ(12);
  @$pb.TagNumber(13)
  set engineDamage($core.int value) => $_setUnsignedInt32(12, value);
  @$pb.TagNumber(13)
  $core.bool hasEngineDamage() => $_has(12);
  @$pb.TagNumber(13)
  void clearEngineDamage() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.int get engineMguhWear => $_getIZ(13);
  @$pb.TagNumber(14)
  set engineMguhWear($core.int value) => $_setUnsignedInt32(13, value);
  @$pb.TagNumber(14)
  $core.bool hasEngineMguhWear() => $_has(13);
  @$pb.TagNumber(14)
  void clearEngineMguhWear() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.int get engineEsWear => $_getIZ(14);
  @$pb.TagNumber(15)
  set engineEsWear($core.int value) => $_setUnsignedInt32(14, value);
  @$pb.TagNumber(15)
  $core.bool hasEngineEsWear() => $_has(14);
  @$pb.TagNumber(15)
  void clearEngineEsWear() => $_clearField(15);

  @$pb.TagNumber(16)
  $core.int get engineCeWear => $_getIZ(15);
  @$pb.TagNumber(16)
  set engineCeWear($core.int value) => $_setUnsignedInt32(15, value);
  @$pb.TagNumber(16)
  $core.bool hasEngineCeWear() => $_has(15);
  @$pb.TagNumber(16)
  void clearEngineCeWear() => $_clearField(16);

  @$pb.TagNumber(17)
  $core.int get engineIceWear => $_getIZ(16);
  @$pb.TagNumber(17)
  set engineIceWear($core.int value) => $_setUnsignedInt32(16, value);
  @$pb.TagNumber(17)
  $core.bool hasEngineIceWear() => $_has(16);
  @$pb.TagNumber(17)
  void clearEngineIceWear() => $_clearField(17);

  @$pb.TagNumber(18)
  $core.int get engineMgukWear => $_getIZ(17);
  @$pb.TagNumber(18)
  set engineMgukWear($core.int value) => $_setUnsignedInt32(17, value);
  @$pb.TagNumber(18)
  $core.bool hasEngineMgukWear() => $_has(17);
  @$pb.TagNumber(18)
  void clearEngineMgukWear() => $_clearField(18);

  @$pb.TagNumber(19)
  $core.int get engineTcWear => $_getIZ(18);
  @$pb.TagNumber(19)
  set engineTcWear($core.int value) => $_setUnsignedInt32(18, value);
  @$pb.TagNumber(19)
  $core.bool hasEngineTcWear() => $_has(18);
  @$pb.TagNumber(19)
  void clearEngineTcWear() => $_clearField(19);

  @$pb.TagNumber(20)
  $core.int get engineBlown => $_getIZ(19);
  @$pb.TagNumber(20)
  set engineBlown($core.int value) => $_setUnsignedInt32(19, value);
  @$pb.TagNumber(20)
  $core.bool hasEngineBlown() => $_has(19);
  @$pb.TagNumber(20)
  void clearEngineBlown() => $_clearField(20);

  @$pb.TagNumber(21)
  $core.int get engineSeized => $_getIZ(20);
  @$pb.TagNumber(21)
  set engineSeized($core.int value) => $_setUnsignedInt32(20, value);
  @$pb.TagNumber(21)
  $core.bool hasEngineSeized() => $_has(20);
  @$pb.TagNumber(21)
  void clearEngineSeized() => $_clearField(21);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
