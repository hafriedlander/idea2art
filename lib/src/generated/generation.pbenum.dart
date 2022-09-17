///
//  Generated code. Do not modify.
//  source: generation.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class FinishReason extends $pb.ProtobufEnum {
  static const FinishReason NULL = FinishReason._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NULL');
  static const FinishReason LENGTH = FinishReason._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LENGTH');
  static const FinishReason STOP = FinishReason._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'STOP');
  static const FinishReason ERROR = FinishReason._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ERROR');
  static const FinishReason FILTER = FinishReason._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FILTER');

  static const $core.List<FinishReason> values = <FinishReason> [
    NULL,
    LENGTH,
    STOP,
    ERROR,
    FILTER,
  ];

  static final $core.Map<$core.int, FinishReason> _byValue = $pb.ProtobufEnum.initByValue(values);
  static FinishReason? valueOf($core.int value) => _byValue[value];

  const FinishReason._($core.int v, $core.String n) : super(v, n);
}

class ArtifactType extends $pb.ProtobufEnum {
  static const ArtifactType ARTIFACT_NONE = ArtifactType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ARTIFACT_NONE');
  static const ArtifactType ARTIFACT_IMAGE = ArtifactType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ARTIFACT_IMAGE');
  static const ArtifactType ARTIFACT_VIDEO = ArtifactType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ARTIFACT_VIDEO');
  static const ArtifactType ARTIFACT_TEXT = ArtifactType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ARTIFACT_TEXT');
  static const ArtifactType ARTIFACT_TOKENS = ArtifactType._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ARTIFACT_TOKENS');
  static const ArtifactType ARTIFACT_EMBEDDING = ArtifactType._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ARTIFACT_EMBEDDING');
  static const ArtifactType ARTIFACT_CLASSIFICATIONS = ArtifactType._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ARTIFACT_CLASSIFICATIONS');
  static const ArtifactType ARTIFACT_MASK = ArtifactType._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ARTIFACT_MASK');

  static const $core.List<ArtifactType> values = <ArtifactType> [
    ARTIFACT_NONE,
    ARTIFACT_IMAGE,
    ARTIFACT_VIDEO,
    ARTIFACT_TEXT,
    ARTIFACT_TOKENS,
    ARTIFACT_EMBEDDING,
    ARTIFACT_CLASSIFICATIONS,
    ARTIFACT_MASK,
  ];

  static final $core.Map<$core.int, ArtifactType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ArtifactType? valueOf($core.int value) => _byValue[value];

  const ArtifactType._($core.int v, $core.String n) : super(v, n);
}

class DiffusionSampler extends $pb.ProtobufEnum {
  static const DiffusionSampler SAMPLER_DDIM = DiffusionSampler._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SAMPLER_DDIM');
  static const DiffusionSampler SAMPLER_DDPM = DiffusionSampler._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SAMPLER_DDPM');
  static const DiffusionSampler SAMPLER_K_EULER = DiffusionSampler._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SAMPLER_K_EULER');
  static const DiffusionSampler SAMPLER_K_EULER_ANCESTRAL = DiffusionSampler._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SAMPLER_K_EULER_ANCESTRAL');
  static const DiffusionSampler SAMPLER_K_HEUN = DiffusionSampler._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SAMPLER_K_HEUN');
  static const DiffusionSampler SAMPLER_K_DPM_2 = DiffusionSampler._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SAMPLER_K_DPM_2');
  static const DiffusionSampler SAMPLER_K_DPM_2_ANCESTRAL = DiffusionSampler._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SAMPLER_K_DPM_2_ANCESTRAL');
  static const DiffusionSampler SAMPLER_K_LMS = DiffusionSampler._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SAMPLER_K_LMS');

  static const $core.List<DiffusionSampler> values = <DiffusionSampler> [
    SAMPLER_DDIM,
    SAMPLER_DDPM,
    SAMPLER_K_EULER,
    SAMPLER_K_EULER_ANCESTRAL,
    SAMPLER_K_HEUN,
    SAMPLER_K_DPM_2,
    SAMPLER_K_DPM_2_ANCESTRAL,
    SAMPLER_K_LMS,
  ];

  static final $core.Map<$core.int, DiffusionSampler> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DiffusionSampler? valueOf($core.int value) => _byValue[value];

  const DiffusionSampler._($core.int v, $core.String n) : super(v, n);
}

class Upscaler extends $pb.ProtobufEnum {
  static const Upscaler UPSCALER_RGB = Upscaler._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UPSCALER_RGB');
  static const Upscaler UPSCALER_GFPGAN = Upscaler._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UPSCALER_GFPGAN');
  static const Upscaler UPSCALER_ESRGAN = Upscaler._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UPSCALER_ESRGAN');

  static const $core.List<Upscaler> values = <Upscaler> [
    UPSCALER_RGB,
    UPSCALER_GFPGAN,
    UPSCALER_ESRGAN,
  ];

  static final $core.Map<$core.int, Upscaler> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Upscaler? valueOf($core.int value) => _byValue[value];

  const Upscaler._($core.int v, $core.String n) : super(v, n);
}

class Action extends $pb.ProtobufEnum {
  static const Action ACTION_PASSTHROUGH = Action._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ACTION_PASSTHROUGH');
  static const Action ACTION_REGENERATE_DUPLICATE = Action._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ACTION_REGENERATE_DUPLICATE');
  static const Action ACTION_REGENERATE = Action._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ACTION_REGENERATE');
  static const Action ACTION_OBFUSCATE_DUPLICATE = Action._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ACTION_OBFUSCATE_DUPLICATE');
  static const Action ACTION_OBFUSCATE = Action._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ACTION_OBFUSCATE');
  static const Action ACTION_DISCARD = Action._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ACTION_DISCARD');

  static const $core.List<Action> values = <Action> [
    ACTION_PASSTHROUGH,
    ACTION_REGENERATE_DUPLICATE,
    ACTION_REGENERATE,
    ACTION_OBFUSCATE_DUPLICATE,
    ACTION_OBFUSCATE,
    ACTION_DISCARD,
  ];

  static final $core.Map<$core.int, Action> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Action? valueOf($core.int value) => _byValue[value];

  const Action._($core.int v, $core.String n) : super(v, n);
}

class ClassifierMode extends $pb.ProtobufEnum {
  static const ClassifierMode CLSFR_MODE_ZEROSHOT = ClassifierMode._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CLSFR_MODE_ZEROSHOT');
  static const ClassifierMode CLSFR_MODE_MULTICLASS = ClassifierMode._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CLSFR_MODE_MULTICLASS');

  static const $core.List<ClassifierMode> values = <ClassifierMode> [
    CLSFR_MODE_ZEROSHOT,
    CLSFR_MODE_MULTICLASS,
  ];

  static final $core.Map<$core.int, ClassifierMode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ClassifierMode? valueOf($core.int value) => _byValue[value];

  const ClassifierMode._($core.int v, $core.String n) : super(v, n);
}

class StageAction extends $pb.ProtobufEnum {
  static const StageAction STAGE_ACTION_PASS = StageAction._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'STAGE_ACTION_PASS');
  static const StageAction STAGE_ACTION_DISCARD = StageAction._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'STAGE_ACTION_DISCARD');
  static const StageAction STAGE_ACTION_RETURN = StageAction._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'STAGE_ACTION_RETURN');

  static const $core.List<StageAction> values = <StageAction> [
    STAGE_ACTION_PASS,
    STAGE_ACTION_DISCARD,
    STAGE_ACTION_RETURN,
  ];

  static final $core.Map<$core.int, StageAction> _byValue = $pb.ProtobufEnum.initByValue(values);
  static StageAction? valueOf($core.int value) => _byValue[value];

  const StageAction._($core.int v, $core.String n) : super(v, n);
}

