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

class GaussianDirection extends $pb.ProtobufEnum {
  static const GaussianDirection DIRECTION_NONE = GaussianDirection._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DIRECTION_NONE');
  static const GaussianDirection DIRECTION_UP = GaussianDirection._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DIRECTION_UP');
  static const GaussianDirection DIRECTION_DOWN = GaussianDirection._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DIRECTION_DOWN');

  static const $core.List<GaussianDirection> values = <GaussianDirection> [
    DIRECTION_NONE,
    DIRECTION_UP,
    DIRECTION_DOWN,
  ];

  static final $core.Map<$core.int, GaussianDirection> _byValue = $pb.ProtobufEnum.initByValue(values);
  static GaussianDirection? valueOf($core.int value) => _byValue[value];

  const GaussianDirection._($core.int v, $core.String n) : super(v, n);
}

class ChannelSource extends $pb.ProtobufEnum {
  static const ChannelSource CHANNEL_R = ChannelSource._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CHANNEL_R');
  static const ChannelSource CHANNEL_G = ChannelSource._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CHANNEL_G');
  static const ChannelSource CHANNEL_B = ChannelSource._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CHANNEL_B');
  static const ChannelSource CHANNEL_A = ChannelSource._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CHANNEL_A');
  static const ChannelSource CHANNEL_ZERO = ChannelSource._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CHANNEL_ZERO');
  static const ChannelSource CHANNEL_ONE = ChannelSource._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CHANNEL_ONE');
  static const ChannelSource CHANNEL_DISCARD = ChannelSource._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CHANNEL_DISCARD');

  static const $core.List<ChannelSource> values = <ChannelSource> [
    CHANNEL_R,
    CHANNEL_G,
    CHANNEL_B,
    CHANNEL_A,
    CHANNEL_ZERO,
    CHANNEL_ONE,
    CHANNEL_DISCARD,
  ];

  static final $core.Map<$core.int, ChannelSource> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ChannelSource? valueOf($core.int value) => _byValue[value];

  const ChannelSource._($core.int v, $core.String n) : super(v, n);
}

class RescaleMode extends $pb.ProtobufEnum {
  static const RescaleMode RESCALE_STRICT = RescaleMode._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'RESCALE_STRICT');
  static const RescaleMode RESCALE_CROP = RescaleMode._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'RESCALE_CROP');
  static const RescaleMode RESCALE_FIT = RescaleMode._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'RESCALE_FIT');

  static const $core.List<RescaleMode> values = <RescaleMode> [
    RESCALE_STRICT,
    RESCALE_CROP,
    RESCALE_FIT,
  ];

  static final $core.Map<$core.int, RescaleMode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RescaleMode? valueOf($core.int value) => _byValue[value];

  const RescaleMode._($core.int v, $core.String n) : super(v, n);
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

class GuidancePreset extends $pb.ProtobufEnum {
  static const GuidancePreset GUIDANCE_PRESET_NONE = GuidancePreset._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'GUIDANCE_PRESET_NONE');
  static const GuidancePreset GUIDANCE_PRESET_FAST = GuidancePreset._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'GUIDANCE_PRESET_FAST');
  static const GuidancePreset GUIDANCE_PRESET_EFFICIENT = GuidancePreset._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'GUIDANCE_PRESET_EFFICIENT');
  static const GuidancePreset GUIDANCE_PRESET_BALANCED = GuidancePreset._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'GUIDANCE_PRESET_BALANCED');
  static const GuidancePreset GUIDANCE_PRESET_QUALITY = GuidancePreset._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'GUIDANCE_PRESET_QUALITY');

  static const $core.List<GuidancePreset> values = <GuidancePreset> [
    GUIDANCE_PRESET_NONE,
    GUIDANCE_PRESET_FAST,
    GUIDANCE_PRESET_EFFICIENT,
    GUIDANCE_PRESET_BALANCED,
    GUIDANCE_PRESET_QUALITY,
  ];

  static final $core.Map<$core.int, GuidancePreset> _byValue = $pb.ProtobufEnum.initByValue(values);
  static GuidancePreset? valueOf($core.int value) => _byValue[value];

  const GuidancePreset._($core.int v, $core.String n) : super(v, n);
}

class ModelArchitecture extends $pb.ProtobufEnum {
  static const ModelArchitecture MODEL_ARCHITECTURE_NONE = ModelArchitecture._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MODEL_ARCHITECTURE_NONE');
  static const ModelArchitecture MODEL_ARCHITECTURE_CLIP_VIT = ModelArchitecture._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MODEL_ARCHITECTURE_CLIP_VIT');
  static const ModelArchitecture MODEL_ARCHITECTURE_CLIP_RESNET = ModelArchitecture._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MODEL_ARCHITECTURE_CLIP_RESNET');
  static const ModelArchitecture MODEL_ARCHITECTURE_LDM = ModelArchitecture._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MODEL_ARCHITECTURE_LDM');

  static const $core.List<ModelArchitecture> values = <ModelArchitecture> [
    MODEL_ARCHITECTURE_NONE,
    MODEL_ARCHITECTURE_CLIP_VIT,
    MODEL_ARCHITECTURE_CLIP_RESNET,
    MODEL_ARCHITECTURE_LDM,
  ];

  static final $core.Map<$core.int, ModelArchitecture> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ModelArchitecture? valueOf($core.int value) => _byValue[value];

  const ModelArchitecture._($core.int v, $core.String n) : super(v, n);
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

class AssetAction extends $pb.ProtobufEnum {
  static const AssetAction ASSET_PUT = AssetAction._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ASSET_PUT');
  static const AssetAction ASSET_GET = AssetAction._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ASSET_GET');
  static const AssetAction ASSET_DELETE = AssetAction._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ASSET_DELETE');

  static const $core.List<AssetAction> values = <AssetAction> [
    ASSET_PUT,
    ASSET_GET,
    ASSET_DELETE,
  ];

  static final $core.Map<$core.int, AssetAction> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AssetAction? valueOf($core.int value) => _byValue[value];

  const AssetAction._($core.int v, $core.String n) : super(v, n);
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

