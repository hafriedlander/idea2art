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
    ..hasRequiredFields = false
  ;

  ConditionerParameters._() : super();
  factory ConditionerParameters({
    $core.String? vectorAdjustPrior,
  }) {
    final _result = create();
    if (vectorAdjustPrior != null) {
      _result.vectorAdjustPrior = vectorAdjustPrior;
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
    ..hasRequiredFields = false
  ;

  StepParameter._() : super();
  factory StepParameter({
    $core.double? scaledStep,
    SamplerParameters? sampler,
    ScheduleParameters? schedule,
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

class ImageParameters extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ImageParameters', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'height', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'width', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..p<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'seed', $pb.PbFieldType.KU3)
    ..a<$fixnum.Int64>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'samples', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'steps', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<TransformType>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'transform', subBuilder: TransformType.create)
    ..pc<StepParameter>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'parameters', $pb.PbFieldType.PM, subBuilder: StepParameter.create)
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

enum Request_Params {
  image, 
  classifier, 
  notSet
}

class Request extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Request_Params> _Request_ParamsByTag = {
    5 : Request_Params.image,
    7 : Request_Params.classifier,
    0 : Request_Params.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Request', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'gooseai'), createEmptyInstance: create)
    ..oo(0, [5, 7])
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'engineId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestId')
    ..e<ArtifactType>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestedType', $pb.PbFieldType.OE, defaultOrMaker: ArtifactType.ARTIFACT_NONE, valueOf: ArtifactType.valueOf, enumValues: ArtifactType.values)
    ..pc<Prompt>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'prompt', $pb.PbFieldType.PM, subBuilder: Prompt.create)
    ..aOM<ImageParameters>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'image', subBuilder: ImageParameters.create)
    ..aOM<ConditionerParameters>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'conditioner', subBuilder: ConditionerParameters.create)
    ..aOM<ClassifierParameters>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'classifier', subBuilder: ClassifierParameters.create)
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

