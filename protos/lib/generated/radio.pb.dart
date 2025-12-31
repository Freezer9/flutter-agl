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

import 'radio.pbenum.dart';

export 'radio.pbenum.dart';

class GetFrequencyRequest extends $pb.GeneratedMessage {
  factory GetFrequencyRequest() => create();
  GetFrequencyRequest._() : super();
  factory GetFrequencyRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetFrequencyRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetFrequencyRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'automotivegradelinux'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetFrequencyRequest clone() => GetFrequencyRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetFrequencyRequest copyWith(void Function(GetFrequencyRequest) updates) =>
      super.copyWith((message) => updates(message as GetFrequencyRequest))
          as GetFrequencyRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetFrequencyRequest create() => GetFrequencyRequest._();
  GetFrequencyRequest createEmptyInstance() => create();
  static $pb.PbList<GetFrequencyRequest> createRepeated() =>
      $pb.PbList<GetFrequencyRequest>();
  @$core.pragma('dart2js:noInline')
  static GetFrequencyRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetFrequencyRequest>(create);
  static GetFrequencyRequest? _defaultInstance;
}

class GetFrequencyResponse extends $pb.GeneratedMessage {
  factory GetFrequencyResponse({
    $core.int? frequency,
  }) {
    final $result = create();
    if (frequency != null) {
      $result.frequency = frequency;
    }
    return $result;
  }
  GetFrequencyResponse._() : super();
  factory GetFrequencyResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetFrequencyResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetFrequencyResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'automotivegradelinux'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'frequency', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetFrequencyResponse clone() =>
      GetFrequencyResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetFrequencyResponse copyWith(void Function(GetFrequencyResponse) updates) =>
      super.copyWith((message) => updates(message as GetFrequencyResponse))
          as GetFrequencyResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetFrequencyResponse create() => GetFrequencyResponse._();
  GetFrequencyResponse createEmptyInstance() => create();
  static $pb.PbList<GetFrequencyResponse> createRepeated() =>
      $pb.PbList<GetFrequencyResponse>();
  @$core.pragma('dart2js:noInline')
  static GetFrequencyResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetFrequencyResponse>(create);
  static GetFrequencyResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get frequency => $_getIZ(0);
  @$pb.TagNumber(1)
  set frequency($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFrequency() => $_has(0);
  @$pb.TagNumber(1)
  void clearFrequency() => clearField(1);
}

class SetFrequencyRequest extends $pb.GeneratedMessage {
  factory SetFrequencyRequest({
    $core.int? frequency,
  }) {
    final $result = create();
    if (frequency != null) {
      $result.frequency = frequency;
    }
    return $result;
  }
  SetFrequencyRequest._() : super();
  factory SetFrequencyRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SetFrequencyRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SetFrequencyRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'automotivegradelinux'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'frequency', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SetFrequencyRequest clone() => SetFrequencyRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SetFrequencyRequest copyWith(void Function(SetFrequencyRequest) updates) =>
      super.copyWith((message) => updates(message as SetFrequencyRequest))
          as SetFrequencyRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetFrequencyRequest create() => SetFrequencyRequest._();
  SetFrequencyRequest createEmptyInstance() => create();
  static $pb.PbList<SetFrequencyRequest> createRepeated() =>
      $pb.PbList<SetFrequencyRequest>();
  @$core.pragma('dart2js:noInline')
  static SetFrequencyRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetFrequencyRequest>(create);
  static SetFrequencyRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get frequency => $_getIZ(0);
  @$pb.TagNumber(1)
  set frequency($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFrequency() => $_has(0);
  @$pb.TagNumber(1)
  void clearFrequency() => clearField(1);
}

class SetFrequencyResponse extends $pb.GeneratedMessage {
  factory SetFrequencyResponse({
    $core.int? frequency,
  }) {
    final $result = create();
    if (frequency != null) {
      $result.frequency = frequency;
    }
    return $result;
  }
  SetFrequencyResponse._() : super();
  factory SetFrequencyResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SetFrequencyResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SetFrequencyResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'automotivegradelinux'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'frequency', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SetFrequencyResponse clone() =>
      SetFrequencyResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SetFrequencyResponse copyWith(void Function(SetFrequencyResponse) updates) =>
      super.copyWith((message) => updates(message as SetFrequencyResponse))
          as SetFrequencyResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetFrequencyResponse create() => SetFrequencyResponse._();
  SetFrequencyResponse createEmptyInstance() => create();
  static $pb.PbList<SetFrequencyResponse> createRepeated() =>
      $pb.PbList<SetFrequencyResponse>();
  @$core.pragma('dart2js:noInline')
  static SetFrequencyResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetFrequencyResponse>(create);
  static SetFrequencyResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get frequency => $_getIZ(0);
  @$pb.TagNumber(1)
  set frequency($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFrequency() => $_has(0);
  @$pb.TagNumber(1)
  void clearFrequency() => clearField(1);
}

class GetBandRequest extends $pb.GeneratedMessage {
  factory GetBandRequest() => create();
  GetBandRequest._() : super();
  factory GetBandRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetBandRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetBandRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'automotivegradelinux'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetBandRequest clone() => GetBandRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetBandRequest copyWith(void Function(GetBandRequest) updates) =>
      super.copyWith((message) => updates(message as GetBandRequest))
          as GetBandRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetBandRequest create() => GetBandRequest._();
  GetBandRequest createEmptyInstance() => create();
  static $pb.PbList<GetBandRequest> createRepeated() =>
      $pb.PbList<GetBandRequest>();
  @$core.pragma('dart2js:noInline')
  static GetBandRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetBandRequest>(create);
  static GetBandRequest? _defaultInstance;
}

class GetBandResponse extends $pb.GeneratedMessage {
  factory GetBandResponse({
    Band? band,
  }) {
    final $result = create();
    if (band != null) {
      $result.band = band;
    }
    return $result;
  }
  GetBandResponse._() : super();
  factory GetBandResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetBandResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetBandResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'automotivegradelinux'),
      createEmptyInstance: create)
    ..e<Band>(1, _omitFieldNames ? '' : 'band', $pb.PbFieldType.OE,
        defaultOrMaker: Band.BAND_UNSPECIFIED,
        valueOf: Band.valueOf,
        enumValues: Band.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetBandResponse clone() => GetBandResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetBandResponse copyWith(void Function(GetBandResponse) updates) =>
      super.copyWith((message) => updates(message as GetBandResponse))
          as GetBandResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetBandResponse create() => GetBandResponse._();
  GetBandResponse createEmptyInstance() => create();
  static $pb.PbList<GetBandResponse> createRepeated() =>
      $pb.PbList<GetBandResponse>();
  @$core.pragma('dart2js:noInline')
  static GetBandResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetBandResponse>(create);
  static GetBandResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Band get band => $_getN(0);
  @$pb.TagNumber(1)
  set band(Band v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasBand() => $_has(0);
  @$pb.TagNumber(1)
  void clearBand() => clearField(1);
}

class SetBandRequest extends $pb.GeneratedMessage {
  factory SetBandRequest({
    Band? band,
  }) {
    final $result = create();
    if (band != null) {
      $result.band = band;
    }
    return $result;
  }
  SetBandRequest._() : super();
  factory SetBandRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SetBandRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SetBandRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'automotivegradelinux'),
      createEmptyInstance: create)
    ..e<Band>(1, _omitFieldNames ? '' : 'band', $pb.PbFieldType.OE,
        defaultOrMaker: Band.BAND_UNSPECIFIED,
        valueOf: Band.valueOf,
        enumValues: Band.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SetBandRequest clone() => SetBandRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SetBandRequest copyWith(void Function(SetBandRequest) updates) =>
      super.copyWith((message) => updates(message as SetBandRequest))
          as SetBandRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetBandRequest create() => SetBandRequest._();
  SetBandRequest createEmptyInstance() => create();
  static $pb.PbList<SetBandRequest> createRepeated() =>
      $pb.PbList<SetBandRequest>();
  @$core.pragma('dart2js:noInline')
  static SetBandRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetBandRequest>(create);
  static SetBandRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Band get band => $_getN(0);
  @$pb.TagNumber(1)
  set band(Band v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasBand() => $_has(0);
  @$pb.TagNumber(1)
  void clearBand() => clearField(1);
}

class SetBandResponse extends $pb.GeneratedMessage {
  factory SetBandResponse({
    Band? band,
  }) {
    final $result = create();
    if (band != null) {
      $result.band = band;
    }
    return $result;
  }
  SetBandResponse._() : super();
  factory SetBandResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SetBandResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SetBandResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'automotivegradelinux'),
      createEmptyInstance: create)
    ..e<Band>(1, _omitFieldNames ? '' : 'band', $pb.PbFieldType.OE,
        defaultOrMaker: Band.BAND_UNSPECIFIED,
        valueOf: Band.valueOf,
        enumValues: Band.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SetBandResponse clone() => SetBandResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SetBandResponse copyWith(void Function(SetBandResponse) updates) =>
      super.copyWith((message) => updates(message as SetBandResponse))
          as SetBandResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetBandResponse create() => SetBandResponse._();
  SetBandResponse createEmptyInstance() => create();
  static $pb.PbList<SetBandResponse> createRepeated() =>
      $pb.PbList<SetBandResponse>();
  @$core.pragma('dart2js:noInline')
  static SetBandResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetBandResponse>(create);
  static SetBandResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Band get band => $_getN(0);
  @$pb.TagNumber(1)
  set band(Band v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasBand() => $_has(0);
  @$pb.TagNumber(1)
  void clearBand() => clearField(1);
}

class GetBandSupportedRequest extends $pb.GeneratedMessage {
  factory GetBandSupportedRequest({
    Band? band,
  }) {
    final $result = create();
    if (band != null) {
      $result.band = band;
    }
    return $result;
  }
  GetBandSupportedRequest._() : super();
  factory GetBandSupportedRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetBandSupportedRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetBandSupportedRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'automotivegradelinux'),
      createEmptyInstance: create)
    ..e<Band>(1, _omitFieldNames ? '' : 'band', $pb.PbFieldType.OE,
        defaultOrMaker: Band.BAND_UNSPECIFIED,
        valueOf: Band.valueOf,
        enumValues: Band.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetBandSupportedRequest clone() =>
      GetBandSupportedRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetBandSupportedRequest copyWith(
          void Function(GetBandSupportedRequest) updates) =>
      super.copyWith((message) => updates(message as GetBandSupportedRequest))
          as GetBandSupportedRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetBandSupportedRequest create() => GetBandSupportedRequest._();
  GetBandSupportedRequest createEmptyInstance() => create();
  static $pb.PbList<GetBandSupportedRequest> createRepeated() =>
      $pb.PbList<GetBandSupportedRequest>();
  @$core.pragma('dart2js:noInline')
  static GetBandSupportedRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetBandSupportedRequest>(create);
  static GetBandSupportedRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Band get band => $_getN(0);
  @$pb.TagNumber(1)
  set band(Band v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasBand() => $_has(0);
  @$pb.TagNumber(1)
  void clearBand() => clearField(1);
}

class GetBandSupportedResponse extends $pb.GeneratedMessage {
  factory GetBandSupportedResponse({
    $core.bool? supported,
  }) {
    final $result = create();
    if (supported != null) {
      $result.supported = supported;
    }
    return $result;
  }
  GetBandSupportedResponse._() : super();
  factory GetBandSupportedResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetBandSupportedResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetBandSupportedResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'automotivegradelinux'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'supported')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetBandSupportedResponse clone() =>
      GetBandSupportedResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetBandSupportedResponse copyWith(
          void Function(GetBandSupportedResponse) updates) =>
      super.copyWith((message) => updates(message as GetBandSupportedResponse))
          as GetBandSupportedResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetBandSupportedResponse create() => GetBandSupportedResponse._();
  GetBandSupportedResponse createEmptyInstance() => create();
  static $pb.PbList<GetBandSupportedResponse> createRepeated() =>
      $pb.PbList<GetBandSupportedResponse>();
  @$core.pragma('dart2js:noInline')
  static GetBandSupportedResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetBandSupportedResponse>(create);
  static GetBandSupportedResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get supported => $_getBF(0);
  @$pb.TagNumber(1)
  set supported($core.bool v) {
    $_setBool(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSupported() => $_has(0);
  @$pb.TagNumber(1)
  void clearSupported() => clearField(1);
}

class GetBandParametersRequest extends $pb.GeneratedMessage {
  factory GetBandParametersRequest({
    Band? band,
  }) {
    final $result = create();
    if (band != null) {
      $result.band = band;
    }
    return $result;
  }
  GetBandParametersRequest._() : super();
  factory GetBandParametersRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetBandParametersRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetBandParametersRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'automotivegradelinux'),
      createEmptyInstance: create)
    ..e<Band>(1, _omitFieldNames ? '' : 'band', $pb.PbFieldType.OE,
        defaultOrMaker: Band.BAND_UNSPECIFIED,
        valueOf: Band.valueOf,
        enumValues: Band.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetBandParametersRequest clone() =>
      GetBandParametersRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetBandParametersRequest copyWith(
          void Function(GetBandParametersRequest) updates) =>
      super.copyWith((message) => updates(message as GetBandParametersRequest))
          as GetBandParametersRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetBandParametersRequest create() => GetBandParametersRequest._();
  GetBandParametersRequest createEmptyInstance() => create();
  static $pb.PbList<GetBandParametersRequest> createRepeated() =>
      $pb.PbList<GetBandParametersRequest>();
  @$core.pragma('dart2js:noInline')
  static GetBandParametersRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetBandParametersRequest>(create);
  static GetBandParametersRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Band get band => $_getN(0);
  @$pb.TagNumber(1)
  set band(Band v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasBand() => $_has(0);
  @$pb.TagNumber(1)
  void clearBand() => clearField(1);
}

class GetBandParametersResponse extends $pb.GeneratedMessage {
  factory GetBandParametersResponse({
    $core.int? min,
    $core.int? max,
    $core.int? step,
  }) {
    final $result = create();
    if (min != null) {
      $result.min = min;
    }
    if (max != null) {
      $result.max = max;
    }
    if (step != null) {
      $result.step = step;
    }
    return $result;
  }
  GetBandParametersResponse._() : super();
  factory GetBandParametersResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetBandParametersResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetBandParametersResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'automotivegradelinux'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'min', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'max', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'step', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetBandParametersResponse clone() =>
      GetBandParametersResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetBandParametersResponse copyWith(
          void Function(GetBandParametersResponse) updates) =>
      super.copyWith((message) => updates(message as GetBandParametersResponse))
          as GetBandParametersResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetBandParametersResponse create() => GetBandParametersResponse._();
  GetBandParametersResponse createEmptyInstance() => create();
  static $pb.PbList<GetBandParametersResponse> createRepeated() =>
      $pb.PbList<GetBandParametersResponse>();
  @$core.pragma('dart2js:noInline')
  static GetBandParametersResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetBandParametersResponse>(create);
  static GetBandParametersResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get min => $_getIZ(0);
  @$pb.TagNumber(1)
  set min($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasMin() => $_has(0);
  @$pb.TagNumber(1)
  void clearMin() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get max => $_getIZ(1);
  @$pb.TagNumber(2)
  set max($core.int v) {
    $_setUnsignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMax() => $_has(1);
  @$pb.TagNumber(2)
  void clearMax() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get step => $_getIZ(2);
  @$pb.TagNumber(3)
  set step($core.int v) {
    $_setUnsignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasStep() => $_has(2);
  @$pb.TagNumber(3)
  void clearStep() => clearField(3);
}

class GetStereoModeRequest extends $pb.GeneratedMessage {
  factory GetStereoModeRequest() => create();
  GetStereoModeRequest._() : super();
  factory GetStereoModeRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetStereoModeRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetStereoModeRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'automotivegradelinux'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetStereoModeRequest clone() =>
      GetStereoModeRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetStereoModeRequest copyWith(void Function(GetStereoModeRequest) updates) =>
      super.copyWith((message) => updates(message as GetStereoModeRequest))
          as GetStereoModeRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetStereoModeRequest create() => GetStereoModeRequest._();
  GetStereoModeRequest createEmptyInstance() => create();
  static $pb.PbList<GetStereoModeRequest> createRepeated() =>
      $pb.PbList<GetStereoModeRequest>();
  @$core.pragma('dart2js:noInline')
  static GetStereoModeRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetStereoModeRequest>(create);
  static GetStereoModeRequest? _defaultInstance;
}

class GetStereoModeResponse extends $pb.GeneratedMessage {
  factory GetStereoModeResponse({
    StereoMode? mode,
  }) {
    final $result = create();
    if (mode != null) {
      $result.mode = mode;
    }
    return $result;
  }
  GetStereoModeResponse._() : super();
  factory GetStereoModeResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetStereoModeResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetStereoModeResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'automotivegradelinux'),
      createEmptyInstance: create)
    ..e<StereoMode>(1, _omitFieldNames ? '' : 'mode', $pb.PbFieldType.OE,
        defaultOrMaker: StereoMode.STEREO_MODE_UNSPECIFIED,
        valueOf: StereoMode.valueOf,
        enumValues: StereoMode.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetStereoModeResponse clone() =>
      GetStereoModeResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetStereoModeResponse copyWith(
          void Function(GetStereoModeResponse) updates) =>
      super.copyWith((message) => updates(message as GetStereoModeResponse))
          as GetStereoModeResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetStereoModeResponse create() => GetStereoModeResponse._();
  GetStereoModeResponse createEmptyInstance() => create();
  static $pb.PbList<GetStereoModeResponse> createRepeated() =>
      $pb.PbList<GetStereoModeResponse>();
  @$core.pragma('dart2js:noInline')
  static GetStereoModeResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetStereoModeResponse>(create);
  static GetStereoModeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  StereoMode get mode => $_getN(0);
  @$pb.TagNumber(1)
  set mode(StereoMode v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasMode() => $_has(0);
  @$pb.TagNumber(1)
  void clearMode() => clearField(1);
}

class SetStereoModeRequest extends $pb.GeneratedMessage {
  factory SetStereoModeRequest({
    StereoMode? mode,
  }) {
    final $result = create();
    if (mode != null) {
      $result.mode = mode;
    }
    return $result;
  }
  SetStereoModeRequest._() : super();
  factory SetStereoModeRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SetStereoModeRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SetStereoModeRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'automotivegradelinux'),
      createEmptyInstance: create)
    ..e<StereoMode>(1, _omitFieldNames ? '' : 'mode', $pb.PbFieldType.OE,
        defaultOrMaker: StereoMode.STEREO_MODE_UNSPECIFIED,
        valueOf: StereoMode.valueOf,
        enumValues: StereoMode.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SetStereoModeRequest clone() =>
      SetStereoModeRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SetStereoModeRequest copyWith(void Function(SetStereoModeRequest) updates) =>
      super.copyWith((message) => updates(message as SetStereoModeRequest))
          as SetStereoModeRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetStereoModeRequest create() => SetStereoModeRequest._();
  SetStereoModeRequest createEmptyInstance() => create();
  static $pb.PbList<SetStereoModeRequest> createRepeated() =>
      $pb.PbList<SetStereoModeRequest>();
  @$core.pragma('dart2js:noInline')
  static SetStereoModeRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetStereoModeRequest>(create);
  static SetStereoModeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  StereoMode get mode => $_getN(0);
  @$pb.TagNumber(1)
  set mode(StereoMode v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasMode() => $_has(0);
  @$pb.TagNumber(1)
  void clearMode() => clearField(1);
}

class SetStereoModeResponse extends $pb.GeneratedMessage {
  factory SetStereoModeResponse({
    StereoMode? mode,
  }) {
    final $result = create();
    if (mode != null) {
      $result.mode = mode;
    }
    return $result;
  }
  SetStereoModeResponse._() : super();
  factory SetStereoModeResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SetStereoModeResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SetStereoModeResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'automotivegradelinux'),
      createEmptyInstance: create)
    ..e<StereoMode>(1, _omitFieldNames ? '' : 'mode', $pb.PbFieldType.OE,
        defaultOrMaker: StereoMode.STEREO_MODE_UNSPECIFIED,
        valueOf: StereoMode.valueOf,
        enumValues: StereoMode.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SetStereoModeResponse clone() =>
      SetStereoModeResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SetStereoModeResponse copyWith(
          void Function(SetStereoModeResponse) updates) =>
      super.copyWith((message) => updates(message as SetStereoModeResponse))
          as SetStereoModeResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetStereoModeResponse create() => SetStereoModeResponse._();
  SetStereoModeResponse createEmptyInstance() => create();
  static $pb.PbList<SetStereoModeResponse> createRepeated() =>
      $pb.PbList<SetStereoModeResponse>();
  @$core.pragma('dart2js:noInline')
  static SetStereoModeResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetStereoModeResponse>(create);
  static SetStereoModeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  StereoMode get mode => $_getN(0);
  @$pb.TagNumber(1)
  set mode(StereoMode v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasMode() => $_has(0);
  @$pb.TagNumber(1)
  void clearMode() => clearField(1);
}

class StartRequest extends $pb.GeneratedMessage {
  factory StartRequest() => create();
  StartRequest._() : super();
  factory StartRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StartRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StartRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'automotivegradelinux'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  StartRequest clone() => StartRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  StartRequest copyWith(void Function(StartRequest) updates) =>
      super.copyWith((message) => updates(message as StartRequest))
          as StartRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StartRequest create() => StartRequest._();
  StartRequest createEmptyInstance() => create();
  static $pb.PbList<StartRequest> createRepeated() =>
      $pb.PbList<StartRequest>();
  @$core.pragma('dart2js:noInline')
  static StartRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StartRequest>(create);
  static StartRequest? _defaultInstance;
}

class StartResponse extends $pb.GeneratedMessage {
  factory StartResponse() => create();
  StartResponse._() : super();
  factory StartResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StartResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StartResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'automotivegradelinux'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  StartResponse clone() => StartResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  StartResponse copyWith(void Function(StartResponse) updates) =>
      super.copyWith((message) => updates(message as StartResponse))
          as StartResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StartResponse create() => StartResponse._();
  StartResponse createEmptyInstance() => create();
  static $pb.PbList<StartResponse> createRepeated() =>
      $pb.PbList<StartResponse>();
  @$core.pragma('dart2js:noInline')
  static StartResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StartResponse>(create);
  static StartResponse? _defaultInstance;
}

class StopRequest extends $pb.GeneratedMessage {
  factory StopRequest() => create();
  StopRequest._() : super();
  factory StopRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StopRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StopRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'automotivegradelinux'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  StopRequest clone() => StopRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  StopRequest copyWith(void Function(StopRequest) updates) =>
      super.copyWith((message) => updates(message as StopRequest))
          as StopRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StopRequest create() => StopRequest._();
  StopRequest createEmptyInstance() => create();
  static $pb.PbList<StopRequest> createRepeated() => $pb.PbList<StopRequest>();
  @$core.pragma('dart2js:noInline')
  static StopRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StopRequest>(create);
  static StopRequest? _defaultInstance;
}

class StopResponse extends $pb.GeneratedMessage {
  factory StopResponse() => create();
  StopResponse._() : super();
  factory StopResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StopResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StopResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'automotivegradelinux'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  StopResponse clone() => StopResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  StopResponse copyWith(void Function(StopResponse) updates) =>
      super.copyWith((message) => updates(message as StopResponse))
          as StopResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StopResponse create() => StopResponse._();
  StopResponse createEmptyInstance() => create();
  static $pb.PbList<StopResponse> createRepeated() =>
      $pb.PbList<StopResponse>();
  @$core.pragma('dart2js:noInline')
  static StopResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StopResponse>(create);
  static StopResponse? _defaultInstance;
}

class ScanStartRequest extends $pb.GeneratedMessage {
  factory ScanStartRequest({
    ScanDirection? direction,
  }) {
    final $result = create();
    if (direction != null) {
      $result.direction = direction;
    }
    return $result;
  }
  ScanStartRequest._() : super();
  factory ScanStartRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ScanStartRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ScanStartRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'automotivegradelinux'),
      createEmptyInstance: create)
    ..e<ScanDirection>(
        1, _omitFieldNames ? '' : 'direction', $pb.PbFieldType.OE,
        defaultOrMaker: ScanDirection.SCAN_DIRECTION_UNSPECIFIED,
        valueOf: ScanDirection.valueOf,
        enumValues: ScanDirection.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ScanStartRequest clone() => ScanStartRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ScanStartRequest copyWith(void Function(ScanStartRequest) updates) =>
      super.copyWith((message) => updates(message as ScanStartRequest))
          as ScanStartRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ScanStartRequest create() => ScanStartRequest._();
  ScanStartRequest createEmptyInstance() => create();
  static $pb.PbList<ScanStartRequest> createRepeated() =>
      $pb.PbList<ScanStartRequest>();
  @$core.pragma('dart2js:noInline')
  static ScanStartRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ScanStartRequest>(create);
  static ScanStartRequest? _defaultInstance;

  @$pb.TagNumber(1)
  ScanDirection get direction => $_getN(0);
  @$pb.TagNumber(1)
  set direction(ScanDirection v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasDirection() => $_has(0);
  @$pb.TagNumber(1)
  void clearDirection() => clearField(1);
}

class ScanStartResponse extends $pb.GeneratedMessage {
  factory ScanStartResponse() => create();
  ScanStartResponse._() : super();
  factory ScanStartResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ScanStartResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ScanStartResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'automotivegradelinux'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ScanStartResponse clone() => ScanStartResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ScanStartResponse copyWith(void Function(ScanStartResponse) updates) =>
      super.copyWith((message) => updates(message as ScanStartResponse))
          as ScanStartResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ScanStartResponse create() => ScanStartResponse._();
  ScanStartResponse createEmptyInstance() => create();
  static $pb.PbList<ScanStartResponse> createRepeated() =>
      $pb.PbList<ScanStartResponse>();
  @$core.pragma('dart2js:noInline')
  static ScanStartResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ScanStartResponse>(create);
  static ScanStartResponse? _defaultInstance;
}

class ScanStopRequest extends $pb.GeneratedMessage {
  factory ScanStopRequest() => create();
  ScanStopRequest._() : super();
  factory ScanStopRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ScanStopRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ScanStopRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'automotivegradelinux'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ScanStopRequest clone() => ScanStopRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ScanStopRequest copyWith(void Function(ScanStopRequest) updates) =>
      super.copyWith((message) => updates(message as ScanStopRequest))
          as ScanStopRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ScanStopRequest create() => ScanStopRequest._();
  ScanStopRequest createEmptyInstance() => create();
  static $pb.PbList<ScanStopRequest> createRepeated() =>
      $pb.PbList<ScanStopRequest>();
  @$core.pragma('dart2js:noInline')
  static ScanStopRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ScanStopRequest>(create);
  static ScanStopRequest? _defaultInstance;
}

class ScanStopResponse extends $pb.GeneratedMessage {
  factory ScanStopResponse() => create();
  ScanStopResponse._() : super();
  factory ScanStopResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ScanStopResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ScanStopResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'automotivegradelinux'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ScanStopResponse clone() => ScanStopResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ScanStopResponse copyWith(void Function(ScanStopResponse) updates) =>
      super.copyWith((message) => updates(message as ScanStopResponse))
          as ScanStopResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ScanStopResponse create() => ScanStopResponse._();
  ScanStopResponse createEmptyInstance() => create();
  static $pb.PbList<ScanStopResponse> createRepeated() =>
      $pb.PbList<ScanStopResponse>();
  @$core.pragma('dart2js:noInline')
  static ScanStopResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ScanStopResponse>(create);
  static ScanStopResponse? _defaultInstance;
}

class GetRDSRequest extends $pb.GeneratedMessage {
  factory GetRDSRequest() => create();
  GetRDSRequest._() : super();
  factory GetRDSRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetRDSRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetRDSRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'automotivegradelinux'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetRDSRequest clone() => GetRDSRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetRDSRequest copyWith(void Function(GetRDSRequest) updates) =>
      super.copyWith((message) => updates(message as GetRDSRequest))
          as GetRDSRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRDSRequest create() => GetRDSRequest._();
  GetRDSRequest createEmptyInstance() => create();
  static $pb.PbList<GetRDSRequest> createRepeated() =>
      $pb.PbList<GetRDSRequest>();
  @$core.pragma('dart2js:noInline')
  static GetRDSRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetRDSRequest>(create);
  static GetRDSRequest? _defaultInstance;
}

/// NOTE: This is a placeholder and will be revised!
class GetRDSResponse extends $pb.GeneratedMessage {
  factory GetRDSResponse({
    $core.String? name,
    $core.String? radioText,
    $core.String? alternatives,
    $core.String? minute,
    $core.String? hour,
    $core.String? day,
    $core.String? month,
    $core.String? year,
    $core.String? pi,
    $core.String? pty,
    $core.String? ta,
    $core.String? tp,
    $core.String? ms,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (radioText != null) {
      $result.radioText = radioText;
    }
    if (alternatives != null) {
      $result.alternatives = alternatives;
    }
    if (minute != null) {
      $result.minute = minute;
    }
    if (hour != null) {
      $result.hour = hour;
    }
    if (day != null) {
      $result.day = day;
    }
    if (month != null) {
      $result.month = month;
    }
    if (year != null) {
      $result.year = year;
    }
    if (pi != null) {
      $result.pi = pi;
    }
    if (pty != null) {
      $result.pty = pty;
    }
    if (ta != null) {
      $result.ta = ta;
    }
    if (tp != null) {
      $result.tp = tp;
    }
    if (ms != null) {
      $result.ms = ms;
    }
    return $result;
  }
  GetRDSResponse._() : super();
  factory GetRDSResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetRDSResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetRDSResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'automotivegradelinux'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'radioText')
    ..aOS(3, _omitFieldNames ? '' : 'alternatives')
    ..aOS(4, _omitFieldNames ? '' : 'minute')
    ..aOS(5, _omitFieldNames ? '' : 'hour')
    ..aOS(6, _omitFieldNames ? '' : 'day')
    ..aOS(7, _omitFieldNames ? '' : 'month')
    ..aOS(8, _omitFieldNames ? '' : 'year')
    ..aOS(9, _omitFieldNames ? '' : 'pi')
    ..aOS(10, _omitFieldNames ? '' : 'pty')
    ..aOS(11, _omitFieldNames ? '' : 'ta')
    ..aOS(12, _omitFieldNames ? '' : 'tp')
    ..aOS(13, _omitFieldNames ? '' : 'ms')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetRDSResponse clone() => GetRDSResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetRDSResponse copyWith(void Function(GetRDSResponse) updates) =>
      super.copyWith((message) => updates(message as GetRDSResponse))
          as GetRDSResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRDSResponse create() => GetRDSResponse._();
  GetRDSResponse createEmptyInstance() => create();
  static $pb.PbList<GetRDSResponse> createRepeated() =>
      $pb.PbList<GetRDSResponse>();
  @$core.pragma('dart2js:noInline')
  static GetRDSResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetRDSResponse>(create);
  static GetRDSResponse? _defaultInstance;

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

  @$pb.TagNumber(2)
  $core.String get radioText => $_getSZ(1);
  @$pb.TagNumber(2)
  set radioText($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasRadioText() => $_has(1);
  @$pb.TagNumber(2)
  void clearRadioText() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get alternatives => $_getSZ(2);
  @$pb.TagNumber(3)
  set alternatives($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasAlternatives() => $_has(2);
  @$pb.TagNumber(3)
  void clearAlternatives() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get minute => $_getSZ(3);
  @$pb.TagNumber(4)
  set minute($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasMinute() => $_has(3);
  @$pb.TagNumber(4)
  void clearMinute() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get hour => $_getSZ(4);
  @$pb.TagNumber(5)
  set hour($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasHour() => $_has(4);
  @$pb.TagNumber(5)
  void clearHour() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get day => $_getSZ(5);
  @$pb.TagNumber(6)
  set day($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasDay() => $_has(5);
  @$pb.TagNumber(6)
  void clearDay() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get month => $_getSZ(6);
  @$pb.TagNumber(7)
  set month($core.String v) {
    $_setString(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasMonth() => $_has(6);
  @$pb.TagNumber(7)
  void clearMonth() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get year => $_getSZ(7);
  @$pb.TagNumber(8)
  set year($core.String v) {
    $_setString(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasYear() => $_has(7);
  @$pb.TagNumber(8)
  void clearYear() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get pi => $_getSZ(8);
  @$pb.TagNumber(9)
  set pi($core.String v) {
    $_setString(8, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasPi() => $_has(8);
  @$pb.TagNumber(9)
  void clearPi() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get pty => $_getSZ(9);
  @$pb.TagNumber(10)
  set pty($core.String v) {
    $_setString(9, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasPty() => $_has(9);
  @$pb.TagNumber(10)
  void clearPty() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get ta => $_getSZ(10);
  @$pb.TagNumber(11)
  set ta($core.String v) {
    $_setString(10, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasTa() => $_has(10);
  @$pb.TagNumber(11)
  void clearTa() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get tp => $_getSZ(11);
  @$pb.TagNumber(12)
  set tp($core.String v) {
    $_setString(11, v);
  }

  @$pb.TagNumber(12)
  $core.bool hasTp() => $_has(11);
  @$pb.TagNumber(12)
  void clearTp() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get ms => $_getSZ(12);
  @$pb.TagNumber(13)
  set ms($core.String v) {
    $_setString(12, v);
  }

  @$pb.TagNumber(13)
  $core.bool hasMs() => $_has(12);
  @$pb.TagNumber(13)
  void clearMs() => clearField(13);
}

class GetQualityRequest extends $pb.GeneratedMessage {
  factory GetQualityRequest() => create();
  GetQualityRequest._() : super();
  factory GetQualityRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetQualityRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetQualityRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'automotivegradelinux'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetQualityRequest clone() => GetQualityRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetQualityRequest copyWith(void Function(GetQualityRequest) updates) =>
      super.copyWith((message) => updates(message as GetQualityRequest))
          as GetQualityRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetQualityRequest create() => GetQualityRequest._();
  GetQualityRequest createEmptyInstance() => create();
  static $pb.PbList<GetQualityRequest> createRepeated() =>
      $pb.PbList<GetQualityRequest>();
  @$core.pragma('dart2js:noInline')
  static GetQualityRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetQualityRequest>(create);
  static GetQualityRequest? _defaultInstance;
}

class GetQualityResponse extends $pb.GeneratedMessage {
  factory GetQualityResponse() => create();
  GetQualityResponse._() : super();
  factory GetQualityResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetQualityResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetQualityResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'automotivegradelinux'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetQualityResponse clone() => GetQualityResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetQualityResponse copyWith(void Function(GetQualityResponse) updates) =>
      super.copyWith((message) => updates(message as GetQualityResponse))
          as GetQualityResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetQualityResponse create() => GetQualityResponse._();
  GetQualityResponse createEmptyInstance() => create();
  static $pb.PbList<GetQualityResponse> createRepeated() =>
      $pb.PbList<GetQualityResponse>();
  @$core.pragma('dart2js:noInline')
  static GetQualityResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetQualityResponse>(create);
  static GetQualityResponse? _defaultInstance;
}

class SetAlternativeFrequencyRequest extends $pb.GeneratedMessage {
  factory SetAlternativeFrequencyRequest({
    $core.int? frequency,
  }) {
    final $result = create();
    if (frequency != null) {
      $result.frequency = frequency;
    }
    return $result;
  }
  SetAlternativeFrequencyRequest._() : super();
  factory SetAlternativeFrequencyRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SetAlternativeFrequencyRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SetAlternativeFrequencyRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'automotivegradelinux'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'frequency', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SetAlternativeFrequencyRequest clone() =>
      SetAlternativeFrequencyRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SetAlternativeFrequencyRequest copyWith(
          void Function(SetAlternativeFrequencyRequest) updates) =>
      super.copyWith(
              (message) => updates(message as SetAlternativeFrequencyRequest))
          as SetAlternativeFrequencyRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetAlternativeFrequencyRequest create() =>
      SetAlternativeFrequencyRequest._();
  SetAlternativeFrequencyRequest createEmptyInstance() => create();
  static $pb.PbList<SetAlternativeFrequencyRequest> createRepeated() =>
      $pb.PbList<SetAlternativeFrequencyRequest>();
  @$core.pragma('dart2js:noInline')
  static SetAlternativeFrequencyRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetAlternativeFrequencyRequest>(create);
  static SetAlternativeFrequencyRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get frequency => $_getIZ(0);
  @$pb.TagNumber(1)
  set frequency($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFrequency() => $_has(0);
  @$pb.TagNumber(1)
  void clearFrequency() => clearField(1);
}

class SetAlternativeFrequencyResponse extends $pb.GeneratedMessage {
  factory SetAlternativeFrequencyResponse({
    $core.int? frequency,
  }) {
    final $result = create();
    if (frequency != null) {
      $result.frequency = frequency;
    }
    return $result;
  }
  SetAlternativeFrequencyResponse._() : super();
  factory SetAlternativeFrequencyResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SetAlternativeFrequencyResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SetAlternativeFrequencyResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'automotivegradelinux'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'frequency', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SetAlternativeFrequencyResponse clone() =>
      SetAlternativeFrequencyResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SetAlternativeFrequencyResponse copyWith(
          void Function(SetAlternativeFrequencyResponse) updates) =>
      super.copyWith(
              (message) => updates(message as SetAlternativeFrequencyResponse))
          as SetAlternativeFrequencyResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetAlternativeFrequencyResponse create() =>
      SetAlternativeFrequencyResponse._();
  SetAlternativeFrequencyResponse createEmptyInstance() => create();
  static $pb.PbList<SetAlternativeFrequencyResponse> createRepeated() =>
      $pb.PbList<SetAlternativeFrequencyResponse>();
  @$core.pragma('dart2js:noInline')
  static SetAlternativeFrequencyResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetAlternativeFrequencyResponse>(
          create);
  static SetAlternativeFrequencyResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get frequency => $_getIZ(0);
  @$pb.TagNumber(1)
  set frequency($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFrequency() => $_has(0);
  @$pb.TagNumber(1)
  void clearFrequency() => clearField(1);
}

class StatusRequest extends $pb.GeneratedMessage {
  factory StatusRequest() => create();
  StatusRequest._() : super();
  factory StatusRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StatusRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StatusRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'automotivegradelinux'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  StatusRequest clone() => StatusRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  StatusRequest copyWith(void Function(StatusRequest) updates) =>
      super.copyWith((message) => updates(message as StatusRequest))
          as StatusRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StatusRequest create() => StatusRequest._();
  StatusRequest createEmptyInstance() => create();
  static $pb.PbList<StatusRequest> createRepeated() =>
      $pb.PbList<StatusRequest>();
  @$core.pragma('dart2js:noInline')
  static StatusRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StatusRequest>(create);
  static StatusRequest? _defaultInstance;
}

class BandStatus extends $pb.GeneratedMessage {
  factory BandStatus({
    Band? band,
  }) {
    final $result = create();
    if (band != null) {
      $result.band = band;
    }
    return $result;
  }
  BandStatus._() : super();
  factory BandStatus.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BandStatus.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BandStatus',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'automotivegradelinux'),
      createEmptyInstance: create)
    ..e<Band>(1, _omitFieldNames ? '' : 'band', $pb.PbFieldType.OE,
        defaultOrMaker: Band.BAND_UNSPECIFIED,
        valueOf: Band.valueOf,
        enumValues: Band.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  BandStatus clone() => BandStatus()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  BandStatus copyWith(void Function(BandStatus) updates) =>
      super.copyWith((message) => updates(message as BandStatus)) as BandStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BandStatus create() => BandStatus._();
  BandStatus createEmptyInstance() => create();
  static $pb.PbList<BandStatus> createRepeated() => $pb.PbList<BandStatus>();
  @$core.pragma('dart2js:noInline')
  static BandStatus getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BandStatus>(create);
  static BandStatus? _defaultInstance;

  @$pb.TagNumber(1)
  Band get band => $_getN(0);
  @$pb.TagNumber(1)
  set band(Band v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasBand() => $_has(0);
  @$pb.TagNumber(1)
  void clearBand() => clearField(1);
}

class FrequencyStatus extends $pb.GeneratedMessage {
  factory FrequencyStatus({
    $core.int? frequency,
  }) {
    final $result = create();
    if (frequency != null) {
      $result.frequency = frequency;
    }
    return $result;
  }
  FrequencyStatus._() : super();
  factory FrequencyStatus.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory FrequencyStatus.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FrequencyStatus',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'automotivegradelinux'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'frequency', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  FrequencyStatus clone() => FrequencyStatus()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  FrequencyStatus copyWith(void Function(FrequencyStatus) updates) =>
      super.copyWith((message) => updates(message as FrequencyStatus))
          as FrequencyStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FrequencyStatus create() => FrequencyStatus._();
  FrequencyStatus createEmptyInstance() => create();
  static $pb.PbList<FrequencyStatus> createRepeated() =>
      $pb.PbList<FrequencyStatus>();
  @$core.pragma('dart2js:noInline')
  static FrequencyStatus getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FrequencyStatus>(create);
  static FrequencyStatus? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get frequency => $_getIZ(0);
  @$pb.TagNumber(1)
  set frequency($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFrequency() => $_has(0);
  @$pb.TagNumber(1)
  void clearFrequency() => clearField(1);
}

class PlayStatus extends $pb.GeneratedMessage {
  factory PlayStatus({
    $core.bool? playing,
  }) {
    final $result = create();
    if (playing != null) {
      $result.playing = playing;
    }
    return $result;
  }
  PlayStatus._() : super();
  factory PlayStatus.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PlayStatus.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PlayStatus',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'automotivegradelinux'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'playing')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PlayStatus clone() => PlayStatus()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PlayStatus copyWith(void Function(PlayStatus) updates) =>
      super.copyWith((message) => updates(message as PlayStatus)) as PlayStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PlayStatus create() => PlayStatus._();
  PlayStatus createEmptyInstance() => create();
  static $pb.PbList<PlayStatus> createRepeated() => $pb.PbList<PlayStatus>();
  @$core.pragma('dart2js:noInline')
  static PlayStatus getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PlayStatus>(create);
  static PlayStatus? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get playing => $_getBF(0);
  @$pb.TagNumber(1)
  set playing($core.bool v) {
    $_setBool(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPlaying() => $_has(0);
  @$pb.TagNumber(1)
  void clearPlaying() => clearField(1);
}

class ScanStatus extends $pb.GeneratedMessage {
  factory ScanStatus({
    $core.bool? stationFound,
  }) {
    final $result = create();
    if (stationFound != null) {
      $result.stationFound = stationFound;
    }
    return $result;
  }
  ScanStatus._() : super();
  factory ScanStatus.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ScanStatus.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ScanStatus',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'automotivegradelinux'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'stationFound')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ScanStatus clone() => ScanStatus()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ScanStatus copyWith(void Function(ScanStatus) updates) =>
      super.copyWith((message) => updates(message as ScanStatus)) as ScanStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ScanStatus create() => ScanStatus._();
  ScanStatus createEmptyInstance() => create();
  static $pb.PbList<ScanStatus> createRepeated() => $pb.PbList<ScanStatus>();
  @$core.pragma('dart2js:noInline')
  static ScanStatus getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ScanStatus>(create);
  static ScanStatus? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get stationFound => $_getBF(0);
  @$pb.TagNumber(1)
  set stationFound($core.bool v) {
    $_setBool(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasStationFound() => $_has(0);
  @$pb.TagNumber(1)
  void clearStationFound() => clearField(1);
}

class StereoStatus extends $pb.GeneratedMessage {
  factory StereoStatus({
    StereoMode? mode,
  }) {
    final $result = create();
    if (mode != null) {
      $result.mode = mode;
    }
    return $result;
  }
  StereoStatus._() : super();
  factory StereoStatus.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StereoStatus.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StereoStatus',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'automotivegradelinux'),
      createEmptyInstance: create)
    ..e<StereoMode>(1, _omitFieldNames ? '' : 'mode', $pb.PbFieldType.OE,
        defaultOrMaker: StereoMode.STEREO_MODE_UNSPECIFIED,
        valueOf: StereoMode.valueOf,
        enumValues: StereoMode.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  StereoStatus clone() => StereoStatus()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  StereoStatus copyWith(void Function(StereoStatus) updates) =>
      super.copyWith((message) => updates(message as StereoStatus))
          as StereoStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StereoStatus create() => StereoStatus._();
  StereoStatus createEmptyInstance() => create();
  static $pb.PbList<StereoStatus> createRepeated() =>
      $pb.PbList<StereoStatus>();
  @$core.pragma('dart2js:noInline')
  static StereoStatus getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StereoStatus>(create);
  static StereoStatus? _defaultInstance;

  @$pb.TagNumber(1)
  StereoMode get mode => $_getN(0);
  @$pb.TagNumber(1)
  set mode(StereoMode v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasMode() => $_has(0);
  @$pb.TagNumber(1)
  void clearMode() => clearField(1);
}

enum StatusResponse_Status { band, frequency, play, stereo, scan, notSet }

class StatusResponse extends $pb.GeneratedMessage {
  factory StatusResponse({
    BandStatus? band,
    FrequencyStatus? frequency,
    PlayStatus? play,
    StereoStatus? stereo,
    ScanStatus? scan,
  }) {
    final $result = create();
    if (band != null) {
      $result.band = band;
    }
    if (frequency != null) {
      $result.frequency = frequency;
    }
    if (play != null) {
      $result.play = play;
    }
    if (stereo != null) {
      $result.stereo = stereo;
    }
    if (scan != null) {
      $result.scan = scan;
    }
    return $result;
  }
  StatusResponse._() : super();
  factory StatusResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StatusResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, StatusResponse_Status>
      _StatusResponse_StatusByTag = {
    1: StatusResponse_Status.band,
    2: StatusResponse_Status.frequency,
    3: StatusResponse_Status.play,
    4: StatusResponse_Status.stereo,
    5: StatusResponse_Status.scan,
    0: StatusResponse_Status.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StatusResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'automotivegradelinux'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5])
    ..aOM<BandStatus>(1, _omitFieldNames ? '' : 'band',
        subBuilder: BandStatus.create)
    ..aOM<FrequencyStatus>(2, _omitFieldNames ? '' : 'frequency',
        subBuilder: FrequencyStatus.create)
    ..aOM<PlayStatus>(3, _omitFieldNames ? '' : 'play',
        subBuilder: PlayStatus.create)
    ..aOM<StereoStatus>(4, _omitFieldNames ? '' : 'stereo',
        subBuilder: StereoStatus.create)
    ..aOM<ScanStatus>(5, _omitFieldNames ? '' : 'scan',
        subBuilder: ScanStatus.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  StatusResponse clone() => StatusResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  StatusResponse copyWith(void Function(StatusResponse) updates) =>
      super.copyWith((message) => updates(message as StatusResponse))
          as StatusResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StatusResponse create() => StatusResponse._();
  StatusResponse createEmptyInstance() => create();
  static $pb.PbList<StatusResponse> createRepeated() =>
      $pb.PbList<StatusResponse>();
  @$core.pragma('dart2js:noInline')
  static StatusResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StatusResponse>(create);
  static StatusResponse? _defaultInstance;

  StatusResponse_Status whichStatus() =>
      _StatusResponse_StatusByTag[$_whichOneof(0)]!;
  void clearStatus() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  BandStatus get band => $_getN(0);
  @$pb.TagNumber(1)
  set band(BandStatus v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasBand() => $_has(0);
  @$pb.TagNumber(1)
  void clearBand() => clearField(1);
  @$pb.TagNumber(1)
  BandStatus ensureBand() => $_ensure(0);

  @$pb.TagNumber(2)
  FrequencyStatus get frequency => $_getN(1);
  @$pb.TagNumber(2)
  set frequency(FrequencyStatus v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasFrequency() => $_has(1);
  @$pb.TagNumber(2)
  void clearFrequency() => clearField(2);
  @$pb.TagNumber(2)
  FrequencyStatus ensureFrequency() => $_ensure(1);

  @$pb.TagNumber(3)
  PlayStatus get play => $_getN(2);
  @$pb.TagNumber(3)
  set play(PlayStatus v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasPlay() => $_has(2);
  @$pb.TagNumber(3)
  void clearPlay() => clearField(3);
  @$pb.TagNumber(3)
  PlayStatus ensurePlay() => $_ensure(2);

  @$pb.TagNumber(4)
  StereoStatus get stereo => $_getN(3);
  @$pb.TagNumber(4)
  set stereo(StereoStatus v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasStereo() => $_has(3);
  @$pb.TagNumber(4)
  void clearStereo() => clearField(4);
  @$pb.TagNumber(4)
  StereoStatus ensureStereo() => $_ensure(3);

  @$pb.TagNumber(5)
  ScanStatus get scan => $_getN(4);
  @$pb.TagNumber(5)
  set scan(ScanStatus v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasScan() => $_has(4);
  @$pb.TagNumber(5)
  void clearScan() => clearField(5);
  @$pb.TagNumber(5)
  ScanStatus ensureScan() => $_ensure(4);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
