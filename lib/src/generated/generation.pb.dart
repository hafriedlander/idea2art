///
//  Generated code. Do not modify.
//  source: generation.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'generation.pbenum.dart';

export 'generation.pbenum.dart';

class Token extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Token', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'text')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  Token._() : super();
  factory Token({
    $core.String? text,
    $core.int? id,
  }) {
    final _result = create();
    if (text != null) {
      _result.text = text;
    }
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory Token.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Token.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Token clone() => Token()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Token copyWith(void Function(Token) updates) => super.copyWith((message) => updates(message as Token)) as Token; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Token create() => Token._();
  Token createEmptyInstance() => create();
  static $pb.PbList<Token> createRepeated() => $pb.PbList<Token>();
  @$core.pragma('dart2js:noInline')
  static Token getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Token>(create);
  static Token? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get text => $_getSZ(0);
  @$pb.TagNumber(1)
  set text($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasText() => $_has(0);
  @$pb.TagNumber(1)
  void clearText() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get id => $_getIZ(1);
  @$pb.TagNumber(2)
  set id($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);
}

class Tokens extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Tokens', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..pc<Token>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tokens', $pb.PbFieldType.PM, subBuilder: Token.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tokenizerId')
    ..hasRequiredFields = false
  ;

  Tokens._() : super();
  factory Tokens({
    $core.Iterable<Token>? tokens,
    $core.String? tokenizerId,
  }) {
    final _result = create();
    if (tokens != null) {
      _result.tokens.addAll(tokens);
    }
    if (tokenizerId != null) {
      _result.tokenizerId = tokenizerId;
    }
    return _result;
  }
  factory Tokens.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Tokens.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Tokens clone() => Tokens()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Tokens copyWith(void Function(Tokens) updates) => super.copyWith((message) => updates(message as Tokens)) as Tokens; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Tokens create() => Tokens._();
  Tokens createEmptyInstance() => create();
  static $pb.PbList<Tokens> createRepeated() => $pb.PbList<Tokens>();
  @$core.pragma('dart2js:noInline')
  static Tokens getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Tokens>(create);
  static Tokens? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Token> get tokens => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get tokenizerId => $_getSZ(1);
  @$pb.TagNumber(2)
  set tokenizerId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTokenizerId() => $_has(1);
  @$pb.TagNumber(2)
  void clearTokenizerId() => clearField(2);
}

class ImageAdjustment_Gaussian extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ImageAdjustment_Gaussian', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sigma', $pb.PbFieldType.OF)
    ..e<GaussianDirection>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'direction', $pb.PbFieldType.OE, defaultOrMaker: GaussianDirection.DIRECTION_NONE, valueOf: GaussianDirection.valueOf, enumValues: GaussianDirection.values)
    ..hasRequiredFields = false
  ;

  ImageAdjustment_Gaussian._() : super();
  factory ImageAdjustment_Gaussian({
    $core.double? sigma,
    GaussianDirection? direction,
  }) {
    final _result = create();
    if (sigma != null) {
      _result.sigma = sigma;
    }
    if (direction != null) {
      _result.direction = direction;
    }
    return _result;
  }
  factory ImageAdjustment_Gaussian.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ImageAdjustment_Gaussian.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ImageAdjustment_Gaussian clone() => ImageAdjustment_Gaussian()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ImageAdjustment_Gaussian copyWith(void Function(ImageAdjustment_Gaussian) updates) => super.copyWith((message) => updates(message as ImageAdjustment_Gaussian)) as ImageAdjustment_Gaussian; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ImageAdjustment_Gaussian create() => ImageAdjustment_Gaussian._();
  ImageAdjustment_Gaussian createEmptyInstance() => create();
  static $pb.PbList<ImageAdjustment_Gaussian> createRepeated() => $pb.PbList<ImageAdjustment_Gaussian>();
  @$core.pragma('dart2js:noInline')
  static ImageAdjustment_Gaussian getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ImageAdjustment_Gaussian>(create);
  static ImageAdjustment_Gaussian? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get sigma => $_getN(0);
  @$pb.TagNumber(1)
  set sigma($core.double v) { $_setFloat(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSigma() => $_has(0);
  @$pb.TagNumber(1)
  void clearSigma() => clearField(1);

  @$pb.TagNumber(2)
  GaussianDirection get direction => $_getN(1);
  @$pb.TagNumber(2)
  set direction(GaussianDirection v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDirection() => $_has(1);
  @$pb.TagNumber(2)
  void clearDirection() => clearField(2);
}

class ImageAdjustment_Invert extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ImageAdjustment_Invert', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ImageAdjustment_Invert._() : super();
  factory ImageAdjustment_Invert() => create();
  factory ImageAdjustment_Invert.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ImageAdjustment_Invert.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ImageAdjustment_Invert clone() => ImageAdjustment_Invert()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ImageAdjustment_Invert copyWith(void Function(ImageAdjustment_Invert) updates) => super.copyWith((message) => updates(message as ImageAdjustment_Invert)) as ImageAdjustment_Invert; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ImageAdjustment_Invert create() => ImageAdjustment_Invert._();
  ImageAdjustment_Invert createEmptyInstance() => create();
  static $pb.PbList<ImageAdjustment_Invert> createRepeated() => $pb.PbList<ImageAdjustment_Invert>();
  @$core.pragma('dart2js:noInline')
  static ImageAdjustment_Invert getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ImageAdjustment_Invert>(create);
  static ImageAdjustment_Invert? _defaultInstance;
}

class ImageAdjustment_Levels extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ImageAdjustment_Levels', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'inputLow', $pb.PbFieldType.OF)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'inputHigh', $pb.PbFieldType.OF)
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'outputLow', $pb.PbFieldType.OF)
    ..a<$core.double>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'outputHigh', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  ImageAdjustment_Levels._() : super();
  factory ImageAdjustment_Levels({
    $core.double? inputLow,
    $core.double? inputHigh,
    $core.double? outputLow,
    $core.double? outputHigh,
  }) {
    final _result = create();
    if (inputLow != null) {
      _result.inputLow = inputLow;
    }
    if (inputHigh != null) {
      _result.inputHigh = inputHigh;
    }
    if (outputLow != null) {
      _result.outputLow = outputLow;
    }
    if (outputHigh != null) {
      _result.outputHigh = outputHigh;
    }
    return _result;
  }
  factory ImageAdjustment_Levels.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ImageAdjustment_Levels.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ImageAdjustment_Levels clone() => ImageAdjustment_Levels()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ImageAdjustment_Levels copyWith(void Function(ImageAdjustment_Levels) updates) => super.copyWith((message) => updates(message as ImageAdjustment_Levels)) as ImageAdjustment_Levels; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ImageAdjustment_Levels create() => ImageAdjustment_Levels._();
  ImageAdjustment_Levels createEmptyInstance() => create();
  static $pb.PbList<ImageAdjustment_Levels> createRepeated() => $pb.PbList<ImageAdjustment_Levels>();
  @$core.pragma('dart2js:noInline')
  static ImageAdjustment_Levels getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ImageAdjustment_Levels>(create);
  static ImageAdjustment_Levels? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get inputLow => $_getN(0);
  @$pb.TagNumber(1)
  set inputLow($core.double v) { $_setFloat(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasInputLow() => $_has(0);
  @$pb.TagNumber(1)
  void clearInputLow() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get inputHigh => $_getN(1);
  @$pb.TagNumber(2)
  set inputHigh($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasInputHigh() => $_has(1);
  @$pb.TagNumber(2)
  void clearInputHigh() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get outputLow => $_getN(2);
  @$pb.TagNumber(3)
  set outputLow($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOutputLow() => $_has(2);
  @$pb.TagNumber(3)
  void clearOutputLow() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get outputHigh => $_getN(3);
  @$pb.TagNumber(4)
  set outputHigh($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasOutputHigh() => $_has(3);
  @$pb.TagNumber(4)
  void clearOutputHigh() => clearField(4);
}

class ImageAdjustment_Channels extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ImageAdjustment_Channels', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..e<ChannelSource>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'r', $pb.PbFieldType.OE, defaultOrMaker: ChannelSource.CHANNEL_R, valueOf: ChannelSource.valueOf, enumValues: ChannelSource.values)
    ..e<ChannelSource>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'g', $pb.PbFieldType.OE, defaultOrMaker: ChannelSource.CHANNEL_R, valueOf: ChannelSource.valueOf, enumValues: ChannelSource.values)
    ..e<ChannelSource>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'b', $pb.PbFieldType.OE, defaultOrMaker: ChannelSource.CHANNEL_R, valueOf: ChannelSource.valueOf, enumValues: ChannelSource.values)
    ..e<ChannelSource>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'a', $pb.PbFieldType.OE, defaultOrMaker: ChannelSource.CHANNEL_R, valueOf: ChannelSource.valueOf, enumValues: ChannelSource.values)
    ..hasRequiredFields = false
  ;

  ImageAdjustment_Channels._() : super();
  factory ImageAdjustment_Channels({
    ChannelSource? r,
    ChannelSource? g,
    ChannelSource? b,
    ChannelSource? a,
  }) {
    final _result = create();
    if (r != null) {
      _result.r = r;
    }
    if (g != null) {
      _result.g = g;
    }
    if (b != null) {
      _result.b = b;
    }
    if (a != null) {
      _result.a = a;
    }
    return _result;
  }
  factory ImageAdjustment_Channels.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ImageAdjustment_Channels.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ImageAdjustment_Channels clone() => ImageAdjustment_Channels()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ImageAdjustment_Channels copyWith(void Function(ImageAdjustment_Channels) updates) => super.copyWith((message) => updates(message as ImageAdjustment_Channels)) as ImageAdjustment_Channels; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ImageAdjustment_Channels create() => ImageAdjustment_Channels._();
  ImageAdjustment_Channels createEmptyInstance() => create();
  static $pb.PbList<ImageAdjustment_Channels> createRepeated() => $pb.PbList<ImageAdjustment_Channels>();
  @$core.pragma('dart2js:noInline')
  static ImageAdjustment_Channels getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ImageAdjustment_Channels>(create);
  static ImageAdjustment_Channels? _defaultInstance;

  @$pb.TagNumber(1)
  ChannelSource get r => $_getN(0);
  @$pb.TagNumber(1)
  set r(ChannelSource v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasR() => $_has(0);
  @$pb.TagNumber(1)
  void clearR() => clearField(1);

  @$pb.TagNumber(2)
  ChannelSource get g => $_getN(1);
  @$pb.TagNumber(2)
  set g(ChannelSource v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasG() => $_has(1);
  @$pb.TagNumber(2)
  void clearG() => clearField(2);

  @$pb.TagNumber(3)
  ChannelSource get b => $_getN(2);
  @$pb.TagNumber(3)
  set b(ChannelSource v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasB() => $_has(2);
  @$pb.TagNumber(3)
  void clearB() => clearField(3);

  @$pb.TagNumber(4)
  ChannelSource get a => $_getN(3);
  @$pb.TagNumber(4)
  set a(ChannelSource v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasA() => $_has(3);
  @$pb.TagNumber(4)
  void clearA() => clearField(4);
}

class ImageAdjustment_Rescale extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ImageAdjustment_Rescale', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'height', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'width', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..e<RescaleMode>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mode', $pb.PbFieldType.OE, defaultOrMaker: RescaleMode.RESCALE_STRICT, valueOf: RescaleMode.valueOf, enumValues: RescaleMode.values)
    ..pPS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'algorithmHint')
    ..hasRequiredFields = false
  ;

  ImageAdjustment_Rescale._() : super();
  factory ImageAdjustment_Rescale({
    $fixnum.Int64? height,
    $fixnum.Int64? width,
    RescaleMode? mode,
    $core.Iterable<$core.String>? algorithmHint,
  }) {
    final _result = create();
    if (height != null) {
      _result.height = height;
    }
    if (width != null) {
      _result.width = width;
    }
    if (mode != null) {
      _result.mode = mode;
    }
    if (algorithmHint != null) {
      _result.algorithmHint.addAll(algorithmHint);
    }
    return _result;
  }
  factory ImageAdjustment_Rescale.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ImageAdjustment_Rescale.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ImageAdjustment_Rescale clone() => ImageAdjustment_Rescale()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ImageAdjustment_Rescale copyWith(void Function(ImageAdjustment_Rescale) updates) => super.copyWith((message) => updates(message as ImageAdjustment_Rescale)) as ImageAdjustment_Rescale; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ImageAdjustment_Rescale create() => ImageAdjustment_Rescale._();
  ImageAdjustment_Rescale createEmptyInstance() => create();
  static $pb.PbList<ImageAdjustment_Rescale> createRepeated() => $pb.PbList<ImageAdjustment_Rescale>();
  @$core.pragma('dart2js:noInline')
  static ImageAdjustment_Rescale getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ImageAdjustment_Rescale>(create);
  static ImageAdjustment_Rescale? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get height => $_getI64(0);
  @$pb.TagNumber(1)
  set height($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeight() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeight() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get width => $_getI64(1);
  @$pb.TagNumber(2)
  set width($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWidth() => $_has(1);
  @$pb.TagNumber(2)
  void clearWidth() => clearField(2);

  @$pb.TagNumber(3)
  RescaleMode get mode => $_getN(2);
  @$pb.TagNumber(3)
  set mode(RescaleMode v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasMode() => $_has(2);
  @$pb.TagNumber(3)
  void clearMode() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.String> get algorithmHint => $_getList(3);
}

class ImageAdjustment_Crop extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ImageAdjustment_Crop', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'top', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'left', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'width', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'height', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  ImageAdjustment_Crop._() : super();
  factory ImageAdjustment_Crop({
    $fixnum.Int64? top,
    $fixnum.Int64? left,
    $fixnum.Int64? width,
    $fixnum.Int64? height,
  }) {
    final _result = create();
    if (top != null) {
      _result.top = top;
    }
    if (left != null) {
      _result.left = left;
    }
    if (width != null) {
      _result.width = width;
    }
    if (height != null) {
      _result.height = height;
    }
    return _result;
  }
  factory ImageAdjustment_Crop.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ImageAdjustment_Crop.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ImageAdjustment_Crop clone() => ImageAdjustment_Crop()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ImageAdjustment_Crop copyWith(void Function(ImageAdjustment_Crop) updates) => super.copyWith((message) => updates(message as ImageAdjustment_Crop)) as ImageAdjustment_Crop; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ImageAdjustment_Crop create() => ImageAdjustment_Crop._();
  ImageAdjustment_Crop createEmptyInstance() => create();
  static $pb.PbList<ImageAdjustment_Crop> createRepeated() => $pb.PbList<ImageAdjustment_Crop>();
  @$core.pragma('dart2js:noInline')
  static ImageAdjustment_Crop getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ImageAdjustment_Crop>(create);
  static ImageAdjustment_Crop? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get top => $_getI64(0);
  @$pb.TagNumber(1)
  set top($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTop() => $_has(0);
  @$pb.TagNumber(1)
  void clearTop() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get left => $_getI64(1);
  @$pb.TagNumber(2)
  set left($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLeft() => $_has(1);
  @$pb.TagNumber(2)
  void clearLeft() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get width => $_getI64(2);
  @$pb.TagNumber(3)
  set width($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasWidth() => $_has(2);
  @$pb.TagNumber(3)
  void clearWidth() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get height => $_getI64(3);
  @$pb.TagNumber(4)
  set height($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasHeight() => $_has(3);
  @$pb.TagNumber(4)
  void clearHeight() => clearField(4);
}

enum ImageAdjustment_Adjustment {
  blur, 
  invert, 
  levels, 
  channels, 
  rescale, 
  crop, 
  notSet
}

class ImageAdjustment extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, ImageAdjustment_Adjustment> _ImageAdjustment_AdjustmentByTag = {
    1 : ImageAdjustment_Adjustment.blur,
    2 : ImageAdjustment_Adjustment.invert,
    3 : ImageAdjustment_Adjustment.levels,
    4 : ImageAdjustment_Adjustment.channels,
    5 : ImageAdjustment_Adjustment.rescale,
    6 : ImageAdjustment_Adjustment.crop,
    0 : ImageAdjustment_Adjustment.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ImageAdjustment', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6])
    ..aOM<ImageAdjustment_Gaussian>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'blur', subBuilder: ImageAdjustment_Gaussian.create)
    ..aOM<ImageAdjustment_Invert>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'invert', subBuilder: ImageAdjustment_Invert.create)
    ..aOM<ImageAdjustment_Levels>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'levels', subBuilder: ImageAdjustment_Levels.create)
    ..aOM<ImageAdjustment_Channels>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channels', subBuilder: ImageAdjustment_Channels.create)
    ..aOM<ImageAdjustment_Rescale>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rescale', subBuilder: ImageAdjustment_Rescale.create)
    ..aOM<ImageAdjustment_Crop>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'crop', subBuilder: ImageAdjustment_Crop.create)
    ..hasRequiredFields = false
  ;

  ImageAdjustment._() : super();
  factory ImageAdjustment({
    ImageAdjustment_Gaussian? blur,
    ImageAdjustment_Invert? invert,
    ImageAdjustment_Levels? levels,
    ImageAdjustment_Channels? channels,
    ImageAdjustment_Rescale? rescale,
    ImageAdjustment_Crop? crop,
  }) {
    final _result = create();
    if (blur != null) {
      _result.blur = blur;
    }
    if (invert != null) {
      _result.invert = invert;
    }
    if (levels != null) {
      _result.levels = levels;
    }
    if (channels != null) {
      _result.channels = channels;
    }
    if (rescale != null) {
      _result.rescale = rescale;
    }
    if (crop != null) {
      _result.crop = crop;
    }
    return _result;
  }
  factory ImageAdjustment.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ImageAdjustment.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ImageAdjustment clone() => ImageAdjustment()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ImageAdjustment copyWith(void Function(ImageAdjustment) updates) => super.copyWith((message) => updates(message as ImageAdjustment)) as ImageAdjustment; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ImageAdjustment create() => ImageAdjustment._();
  ImageAdjustment createEmptyInstance() => create();
  static $pb.PbList<ImageAdjustment> createRepeated() => $pb.PbList<ImageAdjustment>();
  @$core.pragma('dart2js:noInline')
  static ImageAdjustment getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ImageAdjustment>(create);
  static ImageAdjustment? _defaultInstance;

  ImageAdjustment_Adjustment whichAdjustment() => _ImageAdjustment_AdjustmentByTag[$_whichOneof(0)]!;
  void clearAdjustment() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  ImageAdjustment_Gaussian get blur => $_getN(0);
  @$pb.TagNumber(1)
  set blur(ImageAdjustment_Gaussian v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBlur() => $_has(0);
  @$pb.TagNumber(1)
  void clearBlur() => clearField(1);
  @$pb.TagNumber(1)
  ImageAdjustment_Gaussian ensureBlur() => $_ensure(0);

  @$pb.TagNumber(2)
  ImageAdjustment_Invert get invert => $_getN(1);
  @$pb.TagNumber(2)
  set invert(ImageAdjustment_Invert v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasInvert() => $_has(1);
  @$pb.TagNumber(2)
  void clearInvert() => clearField(2);
  @$pb.TagNumber(2)
  ImageAdjustment_Invert ensureInvert() => $_ensure(1);

  @$pb.TagNumber(3)
  ImageAdjustment_Levels get levels => $_getN(2);
  @$pb.TagNumber(3)
  set levels(ImageAdjustment_Levels v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasLevels() => $_has(2);
  @$pb.TagNumber(3)
  void clearLevels() => clearField(3);
  @$pb.TagNumber(3)
  ImageAdjustment_Levels ensureLevels() => $_ensure(2);

  @$pb.TagNumber(4)
  ImageAdjustment_Channels get channels => $_getN(3);
  @$pb.TagNumber(4)
  set channels(ImageAdjustment_Channels v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasChannels() => $_has(3);
  @$pb.TagNumber(4)
  void clearChannels() => clearField(4);
  @$pb.TagNumber(4)
  ImageAdjustment_Channels ensureChannels() => $_ensure(3);

  @$pb.TagNumber(5)
  ImageAdjustment_Rescale get rescale => $_getN(4);
  @$pb.TagNumber(5)
  set rescale(ImageAdjustment_Rescale v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasRescale() => $_has(4);
  @$pb.TagNumber(5)
  void clearRescale() => clearField(5);
  @$pb.TagNumber(5)
  ImageAdjustment_Rescale ensureRescale() => $_ensure(4);

  @$pb.TagNumber(6)
  ImageAdjustment_Crop get crop => $_getN(5);
  @$pb.TagNumber(6)
  set crop(ImageAdjustment_Crop v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasCrop() => $_has(5);
  @$pb.TagNumber(6)
  void clearCrop() => clearField(6);
  @$pb.TagNumber(6)
  ImageAdjustment_Crop ensureCrop() => $_ensure(5);
}

enum Artifact_Data {
  binary, 
  text, 
  tokens, 
  classifier, 
  notSet
}

class Artifact extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Artifact_Data> _Artifact_DataByTag = {
    5 : Artifact_Data.binary,
    6 : Artifact_Data.text,
    7 : Artifact_Data.tokens,
    11 : Artifact_Data.classifier,
    0 : Artifact_Data.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Artifact', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..oo(0, [5, 6, 7, 11])
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..e<ArtifactType>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: ArtifactType.ARTIFACT_NONE, valueOf: ArtifactType.valueOf, enumValues: ArtifactType.values)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mime')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'magic')
    ..a<$core.List<$core.int>>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'binary', $pb.PbFieldType.OY)
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'text')
    ..aOM<Tokens>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tokens', subBuilder: Tokens.create)
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'index', $pb.PbFieldType.OU3)
    ..e<FinishReason>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'finishReason', $pb.PbFieldType.OE, defaultOrMaker: FinishReason.NULL, valueOf: FinishReason.valueOf, enumValues: FinishReason.values)
    ..a<$core.int>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'seed', $pb.PbFieldType.OU3)
    ..aOM<ClassifierParameters>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'classifier', subBuilder: ClassifierParameters.create)
    ..pc<ImageAdjustment>(500, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'adjustments', $pb.PbFieldType.PM, subBuilder: ImageAdjustment.create)
    ..pc<ImageAdjustment>(501, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'postAdjustments', $pb.PbFieldType.PM, protoName: 'postAdjustments', subBuilder: ImageAdjustment.create)
    ..hasRequiredFields = false
  ;

  Artifact._() : super();
  factory Artifact({
    $fixnum.Int64? id,
    ArtifactType? type,
    $core.String? mime,
    $core.String? magic,
    $core.List<$core.int>? binary,
    $core.String? text,
    Tokens? tokens,
    $core.int? index,
    FinishReason? finishReason,
    $core.int? seed,
    ClassifierParameters? classifier,
    $core.Iterable<ImageAdjustment>? adjustments,
    $core.Iterable<ImageAdjustment>? postAdjustments,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (type != null) {
      _result.type = type;
    }
    if (mime != null) {
      _result.mime = mime;
    }
    if (magic != null) {
      _result.magic = magic;
    }
    if (binary != null) {
      _result.binary = binary;
    }
    if (text != null) {
      _result.text = text;
    }
    if (tokens != null) {
      _result.tokens = tokens;
    }
    if (index != null) {
      _result.index = index;
    }
    if (finishReason != null) {
      _result.finishReason = finishReason;
    }
    if (seed != null) {
      _result.seed = seed;
    }
    if (classifier != null) {
      _result.classifier = classifier;
    }
    if (adjustments != null) {
      _result.adjustments.addAll(adjustments);
    }
    if (postAdjustments != null) {
      _result.postAdjustments.addAll(postAdjustments);
    }
    return _result;
  }
  factory Artifact.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Artifact.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Artifact clone() => Artifact()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Artifact copyWith(void Function(Artifact) updates) => super.copyWith((message) => updates(message as Artifact)) as Artifact; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Artifact create() => Artifact._();
  Artifact createEmptyInstance() => create();
  static $pb.PbList<Artifact> createRepeated() => $pb.PbList<Artifact>();
  @$core.pragma('dart2js:noInline')
  static Artifact getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Artifact>(create);
  static Artifact? _defaultInstance;

  Artifact_Data whichData() => _Artifact_DataByTag[$_whichOneof(0)]!;
  void clearData() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  ArtifactType get type => $_getN(1);
  @$pb.TagNumber(2)
  set type(ArtifactType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get mime => $_getSZ(2);
  @$pb.TagNumber(3)
  set mime($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMime() => $_has(2);
  @$pb.TagNumber(3)
  void clearMime() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get magic => $_getSZ(3);
  @$pb.TagNumber(4)
  set magic($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMagic() => $_has(3);
  @$pb.TagNumber(4)
  void clearMagic() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get binary => $_getN(4);
  @$pb.TagNumber(5)
  set binary($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasBinary() => $_has(4);
  @$pb.TagNumber(5)
  void clearBinary() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get text => $_getSZ(5);
  @$pb.TagNumber(6)
  set text($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasText() => $_has(5);
  @$pb.TagNumber(6)
  void clearText() => clearField(6);

  @$pb.TagNumber(7)
  Tokens get tokens => $_getN(6);
  @$pb.TagNumber(7)
  set tokens(Tokens v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasTokens() => $_has(6);
  @$pb.TagNumber(7)
  void clearTokens() => clearField(7);
  @$pb.TagNumber(7)
  Tokens ensureTokens() => $_ensure(6);

  @$pb.TagNumber(8)
  $core.int get index => $_getIZ(7);
  @$pb.TagNumber(8)
  set index($core.int v) { $_setUnsignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasIndex() => $_has(7);
  @$pb.TagNumber(8)
  void clearIndex() => clearField(8);

  @$pb.TagNumber(9)
  FinishReason get finishReason => $_getN(8);
  @$pb.TagNumber(9)
  set finishReason(FinishReason v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasFinishReason() => $_has(8);
  @$pb.TagNumber(9)
  void clearFinishReason() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get seed => $_getIZ(9);
  @$pb.TagNumber(10)
  set seed($core.int v) { $_setUnsignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasSeed() => $_has(9);
  @$pb.TagNumber(10)
  void clearSeed() => clearField(10);

  @$pb.TagNumber(11)
  ClassifierParameters get classifier => $_getN(10);
  @$pb.TagNumber(11)
  set classifier(ClassifierParameters v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasClassifier() => $_has(10);
  @$pb.TagNumber(11)
  void clearClassifier() => clearField(11);
  @$pb.TagNumber(11)
  ClassifierParameters ensureClassifier() => $_ensure(10);

  @$pb.TagNumber(500)
  $core.List<ImageAdjustment> get adjustments => $_getList(11);

  @$pb.TagNumber(501)
  $core.List<ImageAdjustment> get postAdjustments => $_getList(12);
}

class PromptParameters extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PromptParameters', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'init')
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'weight', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  PromptParameters._() : super();
  factory PromptParameters({
    $core.bool? init,
    $core.double? weight,
  }) {
    final _result = create();
    if (init != null) {
      _result.init = init;
    }
    if (weight != null) {
      _result.weight = weight;
    }
    return _result;
  }
  factory PromptParameters.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PromptParameters.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PromptParameters clone() => PromptParameters()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PromptParameters copyWith(void Function(PromptParameters) updates) => super.copyWith((message) => updates(message as PromptParameters)) as PromptParameters; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PromptParameters create() => PromptParameters._();
  PromptParameters createEmptyInstance() => create();
  static $pb.PbList<PromptParameters> createRepeated() => $pb.PbList<PromptParameters>();
  @$core.pragma('dart2js:noInline')
  static PromptParameters getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PromptParameters>(create);
  static PromptParameters? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get init => $_getBF(0);
  @$pb.TagNumber(1)
  set init($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasInit() => $_has(0);
  @$pb.TagNumber(1)
  void clearInit() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get weight => $_getN(1);
  @$pb.TagNumber(2)
  set weight($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWeight() => $_has(1);
  @$pb.TagNumber(2)
  void clearWeight() => clearField(2);
}

enum Prompt_Prompt {
  text, 
  tokens, 
  artifact, 
  notSet
}

class Prompt extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Prompt_Prompt> _Prompt_PromptByTag = {
    2 : Prompt_Prompt.text,
    3 : Prompt_Prompt.tokens,
    4 : Prompt_Prompt.artifact,
    0 : Prompt_Prompt.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Prompt', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..oo(0, [2, 3, 4])
    ..aOM<PromptParameters>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'parameters', subBuilder: PromptParameters.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'text')
    ..aOM<Tokens>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tokens', subBuilder: Tokens.create)
    ..aOM<Artifact>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'artifact', subBuilder: Artifact.create)
    ..hasRequiredFields = false
  ;

  Prompt._() : super();
  factory Prompt({
    PromptParameters? parameters,
    $core.String? text,
    Tokens? tokens,
    Artifact? artifact,
  }) {
    final _result = create();
    if (parameters != null) {
      _result.parameters = parameters;
    }
    if (text != null) {
      _result.text = text;
    }
    if (tokens != null) {
      _result.tokens = tokens;
    }
    if (artifact != null) {
      _result.artifact = artifact;
    }
    return _result;
  }
  factory Prompt.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Prompt.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Prompt clone() => Prompt()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Prompt copyWith(void Function(Prompt) updates) => super.copyWith((message) => updates(message as Prompt)) as Prompt; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Prompt create() => Prompt._();
  Prompt createEmptyInstance() => create();
  static $pb.PbList<Prompt> createRepeated() => $pb.PbList<Prompt>();
  @$core.pragma('dart2js:noInline')
  static Prompt getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Prompt>(create);
  static Prompt? _defaultInstance;

  Prompt_Prompt whichPrompt() => _Prompt_PromptByTag[$_whichOneof(0)]!;
  void clearPrompt() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  PromptParameters get parameters => $_getN(0);
  @$pb.TagNumber(1)
  set parameters(PromptParameters v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasParameters() => $_has(0);
  @$pb.TagNumber(1)
  void clearParameters() => clearField(1);
  @$pb.TagNumber(1)
  PromptParameters ensureParameters() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get text => $_getSZ(1);
  @$pb.TagNumber(2)
  set text($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasText() => $_has(1);
  @$pb.TagNumber(2)
  void clearText() => clearField(2);

  @$pb.TagNumber(3)
  Tokens get tokens => $_getN(2);
  @$pb.TagNumber(3)
  set tokens(Tokens v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasTokens() => $_has(2);
  @$pb.TagNumber(3)
  void clearTokens() => clearField(3);
  @$pb.TagNumber(3)
  Tokens ensureTokens() => $_ensure(2);

  @$pb.TagNumber(4)
  Artifact get artifact => $_getN(3);
  @$pb.TagNumber(4)
  set artifact(Artifact v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasArtifact() => $_has(3);
  @$pb.TagNumber(4)
  void clearArtifact() => clearField(4);
  @$pb.TagNumber(4)
  Artifact ensureArtifact() => $_ensure(3);
}

class SamplerParameters extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SamplerParameters', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'eta', $pb.PbFieldType.OF)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'samplingSteps', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'latentChannels', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'downsamplingFactor', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.double>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cfgScale', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  SamplerParameters._() : super();
  factory SamplerParameters({
    $core.double? eta,
    $fixnum.Int64? samplingSteps,
    $fixnum.Int64? latentChannels,
    $fixnum.Int64? downsamplingFactor,
    $core.double? cfgScale,
  }) {
    final _result = create();
    if (eta != null) {
      _result.eta = eta;
    }
    if (samplingSteps != null) {
      _result.samplingSteps = samplingSteps;
    }
    if (latentChannels != null) {
      _result.latentChannels = latentChannels;
    }
    if (downsamplingFactor != null) {
      _result.downsamplingFactor = downsamplingFactor;
    }
    if (cfgScale != null) {
      _result.cfgScale = cfgScale;
    }
    return _result;
  }
  factory SamplerParameters.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SamplerParameters.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SamplerParameters clone() => SamplerParameters()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SamplerParameters copyWith(void Function(SamplerParameters) updates) => super.copyWith((message) => updates(message as SamplerParameters)) as SamplerParameters; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SamplerParameters create() => SamplerParameters._();
  SamplerParameters createEmptyInstance() => create();
  static $pb.PbList<SamplerParameters> createRepeated() => $pb.PbList<SamplerParameters>();
  @$core.pragma('dart2js:noInline')
  static SamplerParameters getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SamplerParameters>(create);
  static SamplerParameters? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get eta => $_getN(0);
  @$pb.TagNumber(1)
  set eta($core.double v) { $_setFloat(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEta() => $_has(0);
  @$pb.TagNumber(1)
  void clearEta() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get samplingSteps => $_getI64(1);
  @$pb.TagNumber(2)
  set samplingSteps($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSamplingSteps() => $_has(1);
  @$pb.TagNumber(2)
  void clearSamplingSteps() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get latentChannels => $_getI64(2);
  @$pb.TagNumber(3)
  set latentChannels($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLatentChannels() => $_has(2);
  @$pb.TagNumber(3)
  void clearLatentChannels() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get downsamplingFactor => $_getI64(3);
  @$pb.TagNumber(4)
  set downsamplingFactor($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDownsamplingFactor() => $_has(3);
  @$pb.TagNumber(4)
  void clearDownsamplingFactor() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get cfgScale => $_getN(4);
  @$pb.TagNumber(5)
  set cfgScale($core.double v) { $_setFloat(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCfgScale() => $_has(4);
  @$pb.TagNumber(5)
  void clearCfgScale() => clearField(5);
}

class ConditionerParameters extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ConditionerParameters', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'vectorAdjustPrior')
    ..aOM<Model>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'conditioner', subBuilder: Model.create)
    ..hasRequiredFields = false
  ;

  ConditionerParameters._() : super();
  factory ConditionerParameters({
    $core.String? vectorAdjustPrior,
    Model? conditioner,
  }) {
    final _result = create();
    if (vectorAdjustPrior != null) {
      _result.vectorAdjustPrior = vectorAdjustPrior;
    }
    if (conditioner != null) {
      _result.conditioner = conditioner;
    }
    return _result;
  }
  factory ConditionerParameters.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConditionerParameters.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConditionerParameters clone() => ConditionerParameters()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConditionerParameters copyWith(void Function(ConditionerParameters) updates) => super.copyWith((message) => updates(message as ConditionerParameters)) as ConditionerParameters; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ConditionerParameters create() => ConditionerParameters._();
  ConditionerParameters createEmptyInstance() => create();
  static $pb.PbList<ConditionerParameters> createRepeated() => $pb.PbList<ConditionerParameters>();
  @$core.pragma('dart2js:noInline')
  static ConditionerParameters getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConditionerParameters>(create);
  static ConditionerParameters? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get vectorAdjustPrior => $_getSZ(0);
  @$pb.TagNumber(1)
  set vectorAdjustPrior($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVectorAdjustPrior() => $_has(0);
  @$pb.TagNumber(1)
  void clearVectorAdjustPrior() => clearField(1);

  @$pb.TagNumber(2)
  Model get conditioner => $_getN(1);
  @$pb.TagNumber(2)
  set conditioner(Model v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasConditioner() => $_has(1);
  @$pb.TagNumber(2)
  void clearConditioner() => clearField(2);
  @$pb.TagNumber(2)
  Model ensureConditioner() => $_ensure(1);
}

class ScheduleParameters extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ScheduleParameters', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'start', $pb.PbFieldType.OF)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'end', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  ScheduleParameters._() : super();
  factory ScheduleParameters({
    $core.double? start,
    $core.double? end,
  }) {
    final _result = create();
    if (start != null) {
      _result.start = start;
    }
    if (end != null) {
      _result.end = end;
    }
    return _result;
  }
  factory ScheduleParameters.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ScheduleParameters.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ScheduleParameters clone() => ScheduleParameters()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ScheduleParameters copyWith(void Function(ScheduleParameters) updates) => super.copyWith((message) => updates(message as ScheduleParameters)) as ScheduleParameters; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ScheduleParameters create() => ScheduleParameters._();
  ScheduleParameters createEmptyInstance() => create();
  static $pb.PbList<ScheduleParameters> createRepeated() => $pb.PbList<ScheduleParameters>();
  @$core.pragma('dart2js:noInline')
  static ScheduleParameters getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ScheduleParameters>(create);
  static ScheduleParameters? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get start => $_getN(0);
  @$pb.TagNumber(1)
  set start($core.double v) { $_setFloat(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStart() => $_has(0);
  @$pb.TagNumber(1)
  void clearStart() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get end => $_getN(1);
  @$pb.TagNumber(2)
  set end($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEnd() => $_has(1);
  @$pb.TagNumber(2)
  void clearEnd() => clearField(2);
}

class StepParameter extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StepParameter', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scaledStep', $pb.PbFieldType.OF)
    ..aOM<SamplerParameters>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sampler', subBuilder: SamplerParameters.create)
    ..aOM<ScheduleParameters>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'schedule', subBuilder: ScheduleParameters.create)
    ..aOM<GuidanceParameters>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'guidance', subBuilder: GuidanceParameters.create)
    ..hasRequiredFields = false
  ;

  StepParameter._() : super();
  factory StepParameter({
    $core.double? scaledStep,
    SamplerParameters? sampler,
    ScheduleParameters? schedule,
    GuidanceParameters? guidance,
  }) {
    final _result = create();
    if (scaledStep != null) {
      _result.scaledStep = scaledStep;
    }
    if (sampler != null) {
      _result.sampler = sampler;
    }
    if (schedule != null) {
      _result.schedule = schedule;
    }
    if (guidance != null) {
      _result.guidance = guidance;
    }
    return _result;
  }
  factory StepParameter.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StepParameter.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StepParameter clone() => StepParameter()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StepParameter copyWith(void Function(StepParameter) updates) => super.copyWith((message) => updates(message as StepParameter)) as StepParameter; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StepParameter create() => StepParameter._();
  StepParameter createEmptyInstance() => create();
  static $pb.PbList<StepParameter> createRepeated() => $pb.PbList<StepParameter>();
  @$core.pragma('dart2js:noInline')
  static StepParameter getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StepParameter>(create);
  static StepParameter? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get scaledStep => $_getN(0);
  @$pb.TagNumber(1)
  set scaledStep($core.double v) { $_setFloat(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasScaledStep() => $_has(0);
  @$pb.TagNumber(1)
  void clearScaledStep() => clearField(1);

  @$pb.TagNumber(2)
  SamplerParameters get sampler => $_getN(1);
  @$pb.TagNumber(2)
  set sampler(SamplerParameters v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSampler() => $_has(1);
  @$pb.TagNumber(2)
  void clearSampler() => clearField(2);
  @$pb.TagNumber(2)
  SamplerParameters ensureSampler() => $_ensure(1);

  @$pb.TagNumber(3)
  ScheduleParameters get schedule => $_getN(2);
  @$pb.TagNumber(3)
  set schedule(ScheduleParameters v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSchedule() => $_has(2);
  @$pb.TagNumber(3)
  void clearSchedule() => clearField(3);
  @$pb.TagNumber(3)
  ScheduleParameters ensureSchedule() => $_ensure(2);

  @$pb.TagNumber(4)
  GuidanceParameters get guidance => $_getN(3);
  @$pb.TagNumber(4)
  set guidance(GuidanceParameters v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasGuidance() => $_has(3);
  @$pb.TagNumber(4)
  void clearGuidance() => clearField(4);
  @$pb.TagNumber(4)
  GuidanceParameters ensureGuidance() => $_ensure(3);
}

class Model extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Model', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..e<ModelArchitecture>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'architecture', $pb.PbFieldType.OE, defaultOrMaker: ModelArchitecture.MODEL_ARCHITECTURE_NONE, valueOf: ModelArchitecture.valueOf, enumValues: ModelArchitecture.values)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'publisher')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dataset')
    ..a<$core.double>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version', $pb.PbFieldType.OF)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'semanticVersion')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'alias')
    ..hasRequiredFields = false
  ;

  Model._() : super();
  factory Model({
    ModelArchitecture? architecture,
    $core.String? publisher,
    $core.String? dataset,
    $core.double? version,
    $core.String? semanticVersion,
    $core.String? alias,
  }) {
    final _result = create();
    if (architecture != null) {
      _result.architecture = architecture;
    }
    if (publisher != null) {
      _result.publisher = publisher;
    }
    if (dataset != null) {
      _result.dataset = dataset;
    }
    if (version != null) {
      _result.version = version;
    }
    if (semanticVersion != null) {
      _result.semanticVersion = semanticVersion;
    }
    if (alias != null) {
      _result.alias = alias;
    }
    return _result;
  }
  factory Model.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Model.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Model clone() => Model()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Model copyWith(void Function(Model) updates) => super.copyWith((message) => updates(message as Model)) as Model; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Model create() => Model._();
  Model createEmptyInstance() => create();
  static $pb.PbList<Model> createRepeated() => $pb.PbList<Model>();
  @$core.pragma('dart2js:noInline')
  static Model getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Model>(create);
  static Model? _defaultInstance;

  @$pb.TagNumber(1)
  ModelArchitecture get architecture => $_getN(0);
  @$pb.TagNumber(1)
  set architecture(ModelArchitecture v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasArchitecture() => $_has(0);
  @$pb.TagNumber(1)
  void clearArchitecture() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get publisher => $_getSZ(1);
  @$pb.TagNumber(2)
  set publisher($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPublisher() => $_has(1);
  @$pb.TagNumber(2)
  void clearPublisher() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get dataset => $_getSZ(2);
  @$pb.TagNumber(3)
  set dataset($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDataset() => $_has(2);
  @$pb.TagNumber(3)
  void clearDataset() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get version => $_getN(3);
  @$pb.TagNumber(4)
  set version($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasVersion() => $_has(3);
  @$pb.TagNumber(4)
  void clearVersion() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get semanticVersion => $_getSZ(4);
  @$pb.TagNumber(5)
  set semanticVersion($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSemanticVersion() => $_has(4);
  @$pb.TagNumber(5)
  void clearSemanticVersion() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get alias => $_getSZ(5);
  @$pb.TagNumber(6)
  set alias($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasAlias() => $_has(5);
  @$pb.TagNumber(6)
  void clearAlias() => clearField(6);
}

class CutoutParameters extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CutoutParameters', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..pc<CutoutParameters>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cutouts', $pb.PbFieldType.PM, subBuilder: CutoutParameters.create)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'count', $pb.PbFieldType.OU3)
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gray', $pb.PbFieldType.OF)
    ..a<$core.double>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'blur', $pb.PbFieldType.OF)
    ..a<$core.double>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sizePower', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  CutoutParameters._() : super();
  factory CutoutParameters({
    $core.Iterable<CutoutParameters>? cutouts,
    $core.int? count,
    $core.double? gray,
    $core.double? blur,
    $core.double? sizePower,
  }) {
    final _result = create();
    if (cutouts != null) {
      _result.cutouts.addAll(cutouts);
    }
    if (count != null) {
      _result.count = count;
    }
    if (gray != null) {
      _result.gray = gray;
    }
    if (blur != null) {
      _result.blur = blur;
    }
    if (sizePower != null) {
      _result.sizePower = sizePower;
    }
    return _result;
  }
  factory CutoutParameters.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CutoutParameters.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CutoutParameters clone() => CutoutParameters()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CutoutParameters copyWith(void Function(CutoutParameters) updates) => super.copyWith((message) => updates(message as CutoutParameters)) as CutoutParameters; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CutoutParameters create() => CutoutParameters._();
  CutoutParameters createEmptyInstance() => create();
  static $pb.PbList<CutoutParameters> createRepeated() => $pb.PbList<CutoutParameters>();
  @$core.pragma('dart2js:noInline')
  static CutoutParameters getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CutoutParameters>(create);
  static CutoutParameters? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<CutoutParameters> get cutouts => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get count => $_getIZ(1);
  @$pb.TagNumber(2)
  set count($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearCount() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get gray => $_getN(2);
  @$pb.TagNumber(3)
  set gray($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasGray() => $_has(2);
  @$pb.TagNumber(3)
  void clearGray() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get blur => $_getN(3);
  @$pb.TagNumber(4)
  set blur($core.double v) { $_setFloat(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBlur() => $_has(3);
  @$pb.TagNumber(4)
  void clearBlur() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get sizePower => $_getN(4);
  @$pb.TagNumber(5)
  set sizePower($core.double v) { $_setFloat(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSizePower() => $_has(4);
  @$pb.TagNumber(5)
  void clearSizePower() => clearField(5);
}

class GuidanceInstanceParameters extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GuidanceInstanceParameters', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..pc<Model>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'models', $pb.PbFieldType.PM, subBuilder: Model.create)
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'guidanceStrength', $pb.PbFieldType.OF)
    ..pc<ScheduleParameters>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'schedule', $pb.PbFieldType.PM, subBuilder: ScheduleParameters.create)
    ..aOM<CutoutParameters>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cutouts', subBuilder: CutoutParameters.create)
    ..aOM<Prompt>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'prompt', subBuilder: Prompt.create)
    ..hasRequiredFields = false
  ;

  GuidanceInstanceParameters._() : super();
  factory GuidanceInstanceParameters({
    $core.Iterable<Model>? models,
    $core.double? guidanceStrength,
    $core.Iterable<ScheduleParameters>? schedule,
    CutoutParameters? cutouts,
    Prompt? prompt,
  }) {
    final _result = create();
    if (models != null) {
      _result.models.addAll(models);
    }
    if (guidanceStrength != null) {
      _result.guidanceStrength = guidanceStrength;
    }
    if (schedule != null) {
      _result.schedule.addAll(schedule);
    }
    if (cutouts != null) {
      _result.cutouts = cutouts;
    }
    if (prompt != null) {
      _result.prompt = prompt;
    }
    return _result;
  }
  factory GuidanceInstanceParameters.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GuidanceInstanceParameters.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GuidanceInstanceParameters clone() => GuidanceInstanceParameters()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GuidanceInstanceParameters copyWith(void Function(GuidanceInstanceParameters) updates) => super.copyWith((message) => updates(message as GuidanceInstanceParameters)) as GuidanceInstanceParameters; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GuidanceInstanceParameters create() => GuidanceInstanceParameters._();
  GuidanceInstanceParameters createEmptyInstance() => create();
  static $pb.PbList<GuidanceInstanceParameters> createRepeated() => $pb.PbList<GuidanceInstanceParameters>();
  @$core.pragma('dart2js:noInline')
  static GuidanceInstanceParameters getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GuidanceInstanceParameters>(create);
  static GuidanceInstanceParameters? _defaultInstance;

  @$pb.TagNumber(2)
  $core.List<Model> get models => $_getList(0);

  @$pb.TagNumber(3)
  $core.double get guidanceStrength => $_getN(1);
  @$pb.TagNumber(3)
  set guidanceStrength($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasGuidanceStrength() => $_has(1);
  @$pb.TagNumber(3)
  void clearGuidanceStrength() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<ScheduleParameters> get schedule => $_getList(2);

  @$pb.TagNumber(5)
  CutoutParameters get cutouts => $_getN(3);
  @$pb.TagNumber(5)
  set cutouts(CutoutParameters v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasCutouts() => $_has(3);
  @$pb.TagNumber(5)
  void clearCutouts() => clearField(5);
  @$pb.TagNumber(5)
  CutoutParameters ensureCutouts() => $_ensure(3);

  @$pb.TagNumber(6)
  Prompt get prompt => $_getN(4);
  @$pb.TagNumber(6)
  set prompt(Prompt v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasPrompt() => $_has(4);
  @$pb.TagNumber(6)
  void clearPrompt() => clearField(6);
  @$pb.TagNumber(6)
  Prompt ensurePrompt() => $_ensure(4);
}

class GuidanceParameters extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GuidanceParameters', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..e<GuidancePreset>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'guidancePreset', $pb.PbFieldType.OE, defaultOrMaker: GuidancePreset.GUIDANCE_PRESET_NONE, valueOf: GuidancePreset.valueOf, enumValues: GuidancePreset.values)
    ..pc<GuidanceInstanceParameters>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'instances', $pb.PbFieldType.PM, subBuilder: GuidanceInstanceParameters.create)
    ..hasRequiredFields = false
  ;

  GuidanceParameters._() : super();
  factory GuidanceParameters({
    GuidancePreset? guidancePreset,
    $core.Iterable<GuidanceInstanceParameters>? instances,
  }) {
    final _result = create();
    if (guidancePreset != null) {
      _result.guidancePreset = guidancePreset;
    }
    if (instances != null) {
      _result.instances.addAll(instances);
    }
    return _result;
  }
  factory GuidanceParameters.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GuidanceParameters.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GuidanceParameters clone() => GuidanceParameters()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GuidanceParameters copyWith(void Function(GuidanceParameters) updates) => super.copyWith((message) => updates(message as GuidanceParameters)) as GuidanceParameters; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GuidanceParameters create() => GuidanceParameters._();
  GuidanceParameters createEmptyInstance() => create();
  static $pb.PbList<GuidanceParameters> createRepeated() => $pb.PbList<GuidanceParameters>();
  @$core.pragma('dart2js:noInline')
  static GuidanceParameters getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GuidanceParameters>(create);
  static GuidanceParameters? _defaultInstance;

  @$pb.TagNumber(1)
  GuidancePreset get guidancePreset => $_getN(0);
  @$pb.TagNumber(1)
  set guidancePreset(GuidancePreset v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasGuidancePreset() => $_has(0);
  @$pb.TagNumber(1)
  void clearGuidancePreset() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<GuidanceInstanceParameters> get instances => $_getList(1);
}

enum TransformType_Type {
  diffusion, 
  upscaler, 
  notSet
}

class TransformType extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, TransformType_Type> _TransformType_TypeByTag = {
    1 : TransformType_Type.diffusion,
    2 : TransformType_Type.upscaler,
    0 : TransformType_Type.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TransformType', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..e<DiffusionSampler>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'diffusion', $pb.PbFieldType.OE, defaultOrMaker: DiffusionSampler.SAMPLER_DDIM, valueOf: DiffusionSampler.valueOf, enumValues: DiffusionSampler.values)
    ..e<Upscaler>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'upscaler', $pb.PbFieldType.OE, defaultOrMaker: Upscaler.UPSCALER_RGB, valueOf: Upscaler.valueOf, enumValues: Upscaler.values)
    ..hasRequiredFields = false
  ;

  TransformType._() : super();
  factory TransformType({
    DiffusionSampler? diffusion,
    Upscaler? upscaler,
  }) {
    final _result = create();
    if (diffusion != null) {
      _result.diffusion = diffusion;
    }
    if (upscaler != null) {
      _result.upscaler = upscaler;
    }
    return _result;
  }
  factory TransformType.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TransformType.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TransformType clone() => TransformType()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TransformType copyWith(void Function(TransformType) updates) => super.copyWith((message) => updates(message as TransformType)) as TransformType; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TransformType create() => TransformType._();
  TransformType createEmptyInstance() => create();
  static $pb.PbList<TransformType> createRepeated() => $pb.PbList<TransformType>();
  @$core.pragma('dart2js:noInline')
  static TransformType getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TransformType>(create);
  static TransformType? _defaultInstance;

  TransformType_Type whichType() => _TransformType_TypeByTag[$_whichOneof(0)]!;
  void clearType() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  DiffusionSampler get diffusion => $_getN(0);
  @$pb.TagNumber(1)
  set diffusion(DiffusionSampler v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDiffusion() => $_has(0);
  @$pb.TagNumber(1)
  void clearDiffusion() => clearField(1);

  @$pb.TagNumber(2)
  Upscaler get upscaler => $_getN(1);
  @$pb.TagNumber(2)
  set upscaler(Upscaler v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasUpscaler() => $_has(1);
  @$pb.TagNumber(2)
  void clearUpscaler() => clearField(2);
}

enum ExtendedParameter_Value {
  float, 
  int_3, 
  str, 
  notSet
}

class ExtendedParameter extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, ExtendedParameter_Value> _ExtendedParameter_ValueByTag = {
    2 : ExtendedParameter_Value.float,
    3 : ExtendedParameter_Value.int_3,
    4 : ExtendedParameter_Value.str,
    0 : ExtendedParameter_Value.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ExtendedParameter', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..oo(0, [2, 3, 4])
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'float', $pb.PbFieldType.OF)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'int', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'str')
    ..hasRequiredFields = false
  ;

  ExtendedParameter._() : super();
  factory ExtendedParameter({
    $core.String? name,
    $core.double? float,
    $fixnum.Int64? int_3,
    $core.String? str,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (float != null) {
      _result.float = float;
    }
    if (int_3 != null) {
      _result.int_3 = int_3;
    }
    if (str != null) {
      _result.str = str;
    }
    return _result;
  }
  factory ExtendedParameter.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ExtendedParameter.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ExtendedParameter clone() => ExtendedParameter()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ExtendedParameter copyWith(void Function(ExtendedParameter) updates) => super.copyWith((message) => updates(message as ExtendedParameter)) as ExtendedParameter; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ExtendedParameter create() => ExtendedParameter._();
  ExtendedParameter createEmptyInstance() => create();
  static $pb.PbList<ExtendedParameter> createRepeated() => $pb.PbList<ExtendedParameter>();
  @$core.pragma('dart2js:noInline')
  static ExtendedParameter getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExtendedParameter>(create);
  static ExtendedParameter? _defaultInstance;

  ExtendedParameter_Value whichValue() => _ExtendedParameter_ValueByTag[$_whichOneof(0)]!;
  void clearValue() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get float => $_getN(1);
  @$pb.TagNumber(2)
  set float($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFloat() => $_has(1);
  @$pb.TagNumber(2)
  void clearFloat() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get int_3 => $_getI64(2);
  @$pb.TagNumber(3)
  set int_3($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasInt_3() => $_has(2);
  @$pb.TagNumber(3)
  void clearInt_3() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get str => $_getSZ(3);
  @$pb.TagNumber(4)
  set str($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasStr() => $_has(3);
  @$pb.TagNumber(4)
  void clearStr() => clearField(4);
}

class ExtendedParameters extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ExtendedParameters', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..pc<ExtendedParameter>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'parameters', $pb.PbFieldType.PM, subBuilder: ExtendedParameter.create)
    ..hasRequiredFields = false
  ;

  ExtendedParameters._() : super();
  factory ExtendedParameters({
    $core.Iterable<ExtendedParameter>? parameters,
  }) {
    final _result = create();
    if (parameters != null) {
      _result.parameters.addAll(parameters);
    }
    return _result;
  }
  factory ExtendedParameters.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ExtendedParameters.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ExtendedParameters clone() => ExtendedParameters()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ExtendedParameters copyWith(void Function(ExtendedParameters) updates) => super.copyWith((message) => updates(message as ExtendedParameters)) as ExtendedParameters; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ExtendedParameters create() => ExtendedParameters._();
  ExtendedParameters createEmptyInstance() => create();
  static $pb.PbList<ExtendedParameters> createRepeated() => $pb.PbList<ExtendedParameters>();
  @$core.pragma('dart2js:noInline')
  static ExtendedParameters getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExtendedParameters>(create);
  static ExtendedParameters? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ExtendedParameter> get parameters => $_getList(0);
}

class ImageParameters extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ImageParameters', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'height', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'width', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..p<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'seed', $pb.PbFieldType.KU3)
    ..a<$fixnum.Int64>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'samples', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'steps', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<TransformType>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'transform', subBuilder: TransformType.create)
    ..pc<StepParameter>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'parameters', $pb.PbFieldType.PM, subBuilder: StepParameter.create)
    ..aOM<ExtendedParameters>(500, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'extension', subBuilder: ExtendedParameters.create)
    ..hasRequiredFields = false
  ;

  ImageParameters._() : super();
  factory ImageParameters({
    $fixnum.Int64? height,
    $fixnum.Int64? width,
    $core.Iterable<$core.int>? seed,
    $fixnum.Int64? samples,
    $fixnum.Int64? steps,
    TransformType? transform,
    $core.Iterable<StepParameter>? parameters,
    ExtendedParameters? extension_500,
  }) {
    final _result = create();
    if (height != null) {
      _result.height = height;
    }
    if (width != null) {
      _result.width = width;
    }
    if (seed != null) {
      _result.seed.addAll(seed);
    }
    if (samples != null) {
      _result.samples = samples;
    }
    if (steps != null) {
      _result.steps = steps;
    }
    if (transform != null) {
      _result.transform = transform;
    }
    if (parameters != null) {
      _result.parameters.addAll(parameters);
    }
    if (extension_500 != null) {
      _result.extension_500 = extension_500;
    }
    return _result;
  }
  factory ImageParameters.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ImageParameters.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ImageParameters clone() => ImageParameters()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ImageParameters copyWith(void Function(ImageParameters) updates) => super.copyWith((message) => updates(message as ImageParameters)) as ImageParameters; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ImageParameters create() => ImageParameters._();
  ImageParameters createEmptyInstance() => create();
  static $pb.PbList<ImageParameters> createRepeated() => $pb.PbList<ImageParameters>();
  @$core.pragma('dart2js:noInline')
  static ImageParameters getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ImageParameters>(create);
  static ImageParameters? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get height => $_getI64(0);
  @$pb.TagNumber(1)
  set height($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeight() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeight() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get width => $_getI64(1);
  @$pb.TagNumber(2)
  set width($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWidth() => $_has(1);
  @$pb.TagNumber(2)
  void clearWidth() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get seed => $_getList(2);

  @$pb.TagNumber(4)
  $fixnum.Int64 get samples => $_getI64(3);
  @$pb.TagNumber(4)
  set samples($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSamples() => $_has(3);
  @$pb.TagNumber(4)
  void clearSamples() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get steps => $_getI64(4);
  @$pb.TagNumber(5)
  set steps($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSteps() => $_has(4);
  @$pb.TagNumber(5)
  void clearSteps() => clearField(5);

  @$pb.TagNumber(6)
  TransformType get transform => $_getN(5);
  @$pb.TagNumber(6)
  set transform(TransformType v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasTransform() => $_has(5);
  @$pb.TagNumber(6)
  void clearTransform() => clearField(6);
  @$pb.TagNumber(6)
  TransformType ensureTransform() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.List<StepParameter> get parameters => $_getList(6);

  @$pb.TagNumber(500)
  ExtendedParameters get extension_500 => $_getN(7);
  @$pb.TagNumber(500)
  set extension_500(ExtendedParameters v) { setField(500, v); }
  @$pb.TagNumber(500)
  $core.bool hasExtension_500() => $_has(7);
  @$pb.TagNumber(500)
  void clearExtension_500() => clearField(500);
  @$pb.TagNumber(500)
  ExtendedParameters ensureExtension_500() => $_ensure(7);
}

class ClassifierConcept extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ClassifierConcept', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'concept')
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'threshold', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  ClassifierConcept._() : super();
  factory ClassifierConcept({
    $core.String? concept,
    $core.double? threshold,
  }) {
    final _result = create();
    if (concept != null) {
      _result.concept = concept;
    }
    if (threshold != null) {
      _result.threshold = threshold;
    }
    return _result;
  }
  factory ClassifierConcept.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClassifierConcept.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClassifierConcept clone() => ClassifierConcept()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClassifierConcept copyWith(void Function(ClassifierConcept) updates) => super.copyWith((message) => updates(message as ClassifierConcept)) as ClassifierConcept; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ClassifierConcept create() => ClassifierConcept._();
  ClassifierConcept createEmptyInstance() => create();
  static $pb.PbList<ClassifierConcept> createRepeated() => $pb.PbList<ClassifierConcept>();
  @$core.pragma('dart2js:noInline')
  static ClassifierConcept getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClassifierConcept>(create);
  static ClassifierConcept? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get concept => $_getSZ(0);
  @$pb.TagNumber(1)
  set concept($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasConcept() => $_has(0);
  @$pb.TagNumber(1)
  void clearConcept() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get threshold => $_getN(1);
  @$pb.TagNumber(2)
  set threshold($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasThreshold() => $_has(1);
  @$pb.TagNumber(2)
  void clearThreshold() => clearField(2);
}

class ClassifierCategory extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ClassifierCategory', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..pc<ClassifierConcept>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'concepts', $pb.PbFieldType.PM, subBuilder: ClassifierConcept.create)
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'adjustment', $pb.PbFieldType.OF)
    ..e<Action>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'action', $pb.PbFieldType.OE, defaultOrMaker: Action.ACTION_PASSTHROUGH, valueOf: Action.valueOf, enumValues: Action.values)
    ..e<ClassifierMode>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'classifierMode', $pb.PbFieldType.OE, defaultOrMaker: ClassifierMode.CLSFR_MODE_ZEROSHOT, valueOf: ClassifierMode.valueOf, enumValues: ClassifierMode.values)
    ..hasRequiredFields = false
  ;

  ClassifierCategory._() : super();
  factory ClassifierCategory({
    $core.String? name,
    $core.Iterable<ClassifierConcept>? concepts,
    $core.double? adjustment,
    Action? action,
    ClassifierMode? classifierMode,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (concepts != null) {
      _result.concepts.addAll(concepts);
    }
    if (adjustment != null) {
      _result.adjustment = adjustment;
    }
    if (action != null) {
      _result.action = action;
    }
    if (classifierMode != null) {
      _result.classifierMode = classifierMode;
    }
    return _result;
  }
  factory ClassifierCategory.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClassifierCategory.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClassifierCategory clone() => ClassifierCategory()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClassifierCategory copyWith(void Function(ClassifierCategory) updates) => super.copyWith((message) => updates(message as ClassifierCategory)) as ClassifierCategory; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ClassifierCategory create() => ClassifierCategory._();
  ClassifierCategory createEmptyInstance() => create();
  static $pb.PbList<ClassifierCategory> createRepeated() => $pb.PbList<ClassifierCategory>();
  @$core.pragma('dart2js:noInline')
  static ClassifierCategory getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClassifierCategory>(create);
  static ClassifierCategory? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<ClassifierConcept> get concepts => $_getList(1);

  @$pb.TagNumber(3)
  $core.double get adjustment => $_getN(2);
  @$pb.TagNumber(3)
  set adjustment($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAdjustment() => $_has(2);
  @$pb.TagNumber(3)
  void clearAdjustment() => clearField(3);

  @$pb.TagNumber(4)
  Action get action => $_getN(3);
  @$pb.TagNumber(4)
  set action(Action v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasAction() => $_has(3);
  @$pb.TagNumber(4)
  void clearAction() => clearField(4);

  @$pb.TagNumber(5)
  ClassifierMode get classifierMode => $_getN(4);
  @$pb.TagNumber(5)
  set classifierMode(ClassifierMode v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasClassifierMode() => $_has(4);
  @$pb.TagNumber(5)
  void clearClassifierMode() => clearField(5);
}

class ClassifierParameters extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ClassifierParameters', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..pc<ClassifierCategory>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'categories', $pb.PbFieldType.PM, subBuilder: ClassifierCategory.create)
    ..pc<ClassifierCategory>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'exceeds', $pb.PbFieldType.PM, subBuilder: ClassifierCategory.create)
    ..e<Action>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'realizedAction', $pb.PbFieldType.OE, defaultOrMaker: Action.ACTION_PASSTHROUGH, valueOf: Action.valueOf, enumValues: Action.values)
    ..hasRequiredFields = false
  ;

  ClassifierParameters._() : super();
  factory ClassifierParameters({
    $core.Iterable<ClassifierCategory>? categories,
    $core.Iterable<ClassifierCategory>? exceeds,
    Action? realizedAction,
  }) {
    final _result = create();
    if (categories != null) {
      _result.categories.addAll(categories);
    }
    if (exceeds != null) {
      _result.exceeds.addAll(exceeds);
    }
    if (realizedAction != null) {
      _result.realizedAction = realizedAction;
    }
    return _result;
  }
  factory ClassifierParameters.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClassifierParameters.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClassifierParameters clone() => ClassifierParameters()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClassifierParameters copyWith(void Function(ClassifierParameters) updates) => super.copyWith((message) => updates(message as ClassifierParameters)) as ClassifierParameters; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ClassifierParameters create() => ClassifierParameters._();
  ClassifierParameters createEmptyInstance() => create();
  static $pb.PbList<ClassifierParameters> createRepeated() => $pb.PbList<ClassifierParameters>();
  @$core.pragma('dart2js:noInline')
  static ClassifierParameters getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClassifierParameters>(create);
  static ClassifierParameters? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ClassifierCategory> get categories => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<ClassifierCategory> get exceeds => $_getList(1);

  @$pb.TagNumber(3)
  Action get realizedAction => $_getN(2);
  @$pb.TagNumber(3)
  set realizedAction(Action v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasRealizedAction() => $_has(2);
  @$pb.TagNumber(3)
  void clearRealizedAction() => clearField(3);
}

class AssetParameters extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AssetParameters', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..e<AssetAction>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'action', $pb.PbFieldType.OE, defaultOrMaker: AssetAction.ASSET_PUT, valueOf: AssetAction.valueOf, enumValues: AssetAction.values)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'project', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  AssetParameters._() : super();
  factory AssetParameters({
    AssetAction? action,
    $fixnum.Int64? project,
  }) {
    final _result = create();
    if (action != null) {
      _result.action = action;
    }
    if (project != null) {
      _result.project = project;
    }
    return _result;
  }
  factory AssetParameters.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AssetParameters.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AssetParameters clone() => AssetParameters()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AssetParameters copyWith(void Function(AssetParameters) updates) => super.copyWith((message) => updates(message as AssetParameters)) as AssetParameters; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AssetParameters create() => AssetParameters._();
  AssetParameters createEmptyInstance() => create();
  static $pb.PbList<AssetParameters> createRepeated() => $pb.PbList<AssetParameters>();
  @$core.pragma('dart2js:noInline')
  static AssetParameters getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AssetParameters>(create);
  static AssetParameters? _defaultInstance;

  @$pb.TagNumber(1)
  AssetAction get action => $_getN(0);
  @$pb.TagNumber(1)
  set action(AssetAction v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAction() => $_has(0);
  @$pb.TagNumber(1)
  void clearAction() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get project => $_getI64(1);
  @$pb.TagNumber(2)
  set project($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasProject() => $_has(1);
  @$pb.TagNumber(2)
  void clearProject() => clearField(2);
}

class AnswerMeta extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AnswerMeta', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gpuId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cpuId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nodeId')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'engineId')
    ..hasRequiredFields = false
  ;

  AnswerMeta._() : super();
  factory AnswerMeta({
    $core.String? gpuId,
    $core.String? cpuId,
    $core.String? nodeId,
    $core.String? engineId,
  }) {
    final _result = create();
    if (gpuId != null) {
      _result.gpuId = gpuId;
    }
    if (cpuId != null) {
      _result.cpuId = cpuId;
    }
    if (nodeId != null) {
      _result.nodeId = nodeId;
    }
    if (engineId != null) {
      _result.engineId = engineId;
    }
    return _result;
  }
  factory AnswerMeta.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AnswerMeta.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AnswerMeta clone() => AnswerMeta()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AnswerMeta copyWith(void Function(AnswerMeta) updates) => super.copyWith((message) => updates(message as AnswerMeta)) as AnswerMeta; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AnswerMeta create() => AnswerMeta._();
  AnswerMeta createEmptyInstance() => create();
  static $pb.PbList<AnswerMeta> createRepeated() => $pb.PbList<AnswerMeta>();
  @$core.pragma('dart2js:noInline')
  static AnswerMeta getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AnswerMeta>(create);
  static AnswerMeta? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get gpuId => $_getSZ(0);
  @$pb.TagNumber(1)
  set gpuId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGpuId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGpuId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get cpuId => $_getSZ(1);
  @$pb.TagNumber(2)
  set cpuId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCpuId() => $_has(1);
  @$pb.TagNumber(2)
  void clearCpuId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get nodeId => $_getSZ(2);
  @$pb.TagNumber(3)
  set nodeId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNodeId() => $_has(2);
  @$pb.TagNumber(3)
  void clearNodeId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get engineId => $_getSZ(3);
  @$pb.TagNumber(4)
  set engineId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEngineId() => $_has(3);
  @$pb.TagNumber(4)
  void clearEngineId() => clearField(4);
}

class Answer extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Answer', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'answerId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId')
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'received', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'created', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<AnswerMeta>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'meta', subBuilder: AnswerMeta.create)
    ..pc<Artifact>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'artifacts', $pb.PbFieldType.PM, subBuilder: Artifact.create)
    ..hasRequiredFields = false
  ;

  Answer._() : super();
  factory Answer({
    $core.String? answerId,
    $core.String? requestId,
    $fixnum.Int64? received,
    $fixnum.Int64? created,
    AnswerMeta? meta,
    $core.Iterable<Artifact>? artifacts,
  }) {
    final _result = create();
    if (answerId != null) {
      _result.answerId = answerId;
    }
    if (requestId != null) {
      _result.requestId = requestId;
    }
    if (received != null) {
      _result.received = received;
    }
    if (created != null) {
      _result.created = created;
    }
    if (meta != null) {
      _result.meta = meta;
    }
    if (artifacts != null) {
      _result.artifacts.addAll(artifacts);
    }
    return _result;
  }
  factory Answer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Answer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Answer clone() => Answer()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Answer copyWith(void Function(Answer) updates) => super.copyWith((message) => updates(message as Answer)) as Answer; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Answer create() => Answer._();
  Answer createEmptyInstance() => create();
  static $pb.PbList<Answer> createRepeated() => $pb.PbList<Answer>();
  @$core.pragma('dart2js:noInline')
  static Answer getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Answer>(create);
  static Answer? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get answerId => $_getSZ(0);
  @$pb.TagNumber(1)
  set answerId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAnswerId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAnswerId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get requestId => $_getSZ(1);
  @$pb.TagNumber(2)
  set requestId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRequestId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRequestId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get received => $_getI64(2);
  @$pb.TagNumber(3)
  set received($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasReceived() => $_has(2);
  @$pb.TagNumber(3)
  void clearReceived() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get created => $_getI64(3);
  @$pb.TagNumber(4)
  set created($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCreated() => $_has(3);
  @$pb.TagNumber(4)
  void clearCreated() => clearField(4);

  @$pb.TagNumber(6)
  AnswerMeta get meta => $_getN(4);
  @$pb.TagNumber(6)
  set meta(AnswerMeta v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasMeta() => $_has(4);
  @$pb.TagNumber(6)
  void clearMeta() => clearField(6);
  @$pb.TagNumber(6)
  AnswerMeta ensureMeta() => $_ensure(4);

  @$pb.TagNumber(7)
  $core.List<Artifact> get artifacts => $_getList(5);
}

enum Request_Params {
  image, 
  classifier, 
  asset, 
  notSet
}

class Request extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Request_Params> _Request_ParamsByTag = {
    5 : Request_Params.image,
    7 : Request_Params.classifier,
    8 : Request_Params.asset,
    0 : Request_Params.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Request', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..oo(0, [5, 7, 8])
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'engineId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId')
    ..e<ArtifactType>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestedType', $pb.PbFieldType.OE, defaultOrMaker: ArtifactType.ARTIFACT_NONE, valueOf: ArtifactType.valueOf, enumValues: ArtifactType.values)
    ..pc<Prompt>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'prompt', $pb.PbFieldType.PM, subBuilder: Prompt.create)
    ..aOM<ImageParameters>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'image', subBuilder: ImageParameters.create)
    ..aOM<ConditionerParameters>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'conditioner', subBuilder: ConditionerParameters.create)
    ..aOM<ClassifierParameters>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'classifier', subBuilder: ClassifierParameters.create)
    ..aOM<AssetParameters>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'asset', subBuilder: AssetParameters.create)
    ..aOS(500, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestAgent')
    ..hasRequiredFields = false
  ;

  Request._() : super();
  factory Request({
    $core.String? engineId,
    $core.String? requestId,
    ArtifactType? requestedType,
    $core.Iterable<Prompt>? prompt,
    ImageParameters? image,
    ConditionerParameters? conditioner,
    ClassifierParameters? classifier,
    AssetParameters? asset,
    $core.String? requestAgent,
  }) {
    final _result = create();
    if (engineId != null) {
      _result.engineId = engineId;
    }
    if (requestId != null) {
      _result.requestId = requestId;
    }
    if (requestedType != null) {
      _result.requestedType = requestedType;
    }
    if (prompt != null) {
      _result.prompt.addAll(prompt);
    }
    if (image != null) {
      _result.image = image;
    }
    if (conditioner != null) {
      _result.conditioner = conditioner;
    }
    if (classifier != null) {
      _result.classifier = classifier;
    }
    if (asset != null) {
      _result.asset = asset;
    }
    if (requestAgent != null) {
      _result.requestAgent = requestAgent;
    }
    return _result;
  }
  factory Request.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Request.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Request clone() => Request()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Request copyWith(void Function(Request) updates) => super.copyWith((message) => updates(message as Request)) as Request; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Request create() => Request._();
  Request createEmptyInstance() => create();
  static $pb.PbList<Request> createRepeated() => $pb.PbList<Request>();
  @$core.pragma('dart2js:noInline')
  static Request getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Request>(create);
  static Request? _defaultInstance;

  Request_Params whichParams() => _Request_ParamsByTag[$_whichOneof(0)]!;
  void clearParams() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get engineId => $_getSZ(0);
  @$pb.TagNumber(1)
  set engineId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEngineId() => $_has(0);
  @$pb.TagNumber(1)
  void clearEngineId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get requestId => $_getSZ(1);
  @$pb.TagNumber(2)
  set requestId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRequestId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRequestId() => clearField(2);

  @$pb.TagNumber(3)
  ArtifactType get requestedType => $_getN(2);
  @$pb.TagNumber(3)
  set requestedType(ArtifactType v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasRequestedType() => $_has(2);
  @$pb.TagNumber(3)
  void clearRequestedType() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<Prompt> get prompt => $_getList(3);

  @$pb.TagNumber(5)
  ImageParameters get image => $_getN(4);
  @$pb.TagNumber(5)
  set image(ImageParameters v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasImage() => $_has(4);
  @$pb.TagNumber(5)
  void clearImage() => clearField(5);
  @$pb.TagNumber(5)
  ImageParameters ensureImage() => $_ensure(4);

  @$pb.TagNumber(6)
  ConditionerParameters get conditioner => $_getN(5);
  @$pb.TagNumber(6)
  set conditioner(ConditionerParameters v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasConditioner() => $_has(5);
  @$pb.TagNumber(6)
  void clearConditioner() => clearField(6);
  @$pb.TagNumber(6)
  ConditionerParameters ensureConditioner() => $_ensure(5);

  @$pb.TagNumber(7)
  ClassifierParameters get classifier => $_getN(6);
  @$pb.TagNumber(7)
  set classifier(ClassifierParameters v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasClassifier() => $_has(6);
  @$pb.TagNumber(7)
  void clearClassifier() => clearField(7);
  @$pb.TagNumber(7)
  ClassifierParameters ensureClassifier() => $_ensure(6);

  @$pb.TagNumber(8)
  AssetParameters get asset => $_getN(7);
  @$pb.TagNumber(8)
  set asset(AssetParameters v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasAsset() => $_has(7);
  @$pb.TagNumber(8)
  void clearAsset() => clearField(8);
  @$pb.TagNumber(8)
  AssetParameters ensureAsset() => $_ensure(7);

  @$pb.TagNumber(500)
  $core.String get requestAgent => $_getSZ(8);
  @$pb.TagNumber(500)
  set requestAgent($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(500)
  $core.bool hasRequestAgent() => $_has(8);
  @$pb.TagNumber(500)
  void clearRequestAgent() => clearField(500);
}

class OnStatus extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OnStatus', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..pc<FinishReason>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reason', $pb.PbFieldType.KE, valueOf: FinishReason.valueOf, enumValues: FinishReason.values, defaultEnumValue: FinishReason.NULL)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'target')
    ..pc<StageAction>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'action', $pb.PbFieldType.KE, valueOf: StageAction.valueOf, enumValues: StageAction.values, defaultEnumValue: StageAction.STAGE_ACTION_PASS)
    ..hasRequiredFields = false
  ;

  OnStatus._() : super();
  factory OnStatus({
    $core.Iterable<FinishReason>? reason,
    $core.String? target,
    $core.Iterable<StageAction>? action,
  }) {
    final _result = create();
    if (reason != null) {
      _result.reason.addAll(reason);
    }
    if (target != null) {
      _result.target = target;
    }
    if (action != null) {
      _result.action.addAll(action);
    }
    return _result;
  }
  factory OnStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OnStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OnStatus clone() => OnStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OnStatus copyWith(void Function(OnStatus) updates) => super.copyWith((message) => updates(message as OnStatus)) as OnStatus; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OnStatus create() => OnStatus._();
  OnStatus createEmptyInstance() => create();
  static $pb.PbList<OnStatus> createRepeated() => $pb.PbList<OnStatus>();
  @$core.pragma('dart2js:noInline')
  static OnStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OnStatus>(create);
  static OnStatus? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<FinishReason> get reason => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get target => $_getSZ(1);
  @$pb.TagNumber(2)
  set target($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTarget() => $_has(1);
  @$pb.TagNumber(2)
  void clearTarget() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<StageAction> get action => $_getList(2);
}

class Stage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Stage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOM<Request>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'request', subBuilder: Request.create)
    ..pc<OnStatus>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'onStatus', $pb.PbFieldType.PM, subBuilder: OnStatus.create)
    ..hasRequiredFields = false
  ;

  Stage._() : super();
  factory Stage({
    $core.String? id,
    Request? request,
    $core.Iterable<OnStatus>? onStatus,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (request != null) {
      _result.request = request;
    }
    if (onStatus != null) {
      _result.onStatus.addAll(onStatus);
    }
    return _result;
  }
  factory Stage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Stage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Stage clone() => Stage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Stage copyWith(void Function(Stage) updates) => super.copyWith((message) => updates(message as Stage)) as Stage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Stage create() => Stage._();
  Stage createEmptyInstance() => create();
  static $pb.PbList<Stage> createRepeated() => $pb.PbList<Stage>();
  @$core.pragma('dart2js:noInline')
  static Stage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Stage>(create);
  static Stage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  Request get request => $_getN(1);
  @$pb.TagNumber(2)
  set request(Request v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRequest() => $_has(1);
  @$pb.TagNumber(2)
  void clearRequest() => clearField(2);
  @$pb.TagNumber(2)
  Request ensureRequest() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<OnStatus> get onStatus => $_getList(2);
}

class ChainRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ChainRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId')
    ..pc<Stage>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stage', $pb.PbFieldType.PM, subBuilder: Stage.create)
    ..hasRequiredFields = false
  ;

  ChainRequest._() : super();
  factory ChainRequest({
    $core.String? requestId,
    $core.Iterable<Stage>? stage,
  }) {
    final _result = create();
    if (requestId != null) {
      _result.requestId = requestId;
    }
    if (stage != null) {
      _result.stage.addAll(stage);
    }
    return _result;
  }
  factory ChainRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChainRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChainRequest clone() => ChainRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChainRequest copyWith(void Function(ChainRequest) updates) => super.copyWith((message) => updates(message as ChainRequest)) as ChainRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChainRequest create() => ChainRequest._();
  ChainRequest createEmptyInstance() => create();
  static $pb.PbList<ChainRequest> createRepeated() => $pb.PbList<ChainRequest>();
  @$core.pragma('dart2js:noInline')
  static ChainRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChainRequest>(create);
  static ChainRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get requestId => $_getSZ(0);
  @$pb.TagNumber(1)
  set requestId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<Stage> get stage => $_getList(1);
}

