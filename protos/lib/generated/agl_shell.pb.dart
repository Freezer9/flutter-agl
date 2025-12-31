///
//  Generated code. Do not modify.
//  source: agl_shell.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ActivateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ActivateRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'agl_shell_ipc'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'appId')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'outputName')
    ..hasRequiredFields = false;

  ActivateRequest._() : super();
  factory ActivateRequest({
    $core.String? appId,
    $core.String? outputName,
  }) {
    final _result = create();
    if (appId != null) {
      _result.appId = appId;
    }
    if (outputName != null) {
      _result.outputName = outputName;
    }
    return _result;
  }
  factory ActivateRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ActivateRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ActivateRequest clone() => ActivateRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ActivateRequest copyWith(void Function(ActivateRequest) updates) =>
      super.copyWith((message) => updates(message as ActivateRequest))
          as ActivateRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ActivateRequest create() => ActivateRequest._();
  ActivateRequest createEmptyInstance() => create();
  static $pb.PbList<ActivateRequest> createRepeated() =>
      $pb.PbList<ActivateRequest>();
  @$core.pragma('dart2js:noInline')
  static ActivateRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ActivateRequest>(create);
  static ActivateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get appId => $_getSZ(0);
  @$pb.TagNumber(1)
  set appId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasAppId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAppId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get outputName => $_getSZ(1);
  @$pb.TagNumber(2)
  set outputName($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasOutputName() => $_has(1);
  @$pb.TagNumber(2)
  void clearOutputName() => clearField(2);
}

class ActivateResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ActivateResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'agl_shell_ipc'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  ActivateResponse._() : super();
  factory ActivateResponse() => create();
  factory ActivateResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ActivateResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ActivateResponse clone() => ActivateResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ActivateResponse copyWith(void Function(ActivateResponse) updates) =>
      super.copyWith((message) => updates(message as ActivateResponse))
          as ActivateResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ActivateResponse create() => ActivateResponse._();
  ActivateResponse createEmptyInstance() => create();
  static $pb.PbList<ActivateResponse> createRepeated() =>
      $pb.PbList<ActivateResponse>();
  @$core.pragma('dart2js:noInline')
  static ActivateResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ActivateResponse>(create);
  static ActivateResponse? _defaultInstance;
}

class DeactivateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'DeactivateRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'agl_shell_ipc'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'appId')
    ..hasRequiredFields = false;

  DeactivateRequest._() : super();
  factory DeactivateRequest({
    $core.String? appId,
  }) {
    final _result = create();
    if (appId != null) {
      _result.appId = appId;
    }
    return _result;
  }
  factory DeactivateRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeactivateRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DeactivateRequest clone() => DeactivateRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DeactivateRequest copyWith(void Function(DeactivateRequest) updates) =>
      super.copyWith((message) => updates(message as DeactivateRequest))
          as DeactivateRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeactivateRequest create() => DeactivateRequest._();
  DeactivateRequest createEmptyInstance() => create();
  static $pb.PbList<DeactivateRequest> createRepeated() =>
      $pb.PbList<DeactivateRequest>();
  @$core.pragma('dart2js:noInline')
  static DeactivateRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeactivateRequest>(create);
  static DeactivateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get appId => $_getSZ(0);
  @$pb.TagNumber(1)
  set appId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasAppId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAppId() => clearField(1);
}

class DeactivateResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'DeactivateResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'agl_shell_ipc'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  DeactivateResponse._() : super();
  factory DeactivateResponse() => create();
  factory DeactivateResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeactivateResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DeactivateResponse clone() => DeactivateResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DeactivateResponse copyWith(void Function(DeactivateResponse) updates) =>
      super.copyWith((message) => updates(message as DeactivateResponse))
          as DeactivateResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeactivateResponse create() => DeactivateResponse._();
  DeactivateResponse createEmptyInstance() => create();
  static $pb.PbList<DeactivateResponse> createRepeated() =>
      $pb.PbList<DeactivateResponse>();
  @$core.pragma('dart2js:noInline')
  static DeactivateResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeactivateResponse>(create);
  static DeactivateResponse? _defaultInstance;
}

class SplitRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SplitRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'agl_shell_ipc'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'appId')
    ..a<$core.int>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'tileOrientation',
        $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  SplitRequest._() : super();
  factory SplitRequest({
    $core.String? appId,
    $core.int? tileOrientation,
  }) {
    final _result = create();
    if (appId != null) {
      _result.appId = appId;
    }
    if (tileOrientation != null) {
      _result.tileOrientation = tileOrientation;
    }
    return _result;
  }
  factory SplitRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SplitRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SplitRequest clone() => SplitRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SplitRequest copyWith(void Function(SplitRequest) updates) =>
      super.copyWith((message) => updates(message as SplitRequest))
          as SplitRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SplitRequest create() => SplitRequest._();
  SplitRequest createEmptyInstance() => create();
  static $pb.PbList<SplitRequest> createRepeated() =>
      $pb.PbList<SplitRequest>();
  @$core.pragma('dart2js:noInline')
  static SplitRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SplitRequest>(create);
  static SplitRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get appId => $_getSZ(0);
  @$pb.TagNumber(1)
  set appId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasAppId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAppId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get tileOrientation => $_getIZ(1);
  @$pb.TagNumber(2)
  set tileOrientation($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasTileOrientation() => $_has(1);
  @$pb.TagNumber(2)
  void clearTileOrientation() => clearField(2);
}

class SplitResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SplitResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'agl_shell_ipc'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  SplitResponse._() : super();
  factory SplitResponse() => create();
  factory SplitResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SplitResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SplitResponse clone() => SplitResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SplitResponse copyWith(void Function(SplitResponse) updates) =>
      super.copyWith((message) => updates(message as SplitResponse))
          as SplitResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SplitResponse create() => SplitResponse._();
  SplitResponse createEmptyInstance() => create();
  static $pb.PbList<SplitResponse> createRepeated() =>
      $pb.PbList<SplitResponse>();
  @$core.pragma('dart2js:noInline')
  static SplitResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SplitResponse>(create);
  static SplitResponse? _defaultInstance;
}

class FloatRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'FloatRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'agl_shell_ipc'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'appId')
    ..a<$core.int>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'xPos',
        $pb.PbFieldType.O3)
    ..a<$core.int>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'yPos',
        $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  FloatRequest._() : super();
  factory FloatRequest({
    $core.String? appId,
    $core.int? xPos,
    $core.int? yPos,
  }) {
    final _result = create();
    if (appId != null) {
      _result.appId = appId;
    }
    if (xPos != null) {
      _result.xPos = xPos;
    }
    if (yPos != null) {
      _result.yPos = yPos;
    }
    return _result;
  }
  factory FloatRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory FloatRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  FloatRequest clone() => FloatRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  FloatRequest copyWith(void Function(FloatRequest) updates) =>
      super.copyWith((message) => updates(message as FloatRequest))
          as FloatRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FloatRequest create() => FloatRequest._();
  FloatRequest createEmptyInstance() => create();
  static $pb.PbList<FloatRequest> createRepeated() =>
      $pb.PbList<FloatRequest>();
  @$core.pragma('dart2js:noInline')
  static FloatRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FloatRequest>(create);
  static FloatRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get appId => $_getSZ(0);
  @$pb.TagNumber(1)
  set appId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasAppId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAppId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get xPos => $_getIZ(1);
  @$pb.TagNumber(2)
  set xPos($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasXPos() => $_has(1);
  @$pb.TagNumber(2)
  void clearXPos() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get yPos => $_getIZ(2);
  @$pb.TagNumber(3)
  set yPos($core.int v) {
    $_setSignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasYPos() => $_has(2);
  @$pb.TagNumber(3)
  void clearYPos() => clearField(3);
}

class FloatResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'FloatResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'agl_shell_ipc'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  FloatResponse._() : super();
  factory FloatResponse() => create();
  factory FloatResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory FloatResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  FloatResponse clone() => FloatResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  FloatResponse copyWith(void Function(FloatResponse) updates) =>
      super.copyWith((message) => updates(message as FloatResponse))
          as FloatResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FloatResponse create() => FloatResponse._();
  FloatResponse createEmptyInstance() => create();
  static $pb.PbList<FloatResponse> createRepeated() =>
      $pb.PbList<FloatResponse>();
  @$core.pragma('dart2js:noInline')
  static FloatResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FloatResponse>(create);
  static FloatResponse? _defaultInstance;
}

class AppStateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'AppStateRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'agl_shell_ipc'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  AppStateRequest._() : super();
  factory AppStateRequest() => create();
  factory AppStateRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AppStateRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AppStateRequest clone() => AppStateRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AppStateRequest copyWith(void Function(AppStateRequest) updates) =>
      super.copyWith((message) => updates(message as AppStateRequest))
          as AppStateRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AppStateRequest create() => AppStateRequest._();
  AppStateRequest createEmptyInstance() => create();
  static $pb.PbList<AppStateRequest> createRepeated() =>
      $pb.PbList<AppStateRequest>();
  @$core.pragma('dart2js:noInline')
  static AppStateRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AppStateRequest>(create);
  static AppStateRequest? _defaultInstance;
}

class AppStateResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'AppStateResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'agl_shell_ipc'),
      createEmptyInstance: create)
    ..a<$core.int>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'state',
        $pb.PbFieldType.O3)
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'appId')
    ..hasRequiredFields = false;

  AppStateResponse._() : super();
  factory AppStateResponse({
    $core.int? state,
    $core.String? appId,
  }) {
    final _result = create();
    if (state != null) {
      _result.state = state;
    }
    if (appId != null) {
      _result.appId = appId;
    }
    return _result;
  }
  factory AppStateResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AppStateResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AppStateResponse clone() => AppStateResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AppStateResponse copyWith(void Function(AppStateResponse) updates) =>
      super.copyWith((message) => updates(message as AppStateResponse))
          as AppStateResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AppStateResponse create() => AppStateResponse._();
  AppStateResponse createEmptyInstance() => create();
  static $pb.PbList<AppStateResponse> createRepeated() =>
      $pb.PbList<AppStateResponse>();
  @$core.pragma('dart2js:noInline')
  static AppStateResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AppStateResponse>(create);
  static AppStateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get state => $_getIZ(0);
  @$pb.TagNumber(1)
  set state($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasState() => $_has(0);
  @$pb.TagNumber(1)
  void clearState() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get appId => $_getSZ(1);
  @$pb.TagNumber(2)
  set appId($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasAppId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAppId() => clearField(2);
}

class OutputRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'OutputRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'agl_shell_ipc'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  OutputRequest._() : super();
  factory OutputRequest() => create();
  factory OutputRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory OutputRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  OutputRequest clone() => OutputRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  OutputRequest copyWith(void Function(OutputRequest) updates) =>
      super.copyWith((message) => updates(message as OutputRequest))
          as OutputRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OutputRequest create() => OutputRequest._();
  OutputRequest createEmptyInstance() => create();
  static $pb.PbList<OutputRequest> createRepeated() =>
      $pb.PbList<OutputRequest>();
  @$core.pragma('dart2js:noInline')
  static OutputRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<OutputRequest>(create);
  static OutputRequest? _defaultInstance;
}

class OutputResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'OutputResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'agl_shell_ipc'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'name')
    ..hasRequiredFields = false;

  OutputResponse._() : super();
  factory OutputResponse({
    $core.String? name,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    return _result;
  }
  factory OutputResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory OutputResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  OutputResponse clone() => OutputResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  OutputResponse copyWith(void Function(OutputResponse) updates) =>
      super.copyWith((message) => updates(message as OutputResponse))
          as OutputResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OutputResponse create() => OutputResponse._();
  OutputResponse createEmptyInstance() => create();
  static $pb.PbList<OutputResponse> createRepeated() =>
      $pb.PbList<OutputResponse>();
  @$core.pragma('dart2js:noInline')
  static OutputResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<OutputResponse>(create);
  static OutputResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

class ListOutputResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ListOutputResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'agl_shell_ipc'),
      createEmptyInstance: create)
    ..pc<OutputResponse>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'outputs',
        $pb.PbFieldType.PM,
        subBuilder: OutputResponse.create)
    ..hasRequiredFields = false;

  ListOutputResponse._() : super();
  factory ListOutputResponse({
    $core.Iterable<OutputResponse>? outputs,
  }) {
    final _result = create();
    if (outputs != null) {
      _result.outputs.addAll(outputs);
    }
    return _result;
  }
  factory ListOutputResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListOutputResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListOutputResponse clone() => ListOutputResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListOutputResponse copyWith(void Function(ListOutputResponse) updates) =>
      super.copyWith((message) => updates(message as ListOutputResponse))
          as ListOutputResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListOutputResponse create() => ListOutputResponse._();
  ListOutputResponse createEmptyInstance() => create();
  static $pb.PbList<ListOutputResponse> createRepeated() =>
      $pb.PbList<ListOutputResponse>();
  @$core.pragma('dart2js:noInline')
  static ListOutputResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListOutputResponse>(create);
  static ListOutputResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<OutputResponse> get outputs => $_getList(0);
}

class NormalRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'NormalRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'agl_shell_ipc'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'appId')
    ..hasRequiredFields = false;

  NormalRequest._() : super();
  factory NormalRequest({
    $core.String? appId,
  }) {
    final _result = create();
    if (appId != null) {
      _result.appId = appId;
    }
    return _result;
  }
  factory NormalRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NormalRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  NormalRequest clone() => NormalRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  NormalRequest copyWith(void Function(NormalRequest) updates) =>
      super.copyWith((message) => updates(message as NormalRequest))
          as NormalRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NormalRequest create() => NormalRequest._();
  NormalRequest createEmptyInstance() => create();
  static $pb.PbList<NormalRequest> createRepeated() =>
      $pb.PbList<NormalRequest>();
  @$core.pragma('dart2js:noInline')
  static NormalRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NormalRequest>(create);
  static NormalRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get appId => $_getSZ(0);
  @$pb.TagNumber(1)
  set appId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasAppId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAppId() => clearField(1);
}

class NormalResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'NormalResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'agl_shell_ipc'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  NormalResponse._() : super();
  factory NormalResponse() => create();
  factory NormalResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NormalResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  NormalResponse clone() => NormalResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  NormalResponse copyWith(void Function(NormalResponse) updates) =>
      super.copyWith((message) => updates(message as NormalResponse))
          as NormalResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NormalResponse create() => NormalResponse._();
  NormalResponse createEmptyInstance() => create();
  static $pb.PbList<NormalResponse> createRepeated() =>
      $pb.PbList<NormalResponse>();
  @$core.pragma('dart2js:noInline')
  static NormalResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NormalResponse>(create);
  static NormalResponse? _defaultInstance;
}

class FullscreenRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'FullscreenRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'agl_shell_ipc'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'appId')
    ..hasRequiredFields = false;

  FullscreenRequest._() : super();
  factory FullscreenRequest({
    $core.String? appId,
  }) {
    final _result = create();
    if (appId != null) {
      _result.appId = appId;
    }
    return _result;
  }
  factory FullscreenRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory FullscreenRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  FullscreenRequest clone() => FullscreenRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  FullscreenRequest copyWith(void Function(FullscreenRequest) updates) =>
      super.copyWith((message) => updates(message as FullscreenRequest))
          as FullscreenRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FullscreenRequest create() => FullscreenRequest._();
  FullscreenRequest createEmptyInstance() => create();
  static $pb.PbList<FullscreenRequest> createRepeated() =>
      $pb.PbList<FullscreenRequest>();
  @$core.pragma('dart2js:noInline')
  static FullscreenRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FullscreenRequest>(create);
  static FullscreenRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get appId => $_getSZ(0);
  @$pb.TagNumber(1)
  set appId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasAppId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAppId() => clearField(1);
}

class FullscreenResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'FullscreenResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'agl_shell_ipc'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  FullscreenResponse._() : super();
  factory FullscreenResponse() => create();
  factory FullscreenResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory FullscreenResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  FullscreenResponse clone() => FullscreenResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  FullscreenResponse copyWith(void Function(FullscreenResponse) updates) =>
      super.copyWith((message) => updates(message as FullscreenResponse))
          as FullscreenResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FullscreenResponse create() => FullscreenResponse._();
  FullscreenResponse createEmptyInstance() => create();
  static $pb.PbList<FullscreenResponse> createRepeated() =>
      $pb.PbList<FullscreenResponse>();
  @$core.pragma('dart2js:noInline')
  static FullscreenResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FullscreenResponse>(create);
  static FullscreenResponse? _defaultInstance;
}

class AppOnOutputRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'AppOnOutputRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'agl_shell_ipc'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'appId')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'output')
    ..hasRequiredFields = false;

  AppOnOutputRequest._() : super();
  factory AppOnOutputRequest({
    $core.String? appId,
    $core.String? output,
  }) {
    final _result = create();
    if (appId != null) {
      _result.appId = appId;
    }
    if (output != null) {
      _result.output = output;
    }
    return _result;
  }
  factory AppOnOutputRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AppOnOutputRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AppOnOutputRequest clone() => AppOnOutputRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AppOnOutputRequest copyWith(void Function(AppOnOutputRequest) updates) =>
      super.copyWith((message) => updates(message as AppOnOutputRequest))
          as AppOnOutputRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AppOnOutputRequest create() => AppOnOutputRequest._();
  AppOnOutputRequest createEmptyInstance() => create();
  static $pb.PbList<AppOnOutputRequest> createRepeated() =>
      $pb.PbList<AppOnOutputRequest>();
  @$core.pragma('dart2js:noInline')
  static AppOnOutputRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AppOnOutputRequest>(create);
  static AppOnOutputRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get appId => $_getSZ(0);
  @$pb.TagNumber(1)
  set appId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasAppId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAppId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get output => $_getSZ(1);
  @$pb.TagNumber(2)
  set output($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasOutput() => $_has(1);
  @$pb.TagNumber(2)
  void clearOutput() => clearField(2);
}

class AppOnOutputResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'AppOnOutputResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'agl_shell_ipc'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  AppOnOutputResponse._() : super();
  factory AppOnOutputResponse() => create();
  factory AppOnOutputResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AppOnOutputResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AppOnOutputResponse clone() => AppOnOutputResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AppOnOutputResponse copyWith(void Function(AppOnOutputResponse) updates) =>
      super.copyWith((message) => updates(message as AppOnOutputResponse))
          as AppOnOutputResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AppOnOutputResponse create() => AppOnOutputResponse._();
  AppOnOutputResponse createEmptyInstance() => create();
  static $pb.PbList<AppOnOutputResponse> createRepeated() =>
      $pb.PbList<AppOnOutputResponse>();
  @$core.pragma('dart2js:noInline')
  static AppOnOutputResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AppOnOutputResponse>(create);
  static AppOnOutputResponse? _defaultInstance;
}

class AppPositionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'AppPositionRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'agl_shell_ipc'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'appId')
    ..a<$core.int>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'x',
        $pb.PbFieldType.O3)
    ..a<$core.int>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'y',
        $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  AppPositionRequest._() : super();
  factory AppPositionRequest({
    $core.String? appId,
    $core.int? x,
    $core.int? y,
  }) {
    final _result = create();
    if (appId != null) {
      _result.appId = appId;
    }
    if (x != null) {
      _result.x = x;
    }
    if (y != null) {
      _result.y = y;
    }
    return _result;
  }
  factory AppPositionRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AppPositionRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AppPositionRequest clone() => AppPositionRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AppPositionRequest copyWith(void Function(AppPositionRequest) updates) =>
      super.copyWith((message) => updates(message as AppPositionRequest))
          as AppPositionRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AppPositionRequest create() => AppPositionRequest._();
  AppPositionRequest createEmptyInstance() => create();
  static $pb.PbList<AppPositionRequest> createRepeated() =>
      $pb.PbList<AppPositionRequest>();
  @$core.pragma('dart2js:noInline')
  static AppPositionRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AppPositionRequest>(create);
  static AppPositionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get appId => $_getSZ(0);
  @$pb.TagNumber(1)
  set appId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasAppId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAppId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get x => $_getIZ(1);
  @$pb.TagNumber(2)
  set x($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasX() => $_has(1);
  @$pb.TagNumber(2)
  void clearX() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get y => $_getIZ(2);
  @$pb.TagNumber(3)
  set y($core.int v) {
    $_setSignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasY() => $_has(2);
  @$pb.TagNumber(3)
  void clearY() => clearField(3);
}

class AppPositionResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'AppPositionResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'agl_shell_ipc'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  AppPositionResponse._() : super();
  factory AppPositionResponse() => create();
  factory AppPositionResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AppPositionResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AppPositionResponse clone() => AppPositionResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AppPositionResponse copyWith(void Function(AppPositionResponse) updates) =>
      super.copyWith((message) => updates(message as AppPositionResponse))
          as AppPositionResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AppPositionResponse create() => AppPositionResponse._();
  AppPositionResponse createEmptyInstance() => create();
  static $pb.PbList<AppPositionResponse> createRepeated() =>
      $pb.PbList<AppPositionResponse>();
  @$core.pragma('dart2js:noInline')
  static AppPositionResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AppPositionResponse>(create);
  static AppPositionResponse? _defaultInstance;
}

class AppScaleRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'AppScaleRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'agl_shell_ipc'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'appId')
    ..a<$core.int>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'width',
        $pb.PbFieldType.O3)
    ..a<$core.int>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'height',
        $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  AppScaleRequest._() : super();
  factory AppScaleRequest({
    $core.String? appId,
    $core.int? width,
    $core.int? height,
  }) {
    final _result = create();
    if (appId != null) {
      _result.appId = appId;
    }
    if (width != null) {
      _result.width = width;
    }
    if (height != null) {
      _result.height = height;
    }
    return _result;
  }
  factory AppScaleRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AppScaleRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AppScaleRequest clone() => AppScaleRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AppScaleRequest copyWith(void Function(AppScaleRequest) updates) =>
      super.copyWith((message) => updates(message as AppScaleRequest))
          as AppScaleRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AppScaleRequest create() => AppScaleRequest._();
  AppScaleRequest createEmptyInstance() => create();
  static $pb.PbList<AppScaleRequest> createRepeated() =>
      $pb.PbList<AppScaleRequest>();
  @$core.pragma('dart2js:noInline')
  static AppScaleRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AppScaleRequest>(create);
  static AppScaleRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get appId => $_getSZ(0);
  @$pb.TagNumber(1)
  set appId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasAppId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAppId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get width => $_getIZ(1);
  @$pb.TagNumber(2)
  set width($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasWidth() => $_has(1);
  @$pb.TagNumber(2)
  void clearWidth() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get height => $_getIZ(2);
  @$pb.TagNumber(3)
  set height($core.int v) {
    $_setSignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasHeight() => $_has(2);
  @$pb.TagNumber(3)
  void clearHeight() => clearField(3);
}

class AppScaleResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'AppScaleResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'agl_shell_ipc'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  AppScaleResponse._() : super();
  factory AppScaleResponse() => create();
  factory AppScaleResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AppScaleResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AppScaleResponse clone() => AppScaleResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AppScaleResponse copyWith(void Function(AppScaleResponse) updates) =>
      super.copyWith((message) => updates(message as AppScaleResponse))
          as AppScaleResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AppScaleResponse create() => AppScaleResponse._();
  AppScaleResponse createEmptyInstance() => create();
  static $pb.PbList<AppScaleResponse> createRepeated() =>
      $pb.PbList<AppScaleResponse>();
  @$core.pragma('dart2js:noInline')
  static AppScaleResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AppScaleResponse>(create);
  static AppScaleResponse? _defaultInstance;
}
