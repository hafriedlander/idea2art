///
//  Generated code. Do not modify.
//  source: generation.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use finishReasonDescriptor instead')
const FinishReason$json = const {
  '1': 'FinishReason',
  '2': const [
    const {'1': 'NULL', '2': 0},
    const {'1': 'LENGTH', '2': 1},
    const {'1': 'STOP', '2': 2},
    const {'1': 'ERROR', '2': 3},
    const {'1': 'FILTER', '2': 4},
  ],
};

/// Descriptor for `FinishReason`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List finishReasonDescriptor = $convert.base64Decode('CgxGaW5pc2hSZWFzb24SCAoETlVMTBAAEgoKBkxFTkdUSBABEggKBFNUT1AQAhIJCgVFUlJPUhADEgoKBkZJTFRFUhAE');
@$core.Deprecated('Use artifactTypeDescriptor instead')
const ArtifactType$json = const {
  '1': 'ArtifactType',
  '2': const [
    const {'1': 'ARTIFACT_NONE', '2': 0},
    const {'1': 'ARTIFACT_IMAGE', '2': 1},
    const {'1': 'ARTIFACT_VIDEO', '2': 2},
    const {'1': 'ARTIFACT_TEXT', '2': 3},
    const {'1': 'ARTIFACT_TOKENS', '2': 4},
    const {'1': 'ARTIFACT_EMBEDDING', '2': 5},
    const {'1': 'ARTIFACT_CLASSIFICATIONS', '2': 6},
    const {'1': 'ARTIFACT_MASK', '2': 7},
  ],
};

/// Descriptor for `ArtifactType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List artifactTypeDescriptor = $convert.base64Decode('CgxBcnRpZmFjdFR5cGUSEQoNQVJUSUZBQ1RfTk9ORRAAEhIKDkFSVElGQUNUX0lNQUdFEAESEgoOQVJUSUZBQ1RfVklERU8QAhIRCg1BUlRJRkFDVF9URVhUEAMSEwoPQVJUSUZBQ1RfVE9LRU5TEAQSFgoSQVJUSUZBQ1RfRU1CRURESU5HEAUSHAoYQVJUSUZBQ1RfQ0xBU1NJRklDQVRJT05TEAYSEQoNQVJUSUZBQ1RfTUFTSxAH');
@$core.Deprecated('Use channelSourceDescriptor instead')
const ChannelSource$json = const {
  '1': 'ChannelSource',
  '2': const [
    const {'1': 'CHANNEL_R', '2': 0},
    const {'1': 'CHANNEL_G', '2': 1},
    const {'1': 'CHANNEL_B', '2': 2},
    const {'1': 'CHANNEL_A', '2': 3},
    const {'1': 'CHANNEL_ZERO', '2': 4},
    const {'1': 'CHANNEL_ONE', '2': 5},
    const {'1': 'CHANNEL_DISCARD', '2': 6},
  ],
};

/// Descriptor for `ChannelSource`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List channelSourceDescriptor = $convert.base64Decode('Cg1DaGFubmVsU291cmNlEg0KCUNIQU5ORUxfUhAAEg0KCUNIQU5ORUxfRxABEg0KCUNIQU5ORUxfQhACEg0KCUNIQU5ORUxfQRADEhAKDENIQU5ORUxfWkVSTxAEEg8KC0NIQU5ORUxfT05FEAUSEwoPQ0hBTk5FTF9ESVNDQVJEEAY=');
@$core.Deprecated('Use rescaleModeDescriptor instead')
const RescaleMode$json = const {
  '1': 'RescaleMode',
  '2': const [
    const {'1': 'RESCALE_STRICT', '2': 0},
    const {'1': 'RESCALE_CROP', '2': 2},
    const {'1': 'RESCALE_FIT', '2': 3},
  ],
};

/// Descriptor for `RescaleMode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List rescaleModeDescriptor = $convert.base64Decode('CgtSZXNjYWxlTW9kZRISCg5SRVNDQUxFX1NUUklDVBAAEhAKDFJFU0NBTEVfQ1JPUBACEg8KC1JFU0NBTEVfRklUEAM=');
@$core.Deprecated('Use diffusionSamplerDescriptor instead')
const DiffusionSampler$json = const {
  '1': 'DiffusionSampler',
  '2': const [
    const {'1': 'SAMPLER_DDIM', '2': 0},
    const {'1': 'SAMPLER_DDPM', '2': 1},
    const {'1': 'SAMPLER_K_EULER', '2': 2},
    const {'1': 'SAMPLER_K_EULER_ANCESTRAL', '2': 3},
    const {'1': 'SAMPLER_K_HEUN', '2': 4},
    const {'1': 'SAMPLER_K_DPM_2', '2': 5},
    const {'1': 'SAMPLER_K_DPM_2_ANCESTRAL', '2': 6},
    const {'1': 'SAMPLER_K_LMS', '2': 7},
  ],
};

/// Descriptor for `DiffusionSampler`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List diffusionSamplerDescriptor = $convert.base64Decode('ChBEaWZmdXNpb25TYW1wbGVyEhAKDFNBTVBMRVJfRERJTRAAEhAKDFNBTVBMRVJfRERQTRABEhMKD1NBTVBMRVJfS19FVUxFUhACEh0KGVNBTVBMRVJfS19FVUxFUl9BTkNFU1RSQUwQAxISCg5TQU1QTEVSX0tfSEVVThAEEhMKD1NBTVBMRVJfS19EUE1fMhAFEh0KGVNBTVBMRVJfS19EUE1fMl9BTkNFU1RSQUwQBhIRCg1TQU1QTEVSX0tfTE1TEAc=');
@$core.Deprecated('Use upscalerDescriptor instead')
const Upscaler$json = const {
  '1': 'Upscaler',
  '2': const [
    const {'1': 'UPSCALER_RGB', '2': 0},
    const {'1': 'UPSCALER_GFPGAN', '2': 1},
    const {'1': 'UPSCALER_ESRGAN', '2': 2},
  ],
};

/// Descriptor for `Upscaler`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List upscalerDescriptor = $convert.base64Decode('CghVcHNjYWxlchIQCgxVUFNDQUxFUl9SR0IQABITCg9VUFNDQUxFUl9HRlBHQU4QARITCg9VUFNDQUxFUl9FU1JHQU4QAg==');
@$core.Deprecated('Use guidancePresetDescriptor instead')
const GuidancePreset$json = const {
  '1': 'GuidancePreset',
  '2': const [
    const {'1': 'GUIDANCE_PRESET_NONE', '2': 0},
    const {'1': 'GUIDANCE_PRESET_FAST', '2': 1},
    const {'1': 'GUIDANCE_PRESET_EFFICIENT', '2': 2},
    const {'1': 'GUIDANCE_PRESET_BALANCED', '2': 3},
    const {'1': 'GUIDANCE_PRESET_QUALITY', '2': 4},
  ],
};

/// Descriptor for `GuidancePreset`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List guidancePresetDescriptor = $convert.base64Decode('Cg5HdWlkYW5jZVByZXNldBIYChRHVUlEQU5DRV9QUkVTRVRfTk9ORRAAEhgKFEdVSURBTkNFX1BSRVNFVF9GQVNUEAESHQoZR1VJREFOQ0VfUFJFU0VUX0VGRklDSUVOVBACEhwKGEdVSURBTkNFX1BSRVNFVF9CQUxBTkNFRBADEhsKF0dVSURBTkNFX1BSRVNFVF9RVUFMSVRZEAQ=');
@$core.Deprecated('Use modelArchitectureDescriptor instead')
const ModelArchitecture$json = const {
  '1': 'ModelArchitecture',
  '2': const [
    const {'1': 'MODEL_ARCHITECTURE_NONE', '2': 0},
    const {'1': 'MODEL_ARCHITECTURE_CLIP_VIT', '2': 1},
    const {'1': 'MODEL_ARCHITECTURE_CLIP_RESNET', '2': 2},
    const {'1': 'MODEL_ARCHITECTURE_LDM', '2': 3},
  ],
};

/// Descriptor for `ModelArchitecture`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List modelArchitectureDescriptor = $convert.base64Decode('ChFNb2RlbEFyY2hpdGVjdHVyZRIbChdNT0RFTF9BUkNISVRFQ1RVUkVfTk9ORRAAEh8KG01PREVMX0FSQ0hJVEVDVFVSRV9DTElQX1ZJVBABEiIKHk1PREVMX0FSQ0hJVEVDVFVSRV9DTElQX1JFU05FVBACEhoKFk1PREVMX0FSQ0hJVEVDVFVSRV9MRE0QAw==');
@$core.Deprecated('Use actionDescriptor instead')
const Action$json = const {
  '1': 'Action',
  '2': const [
    const {'1': 'ACTION_PASSTHROUGH', '2': 0},
    const {'1': 'ACTION_REGENERATE_DUPLICATE', '2': 1},
    const {'1': 'ACTION_REGENERATE', '2': 2},
    const {'1': 'ACTION_OBFUSCATE_DUPLICATE', '2': 3},
    const {'1': 'ACTION_OBFUSCATE', '2': 4},
    const {'1': 'ACTION_DISCARD', '2': 5},
  ],
};

/// Descriptor for `Action`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List actionDescriptor = $convert.base64Decode('CgZBY3Rpb24SFgoSQUNUSU9OX1BBU1NUSFJPVUdIEAASHwobQUNUSU9OX1JFR0VORVJBVEVfRFVQTElDQVRFEAESFQoRQUNUSU9OX1JFR0VORVJBVEUQAhIeChpBQ1RJT05fT0JGVVNDQVRFX0RVUExJQ0FURRADEhQKEEFDVElPTl9PQkZVU0NBVEUQBBISCg5BQ1RJT05fRElTQ0FSRBAF');
@$core.Deprecated('Use classifierModeDescriptor instead')
const ClassifierMode$json = const {
  '1': 'ClassifierMode',
  '2': const [
    const {'1': 'CLSFR_MODE_ZEROSHOT', '2': 0},
    const {'1': 'CLSFR_MODE_MULTICLASS', '2': 1},
  ],
};

/// Descriptor for `ClassifierMode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List classifierModeDescriptor = $convert.base64Decode('Cg5DbGFzc2lmaWVyTW9kZRIXChNDTFNGUl9NT0RFX1pFUk9TSE9UEAASGQoVQ0xTRlJfTU9ERV9NVUxUSUNMQVNTEAE=');
@$core.Deprecated('Use assetActionDescriptor instead')
const AssetAction$json = const {
  '1': 'AssetAction',
  '2': const [
    const {'1': 'ASSET_PUT', '2': 0},
    const {'1': 'ASSET_GET', '2': 1},
    const {'1': 'ASSET_DELETE', '2': 2},
  ],
};

/// Descriptor for `AssetAction`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List assetActionDescriptor = $convert.base64Decode('CgtBc3NldEFjdGlvbhINCglBU1NFVF9QVVQQABINCglBU1NFVF9HRVQQARIQCgxBU1NFVF9ERUxFVEUQAg==');
@$core.Deprecated('Use stageActionDescriptor instead')
const StageAction$json = const {
  '1': 'StageAction',
  '2': const [
    const {'1': 'STAGE_ACTION_PASS', '2': 0},
    const {'1': 'STAGE_ACTION_DISCARD', '2': 1},
    const {'1': 'STAGE_ACTION_RETURN', '2': 2},
  ],
};

/// Descriptor for `StageAction`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List stageActionDescriptor = $convert.base64Decode('CgtTdGFnZUFjdGlvbhIVChFTVEFHRV9BQ1RJT05fUEFTUxAAEhgKFFNUQUdFX0FDVElPTl9ESVNDQVJEEAESFwoTU1RBR0VfQUNUSU9OX1JFVFVSThAC');
@$core.Deprecated('Use tokenDescriptor instead')
const Token$json = const {
  '1': 'Token',
  '2': const [
    const {'1': 'text', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'text', '17': true},
    const {'1': 'id', '3': 2, '4': 1, '5': 13, '10': 'id'},
  ],
  '8': const [
    const {'1': '_text'},
  ],
};

/// Descriptor for `Token`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tokenDescriptor = $convert.base64Decode('CgVUb2tlbhIXCgR0ZXh0GAEgASgJSABSBHRleHSIAQESDgoCaWQYAiABKA1SAmlkQgcKBV90ZXh0');
@$core.Deprecated('Use tokensDescriptor instead')
const Tokens$json = const {
  '1': 'Tokens',
  '2': const [
    const {'1': 'tokens', '3': 1, '4': 3, '5': 11, '6': '.gooseai.Token', '10': 'tokens'},
    const {'1': 'tokenizer_id', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'tokenizerId', '17': true},
  ],
  '8': const [
    const {'1': '_tokenizer_id'},
  ],
};

/// Descriptor for `Tokens`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tokensDescriptor = $convert.base64Decode('CgZUb2tlbnMSJgoGdG9rZW5zGAEgAygLMg4uZ29vc2VhaS5Ub2tlblIGdG9rZW5zEiYKDHRva2VuaXplcl9pZBgCIAEoCUgAUgt0b2tlbml6ZXJJZIgBAUIPCg1fdG9rZW5pemVyX2lk');
@$core.Deprecated('Use imageAdjustment_GaussianDescriptor instead')
const ImageAdjustment_Gaussian$json = const {
  '1': 'ImageAdjustment_Gaussian',
  '2': const [
    const {'1': 'sigma', '3': 1, '4': 1, '5': 2, '10': 'sigma'},
  ],
};

/// Descriptor for `ImageAdjustment_Gaussian`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List imageAdjustment_GaussianDescriptor = $convert.base64Decode('ChhJbWFnZUFkanVzdG1lbnRfR2F1c3NpYW4SFAoFc2lnbWEYASABKAJSBXNpZ21h');
@$core.Deprecated('Use imageAdjustment_InvertDescriptor instead')
const ImageAdjustment_Invert$json = const {
  '1': 'ImageAdjustment_Invert',
};

/// Descriptor for `ImageAdjustment_Invert`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List imageAdjustment_InvertDescriptor = $convert.base64Decode('ChZJbWFnZUFkanVzdG1lbnRfSW52ZXJ0');
@$core.Deprecated('Use imageAdjustment_LevelsDescriptor instead')
const ImageAdjustment_Levels$json = const {
  '1': 'ImageAdjustment_Levels',
  '2': const [
    const {'1': 'input_low', '3': 1, '4': 1, '5': 2, '10': 'inputLow'},
    const {'1': 'input_high', '3': 2, '4': 1, '5': 2, '10': 'inputHigh'},
    const {'1': 'output_low', '3': 3, '4': 1, '5': 2, '10': 'outputLow'},
    const {'1': 'output_high', '3': 4, '4': 1, '5': 2, '10': 'outputHigh'},
  ],
};

/// Descriptor for `ImageAdjustment_Levels`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List imageAdjustment_LevelsDescriptor = $convert.base64Decode('ChZJbWFnZUFkanVzdG1lbnRfTGV2ZWxzEhsKCWlucHV0X2xvdxgBIAEoAlIIaW5wdXRMb3cSHQoKaW5wdXRfaGlnaBgCIAEoAlIJaW5wdXRIaWdoEh0KCm91dHB1dF9sb3cYAyABKAJSCW91dHB1dExvdxIfCgtvdXRwdXRfaGlnaBgEIAEoAlIKb3V0cHV0SGlnaA==');
@$core.Deprecated('Use imageAdjustment_ChannelsDescriptor instead')
const ImageAdjustment_Channels$json = const {
  '1': 'ImageAdjustment_Channels',
  '2': const [
    const {'1': 'r', '3': 1, '4': 1, '5': 14, '6': '.gooseai.ChannelSource', '9': 0, '10': 'r', '17': true},
    const {'1': 'g', '3': 2, '4': 1, '5': 14, '6': '.gooseai.ChannelSource', '9': 1, '10': 'g', '17': true},
    const {'1': 'b', '3': 3, '4': 1, '5': 14, '6': '.gooseai.ChannelSource', '9': 2, '10': 'b', '17': true},
    const {'1': 'a', '3': 4, '4': 1, '5': 14, '6': '.gooseai.ChannelSource', '9': 3, '10': 'a', '17': true},
  ],
  '8': const [
    const {'1': '_r'},
    const {'1': '_g'},
    const {'1': '_b'},
    const {'1': '_a'},
  ],
};

/// Descriptor for `ImageAdjustment_Channels`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List imageAdjustment_ChannelsDescriptor = $convert.base64Decode('ChhJbWFnZUFkanVzdG1lbnRfQ2hhbm5lbHMSKQoBchgBIAEoDjIWLmdvb3NlYWkuQ2hhbm5lbFNvdXJjZUgAUgFyiAEBEikKAWcYAiABKA4yFi5nb29zZWFpLkNoYW5uZWxTb3VyY2VIAVIBZ4gBARIpCgFiGAMgASgOMhYuZ29vc2VhaS5DaGFubmVsU291cmNlSAJSAWKIAQESKQoBYRgEIAEoDjIWLmdvb3NlYWkuQ2hhbm5lbFNvdXJjZUgDUgFhiAEBQgQKAl9yQgQKAl9nQgQKAl9iQgQKAl9h');
@$core.Deprecated('Use imageAdjustment_RescaleDescriptor instead')
const ImageAdjustment_Rescale$json = const {
  '1': 'ImageAdjustment_Rescale',
  '2': const [
    const {'1': 'height', '3': 1, '4': 1, '5': 4, '10': 'height'},
    const {'1': 'width', '3': 2, '4': 1, '5': 4, '10': 'width'},
    const {'1': 'mode', '3': 3, '4': 1, '5': 14, '6': '.gooseai.RescaleMode', '10': 'mode'},
    const {'1': 'algorithm_hint', '3': 4, '4': 3, '5': 9, '10': 'algorithmHint'},
  ],
};

/// Descriptor for `ImageAdjustment_Rescale`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List imageAdjustment_RescaleDescriptor = $convert.base64Decode('ChdJbWFnZUFkanVzdG1lbnRfUmVzY2FsZRIWCgZoZWlnaHQYASABKARSBmhlaWdodBIUCgV3aWR0aBgCIAEoBFIFd2lkdGgSKAoEbW9kZRgDIAEoDjIULmdvb3NlYWkuUmVzY2FsZU1vZGVSBG1vZGUSJQoOYWxnb3JpdGhtX2hpbnQYBCADKAlSDWFsZ29yaXRobUhpbnQ=');
@$core.Deprecated('Use imageAdjustmentDescriptor instead')
const ImageAdjustment$json = const {
  '1': 'ImageAdjustment',
  '2': const [
    const {'1': 'blur', '3': 1, '4': 1, '5': 11, '6': '.gooseai.ImageAdjustment_Gaussian', '9': 0, '10': 'blur'},
    const {'1': 'invert', '3': 2, '4': 1, '5': 11, '6': '.gooseai.ImageAdjustment_Invert', '9': 0, '10': 'invert'},
    const {'1': 'levels', '3': 3, '4': 1, '5': 11, '6': '.gooseai.ImageAdjustment_Levels', '9': 0, '10': 'levels'},
    const {'1': 'channels', '3': 4, '4': 1, '5': 11, '6': '.gooseai.ImageAdjustment_Channels', '9': 0, '10': 'channels'},
    const {'1': 'rescale', '3': 5, '4': 1, '5': 11, '6': '.gooseai.ImageAdjustment_Rescale', '9': 0, '10': 'rescale'},
  ],
  '8': const [
    const {'1': 'adjustment'},
  ],
};

/// Descriptor for `ImageAdjustment`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List imageAdjustmentDescriptor = $convert.base64Decode('Cg9JbWFnZUFkanVzdG1lbnQSNwoEYmx1chgBIAEoCzIhLmdvb3NlYWkuSW1hZ2VBZGp1c3RtZW50X0dhdXNzaWFuSABSBGJsdXISOQoGaW52ZXJ0GAIgASgLMh8uZ29vc2VhaS5JbWFnZUFkanVzdG1lbnRfSW52ZXJ0SABSBmludmVydBI5CgZsZXZlbHMYAyABKAsyHy5nb29zZWFpLkltYWdlQWRqdXN0bWVudF9MZXZlbHNIAFIGbGV2ZWxzEj8KCGNoYW5uZWxzGAQgASgLMiEuZ29vc2VhaS5JbWFnZUFkanVzdG1lbnRfQ2hhbm5lbHNIAFIIY2hhbm5lbHMSPAoHcmVzY2FsZRgFIAEoCzIgLmdvb3NlYWkuSW1hZ2VBZGp1c3RtZW50X1Jlc2NhbGVIAFIHcmVzY2FsZUIMCgphZGp1c3RtZW50');
@$core.Deprecated('Use artifactDescriptor instead')
const Artifact$json = const {
  '1': 'Artifact',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    const {'1': 'type', '3': 2, '4': 1, '5': 14, '6': '.gooseai.ArtifactType', '10': 'type'},
    const {'1': 'mime', '3': 3, '4': 1, '5': 9, '10': 'mime'},
    const {'1': 'magic', '3': 4, '4': 1, '5': 9, '9': 1, '10': 'magic', '17': true},
    const {'1': 'binary', '3': 5, '4': 1, '5': 12, '9': 0, '10': 'binary'},
    const {'1': 'text', '3': 6, '4': 1, '5': 9, '9': 0, '10': 'text'},
    const {'1': 'tokens', '3': 7, '4': 1, '5': 11, '6': '.gooseai.Tokens', '9': 0, '10': 'tokens'},
    const {'1': 'classifier', '3': 11, '4': 1, '5': 11, '6': '.gooseai.ClassifierParameters', '9': 0, '10': 'classifier'},
    const {'1': 'index', '3': 8, '4': 1, '5': 13, '10': 'index'},
    const {'1': 'finish_reason', '3': 9, '4': 1, '5': 14, '6': '.gooseai.FinishReason', '10': 'finishReason'},
    const {'1': 'seed', '3': 10, '4': 1, '5': 13, '10': 'seed'},
    const {'1': 'adjustments', '3': 500, '4': 3, '5': 11, '6': '.gooseai.ImageAdjustment', '10': 'adjustments'},
    const {'1': 'postAdjustments', '3': 501, '4': 3, '5': 11, '6': '.gooseai.ImageAdjustment', '10': 'postAdjustments'},
  ],
  '8': const [
    const {'1': 'data'},
    const {'1': '_magic'},
  ],
};

/// Descriptor for `Artifact`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List artifactDescriptor = $convert.base64Decode('CghBcnRpZmFjdBIOCgJpZBgBIAEoBFICaWQSKQoEdHlwZRgCIAEoDjIVLmdvb3NlYWkuQXJ0aWZhY3RUeXBlUgR0eXBlEhIKBG1pbWUYAyABKAlSBG1pbWUSGQoFbWFnaWMYBCABKAlIAVIFbWFnaWOIAQESGAoGYmluYXJ5GAUgASgMSABSBmJpbmFyeRIUCgR0ZXh0GAYgASgJSABSBHRleHQSKQoGdG9rZW5zGAcgASgLMg8uZ29vc2VhaS5Ub2tlbnNIAFIGdG9rZW5zEj8KCmNsYXNzaWZpZXIYCyABKAsyHS5nb29zZWFpLkNsYXNzaWZpZXJQYXJhbWV0ZXJzSABSCmNsYXNzaWZpZXISFAoFaW5kZXgYCCABKA1SBWluZGV4EjoKDWZpbmlzaF9yZWFzb24YCSABKA4yFS5nb29zZWFpLkZpbmlzaFJlYXNvblIMZmluaXNoUmVhc29uEhIKBHNlZWQYCiABKA1SBHNlZWQSOwoLYWRqdXN0bWVudHMY9AMgAygLMhguZ29vc2VhaS5JbWFnZUFkanVzdG1lbnRSC2FkanVzdG1lbnRzEkMKD3Bvc3RBZGp1c3RtZW50cxj1AyADKAsyGC5nb29zZWFpLkltYWdlQWRqdXN0bWVudFIPcG9zdEFkanVzdG1lbnRzQgYKBGRhdGFCCAoGX21hZ2lj');
@$core.Deprecated('Use promptParametersDescriptor instead')
const PromptParameters$json = const {
  '1': 'PromptParameters',
  '2': const [
    const {'1': 'init', '3': 1, '4': 1, '5': 8, '9': 0, '10': 'init', '17': true},
    const {'1': 'weight', '3': 2, '4': 1, '5': 2, '9': 1, '10': 'weight', '17': true},
  ],
  '8': const [
    const {'1': '_init'},
    const {'1': '_weight'},
  ],
};

/// Descriptor for `PromptParameters`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List promptParametersDescriptor = $convert.base64Decode('ChBQcm9tcHRQYXJhbWV0ZXJzEhcKBGluaXQYASABKAhIAFIEaW5pdIgBARIbCgZ3ZWlnaHQYAiABKAJIAVIGd2VpZ2h0iAEBQgcKBV9pbml0QgkKB193ZWlnaHQ=');
@$core.Deprecated('Use promptDescriptor instead')
const Prompt$json = const {
  '1': 'Prompt',
  '2': const [
    const {'1': 'parameters', '3': 1, '4': 1, '5': 11, '6': '.gooseai.PromptParameters', '9': 1, '10': 'parameters', '17': true},
    const {'1': 'text', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'text'},
    const {'1': 'tokens', '3': 3, '4': 1, '5': 11, '6': '.gooseai.Tokens', '9': 0, '10': 'tokens'},
    const {'1': 'artifact', '3': 4, '4': 1, '5': 11, '6': '.gooseai.Artifact', '9': 0, '10': 'artifact'},
  ],
  '8': const [
    const {'1': 'prompt'},
    const {'1': '_parameters'},
  ],
};

/// Descriptor for `Prompt`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List promptDescriptor = $convert.base64Decode('CgZQcm9tcHQSPgoKcGFyYW1ldGVycxgBIAEoCzIZLmdvb3NlYWkuUHJvbXB0UGFyYW1ldGVyc0gBUgpwYXJhbWV0ZXJziAEBEhQKBHRleHQYAiABKAlIAFIEdGV4dBIpCgZ0b2tlbnMYAyABKAsyDy5nb29zZWFpLlRva2Vuc0gAUgZ0b2tlbnMSLwoIYXJ0aWZhY3QYBCABKAsyES5nb29zZWFpLkFydGlmYWN0SABSCGFydGlmYWN0QggKBnByb21wdEINCgtfcGFyYW1ldGVycw==');
@$core.Deprecated('Use samplerParametersDescriptor instead')
const SamplerParameters$json = const {
  '1': 'SamplerParameters',
  '2': const [
    const {'1': 'eta', '3': 1, '4': 1, '5': 2, '9': 0, '10': 'eta', '17': true},
    const {'1': 'sampling_steps', '3': 2, '4': 1, '5': 4, '9': 1, '10': 'samplingSteps', '17': true},
    const {'1': 'latent_channels', '3': 3, '4': 1, '5': 4, '9': 2, '10': 'latentChannels', '17': true},
    const {'1': 'downsampling_factor', '3': 4, '4': 1, '5': 4, '9': 3, '10': 'downsamplingFactor', '17': true},
    const {'1': 'cfg_scale', '3': 5, '4': 1, '5': 2, '9': 4, '10': 'cfgScale', '17': true},
  ],
  '8': const [
    const {'1': '_eta'},
    const {'1': '_sampling_steps'},
    const {'1': '_latent_channels'},
    const {'1': '_downsampling_factor'},
    const {'1': '_cfg_scale'},
  ],
};

/// Descriptor for `SamplerParameters`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List samplerParametersDescriptor = $convert.base64Decode('ChFTYW1wbGVyUGFyYW1ldGVycxIVCgNldGEYASABKAJIAFIDZXRhiAEBEioKDnNhbXBsaW5nX3N0ZXBzGAIgASgESAFSDXNhbXBsaW5nU3RlcHOIAQESLAoPbGF0ZW50X2NoYW5uZWxzGAMgASgESAJSDmxhdGVudENoYW5uZWxziAEBEjQKE2Rvd25zYW1wbGluZ19mYWN0b3IYBCABKARIA1ISZG93bnNhbXBsaW5nRmFjdG9yiAEBEiAKCWNmZ19zY2FsZRgFIAEoAkgEUghjZmdTY2FsZYgBAUIGCgRfZXRhQhEKD19zYW1wbGluZ19zdGVwc0ISChBfbGF0ZW50X2NoYW5uZWxzQhYKFF9kb3duc2FtcGxpbmdfZmFjdG9yQgwKCl9jZmdfc2NhbGU=');
@$core.Deprecated('Use conditionerParametersDescriptor instead')
const ConditionerParameters$json = const {
  '1': 'ConditionerParameters',
  '2': const [
    const {'1': 'vector_adjust_prior', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'vectorAdjustPrior', '17': true},
    const {'1': 'conditioner', '3': 2, '4': 1, '5': 11, '6': '.gooseai.Model', '9': 1, '10': 'conditioner', '17': true},
  ],
  '8': const [
    const {'1': '_vector_adjust_prior'},
    const {'1': '_conditioner'},
  ],
};

/// Descriptor for `ConditionerParameters`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List conditionerParametersDescriptor = $convert.base64Decode('ChVDb25kaXRpb25lclBhcmFtZXRlcnMSMwoTdmVjdG9yX2FkanVzdF9wcmlvchgBIAEoCUgAUhF2ZWN0b3JBZGp1c3RQcmlvcogBARI1Cgtjb25kaXRpb25lchgCIAEoCzIOLmdvb3NlYWkuTW9kZWxIAVILY29uZGl0aW9uZXKIAQFCFgoUX3ZlY3Rvcl9hZGp1c3RfcHJpb3JCDgoMX2NvbmRpdGlvbmVy');
@$core.Deprecated('Use scheduleParametersDescriptor instead')
const ScheduleParameters$json = const {
  '1': 'ScheduleParameters',
  '2': const [
    const {'1': 'start', '3': 1, '4': 1, '5': 2, '9': 0, '10': 'start', '17': true},
    const {'1': 'end', '3': 2, '4': 1, '5': 2, '9': 1, '10': 'end', '17': true},
  ],
  '8': const [
    const {'1': '_start'},
    const {'1': '_end'},
  ],
};

/// Descriptor for `ScheduleParameters`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scheduleParametersDescriptor = $convert.base64Decode('ChJTY2hlZHVsZVBhcmFtZXRlcnMSGQoFc3RhcnQYASABKAJIAFIFc3RhcnSIAQESFQoDZW5kGAIgASgCSAFSA2VuZIgBAUIICgZfc3RhcnRCBgoEX2VuZA==');
@$core.Deprecated('Use stepParameterDescriptor instead')
const StepParameter$json = const {
  '1': 'StepParameter',
  '2': const [
    const {'1': 'scaled_step', '3': 1, '4': 1, '5': 2, '10': 'scaledStep'},
    const {'1': 'sampler', '3': 2, '4': 1, '5': 11, '6': '.gooseai.SamplerParameters', '9': 0, '10': 'sampler', '17': true},
    const {'1': 'schedule', '3': 3, '4': 1, '5': 11, '6': '.gooseai.ScheduleParameters', '9': 1, '10': 'schedule', '17': true},
    const {'1': 'guidance', '3': 4, '4': 1, '5': 11, '6': '.gooseai.GuidanceParameters', '9': 2, '10': 'guidance', '17': true},
  ],
  '8': const [
    const {'1': '_sampler'},
    const {'1': '_schedule'},
    const {'1': '_guidance'},
  ],
};

/// Descriptor for `StepParameter`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stepParameterDescriptor = $convert.base64Decode('Cg1TdGVwUGFyYW1ldGVyEh8KC3NjYWxlZF9zdGVwGAEgASgCUgpzY2FsZWRTdGVwEjkKB3NhbXBsZXIYAiABKAsyGi5nb29zZWFpLlNhbXBsZXJQYXJhbWV0ZXJzSABSB3NhbXBsZXKIAQESPAoIc2NoZWR1bGUYAyABKAsyGy5nb29zZWFpLlNjaGVkdWxlUGFyYW1ldGVyc0gBUghzY2hlZHVsZYgBARI8CghndWlkYW5jZRgEIAEoCzIbLmdvb3NlYWkuR3VpZGFuY2VQYXJhbWV0ZXJzSAJSCGd1aWRhbmNliAEBQgoKCF9zYW1wbGVyQgsKCV9zY2hlZHVsZUILCglfZ3VpZGFuY2U=');
@$core.Deprecated('Use modelDescriptor instead')
const Model$json = const {
  '1': 'Model',
  '2': const [
    const {'1': 'architecture', '3': 1, '4': 1, '5': 14, '6': '.gooseai.ModelArchitecture', '10': 'architecture'},
    const {'1': 'publisher', '3': 2, '4': 1, '5': 9, '10': 'publisher'},
    const {'1': 'dataset', '3': 3, '4': 1, '5': 9, '10': 'dataset'},
    const {'1': 'version', '3': 4, '4': 1, '5': 2, '10': 'version'},
    const {'1': 'semantic_version', '3': 5, '4': 1, '5': 9, '10': 'semanticVersion'},
    const {'1': 'alias', '3': 6, '4': 1, '5': 9, '10': 'alias'},
  ],
};

/// Descriptor for `Model`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List modelDescriptor = $convert.base64Decode('CgVNb2RlbBI+CgxhcmNoaXRlY3R1cmUYASABKA4yGi5nb29zZWFpLk1vZGVsQXJjaGl0ZWN0dXJlUgxhcmNoaXRlY3R1cmUSHAoJcHVibGlzaGVyGAIgASgJUglwdWJsaXNoZXISGAoHZGF0YXNldBgDIAEoCVIHZGF0YXNldBIYCgd2ZXJzaW9uGAQgASgCUgd2ZXJzaW9uEikKEHNlbWFudGljX3ZlcnNpb24YBSABKAlSD3NlbWFudGljVmVyc2lvbhIUCgVhbGlhcxgGIAEoCVIFYWxpYXM=');
@$core.Deprecated('Use cutoutParametersDescriptor instead')
const CutoutParameters$json = const {
  '1': 'CutoutParameters',
  '2': const [
    const {'1': 'cutouts', '3': 1, '4': 3, '5': 11, '6': '.gooseai.CutoutParameters', '10': 'cutouts'},
    const {'1': 'count', '3': 2, '4': 1, '5': 13, '9': 0, '10': 'count', '17': true},
    const {'1': 'gray', '3': 3, '4': 1, '5': 2, '9': 1, '10': 'gray', '17': true},
    const {'1': 'blur', '3': 4, '4': 1, '5': 2, '9': 2, '10': 'blur', '17': true},
    const {'1': 'size_power', '3': 5, '4': 1, '5': 2, '9': 3, '10': 'sizePower', '17': true},
  ],
  '8': const [
    const {'1': '_count'},
    const {'1': '_gray'},
    const {'1': '_blur'},
    const {'1': '_size_power'},
  ],
};

/// Descriptor for `CutoutParameters`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cutoutParametersDescriptor = $convert.base64Decode('ChBDdXRvdXRQYXJhbWV0ZXJzEjMKB2N1dG91dHMYASADKAsyGS5nb29zZWFpLkN1dG91dFBhcmFtZXRlcnNSB2N1dG91dHMSGQoFY291bnQYAiABKA1IAFIFY291bnSIAQESFwoEZ3JheRgDIAEoAkgBUgRncmF5iAEBEhcKBGJsdXIYBCABKAJIAlIEYmx1cogBARIiCgpzaXplX3Bvd2VyGAUgASgCSANSCXNpemVQb3dlcogBAUIICgZfY291bnRCBwoFX2dyYXlCBwoFX2JsdXJCDQoLX3NpemVfcG93ZXI=');
@$core.Deprecated('Use guidanceInstanceParametersDescriptor instead')
const GuidanceInstanceParameters$json = const {
  '1': 'GuidanceInstanceParameters',
  '2': const [
    const {'1': 'models', '3': 2, '4': 3, '5': 11, '6': '.gooseai.Model', '10': 'models'},
    const {'1': 'guidance_strength', '3': 3, '4': 1, '5': 2, '9': 0, '10': 'guidanceStrength', '17': true},
    const {'1': 'schedule', '3': 4, '4': 3, '5': 11, '6': '.gooseai.ScheduleParameters', '10': 'schedule'},
    const {'1': 'cutouts', '3': 5, '4': 1, '5': 11, '6': '.gooseai.CutoutParameters', '9': 1, '10': 'cutouts', '17': true},
    const {'1': 'prompt', '3': 6, '4': 1, '5': 11, '6': '.gooseai.Prompt', '9': 2, '10': 'prompt', '17': true},
  ],
  '8': const [
    const {'1': '_guidance_strength'},
    const {'1': '_cutouts'},
    const {'1': '_prompt'},
  ],
};

/// Descriptor for `GuidanceInstanceParameters`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List guidanceInstanceParametersDescriptor = $convert.base64Decode('ChpHdWlkYW5jZUluc3RhbmNlUGFyYW1ldGVycxImCgZtb2RlbHMYAiADKAsyDi5nb29zZWFpLk1vZGVsUgZtb2RlbHMSMAoRZ3VpZGFuY2Vfc3RyZW5ndGgYAyABKAJIAFIQZ3VpZGFuY2VTdHJlbmd0aIgBARI3CghzY2hlZHVsZRgEIAMoCzIbLmdvb3NlYWkuU2NoZWR1bGVQYXJhbWV0ZXJzUghzY2hlZHVsZRI4CgdjdXRvdXRzGAUgASgLMhkuZ29vc2VhaS5DdXRvdXRQYXJhbWV0ZXJzSAFSB2N1dG91dHOIAQESLAoGcHJvbXB0GAYgASgLMg8uZ29vc2VhaS5Qcm9tcHRIAlIGcHJvbXB0iAEBQhQKEl9ndWlkYW5jZV9zdHJlbmd0aEIKCghfY3V0b3V0c0IJCgdfcHJvbXB0');
@$core.Deprecated('Use guidanceParametersDescriptor instead')
const GuidanceParameters$json = const {
  '1': 'GuidanceParameters',
  '2': const [
    const {'1': 'guidance_preset', '3': 1, '4': 1, '5': 14, '6': '.gooseai.GuidancePreset', '10': 'guidancePreset'},
    const {'1': 'instances', '3': 2, '4': 3, '5': 11, '6': '.gooseai.GuidanceInstanceParameters', '10': 'instances'},
  ],
};

/// Descriptor for `GuidanceParameters`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List guidanceParametersDescriptor = $convert.base64Decode('ChJHdWlkYW5jZVBhcmFtZXRlcnMSQAoPZ3VpZGFuY2VfcHJlc2V0GAEgASgOMhcuZ29vc2VhaS5HdWlkYW5jZVByZXNldFIOZ3VpZGFuY2VQcmVzZXQSQQoJaW5zdGFuY2VzGAIgAygLMiMuZ29vc2VhaS5HdWlkYW5jZUluc3RhbmNlUGFyYW1ldGVyc1IJaW5zdGFuY2Vz');
@$core.Deprecated('Use transformTypeDescriptor instead')
const TransformType$json = const {
  '1': 'TransformType',
  '2': const [
    const {'1': 'diffusion', '3': 1, '4': 1, '5': 14, '6': '.gooseai.DiffusionSampler', '9': 0, '10': 'diffusion'},
    const {'1': 'upscaler', '3': 2, '4': 1, '5': 14, '6': '.gooseai.Upscaler', '9': 0, '10': 'upscaler'},
  ],
  '8': const [
    const {'1': 'type'},
  ],
};

/// Descriptor for `TransformType`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transformTypeDescriptor = $convert.base64Decode('Cg1UcmFuc2Zvcm1UeXBlEjkKCWRpZmZ1c2lvbhgBIAEoDjIZLmdvb3NlYWkuRGlmZnVzaW9uU2FtcGxlckgAUglkaWZmdXNpb24SLwoIdXBzY2FsZXIYAiABKA4yES5nb29zZWFpLlVwc2NhbGVySABSCHVwc2NhbGVyQgYKBHR5cGU=');
@$core.Deprecated('Use extendedParameterDescriptor instead')
const ExtendedParameter$json = const {
  '1': 'ExtendedParameter',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'float', '3': 2, '4': 1, '5': 2, '9': 0, '10': 'float'},
    const {'1': 'int', '3': 3, '4': 1, '5': 4, '9': 0, '10': 'int'},
    const {'1': 'str', '3': 4, '4': 1, '5': 9, '9': 0, '10': 'str'},
  ],
  '8': const [
    const {'1': 'value'},
  ],
};

/// Descriptor for `ExtendedParameter`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List extendedParameterDescriptor = $convert.base64Decode('ChFFeHRlbmRlZFBhcmFtZXRlchISCgRuYW1lGAEgASgJUgRuYW1lEhYKBWZsb2F0GAIgASgCSABSBWZsb2F0EhIKA2ludBgDIAEoBEgAUgNpbnQSEgoDc3RyGAQgASgJSABSA3N0ckIHCgV2YWx1ZQ==');
@$core.Deprecated('Use extendedParametersDescriptor instead')
const ExtendedParameters$json = const {
  '1': 'ExtendedParameters',
  '2': const [
    const {'1': 'parameters', '3': 1, '4': 3, '5': 11, '6': '.gooseai.ExtendedParameter', '10': 'parameters'},
  ],
};

/// Descriptor for `ExtendedParameters`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List extendedParametersDescriptor = $convert.base64Decode('ChJFeHRlbmRlZFBhcmFtZXRlcnMSOgoKcGFyYW1ldGVycxgBIAMoCzIaLmdvb3NlYWkuRXh0ZW5kZWRQYXJhbWV0ZXJSCnBhcmFtZXRlcnM=');
@$core.Deprecated('Use imageParametersDescriptor instead')
const ImageParameters$json = const {
  '1': 'ImageParameters',
  '2': const [
    const {'1': 'height', '3': 1, '4': 1, '5': 4, '9': 0, '10': 'height', '17': true},
    const {'1': 'width', '3': 2, '4': 1, '5': 4, '9': 1, '10': 'width', '17': true},
    const {'1': 'seed', '3': 3, '4': 3, '5': 13, '10': 'seed'},
    const {'1': 'samples', '3': 4, '4': 1, '5': 4, '9': 2, '10': 'samples', '17': true},
    const {'1': 'steps', '3': 5, '4': 1, '5': 4, '9': 3, '10': 'steps', '17': true},
    const {'1': 'transform', '3': 6, '4': 1, '5': 11, '6': '.gooseai.TransformType', '9': 4, '10': 'transform', '17': true},
    const {'1': 'parameters', '3': 7, '4': 3, '5': 11, '6': '.gooseai.StepParameter', '10': 'parameters'},
    const {'1': 'extension', '3': 500, '4': 1, '5': 11, '6': '.gooseai.ExtendedParameters', '9': 5, '10': 'extension', '17': true},
  ],
  '8': const [
    const {'1': '_height'},
    const {'1': '_width'},
    const {'1': '_samples'},
    const {'1': '_steps'},
    const {'1': '_transform'},
    const {'1': '_extension'},
  ],
};

/// Descriptor for `ImageParameters`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List imageParametersDescriptor = $convert.base64Decode('Cg9JbWFnZVBhcmFtZXRlcnMSGwoGaGVpZ2h0GAEgASgESABSBmhlaWdodIgBARIZCgV3aWR0aBgCIAEoBEgBUgV3aWR0aIgBARISCgRzZWVkGAMgAygNUgRzZWVkEh0KB3NhbXBsZXMYBCABKARIAlIHc2FtcGxlc4gBARIZCgVzdGVwcxgFIAEoBEgDUgVzdGVwc4gBARI5Cgl0cmFuc2Zvcm0YBiABKAsyFi5nb29zZWFpLlRyYW5zZm9ybVR5cGVIBFIJdHJhbnNmb3JtiAEBEjYKCnBhcmFtZXRlcnMYByADKAsyFi5nb29zZWFpLlN0ZXBQYXJhbWV0ZXJSCnBhcmFtZXRlcnMSPwoJZXh0ZW5zaW9uGPQDIAEoCzIbLmdvb3NlYWkuRXh0ZW5kZWRQYXJhbWV0ZXJzSAVSCWV4dGVuc2lvbogBAUIJCgdfaGVpZ2h0QggKBl93aWR0aEIKCghfc2FtcGxlc0IICgZfc3RlcHNCDAoKX3RyYW5zZm9ybUIMCgpfZXh0ZW5zaW9u');
@$core.Deprecated('Use classifierConceptDescriptor instead')
const ClassifierConcept$json = const {
  '1': 'ClassifierConcept',
  '2': const [
    const {'1': 'concept', '3': 1, '4': 1, '5': 9, '10': 'concept'},
    const {'1': 'threshold', '3': 2, '4': 1, '5': 2, '9': 0, '10': 'threshold', '17': true},
  ],
  '8': const [
    const {'1': '_threshold'},
  ],
};

/// Descriptor for `ClassifierConcept`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List classifierConceptDescriptor = $convert.base64Decode('ChFDbGFzc2lmaWVyQ29uY2VwdBIYCgdjb25jZXB0GAEgASgJUgdjb25jZXB0EiEKCXRocmVzaG9sZBgCIAEoAkgAUgl0aHJlc2hvbGSIAQFCDAoKX3RocmVzaG9sZA==');
@$core.Deprecated('Use classifierCategoryDescriptor instead')
const ClassifierCategory$json = const {
  '1': 'ClassifierCategory',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'concepts', '3': 2, '4': 3, '5': 11, '6': '.gooseai.ClassifierConcept', '10': 'concepts'},
    const {'1': 'adjustment', '3': 3, '4': 1, '5': 2, '9': 0, '10': 'adjustment', '17': true},
    const {'1': 'action', '3': 4, '4': 1, '5': 14, '6': '.gooseai.Action', '9': 1, '10': 'action', '17': true},
    const {'1': 'classifier_mode', '3': 5, '4': 1, '5': 14, '6': '.gooseai.ClassifierMode', '9': 2, '10': 'classifierMode', '17': true},
  ],
  '8': const [
    const {'1': '_adjustment'},
    const {'1': '_action'},
    const {'1': '_classifier_mode'},
  ],
};

/// Descriptor for `ClassifierCategory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List classifierCategoryDescriptor = $convert.base64Decode('ChJDbGFzc2lmaWVyQ2F0ZWdvcnkSEgoEbmFtZRgBIAEoCVIEbmFtZRI2Cghjb25jZXB0cxgCIAMoCzIaLmdvb3NlYWkuQ2xhc3NpZmllckNvbmNlcHRSCGNvbmNlcHRzEiMKCmFkanVzdG1lbnQYAyABKAJIAFIKYWRqdXN0bWVudIgBARIsCgZhY3Rpb24YBCABKA4yDy5nb29zZWFpLkFjdGlvbkgBUgZhY3Rpb26IAQESRQoPY2xhc3NpZmllcl9tb2RlGAUgASgOMhcuZ29vc2VhaS5DbGFzc2lmaWVyTW9kZUgCUg5jbGFzc2lmaWVyTW9kZYgBAUINCgtfYWRqdXN0bWVudEIJCgdfYWN0aW9uQhIKEF9jbGFzc2lmaWVyX21vZGU=');
@$core.Deprecated('Use classifierParametersDescriptor instead')
const ClassifierParameters$json = const {
  '1': 'ClassifierParameters',
  '2': const [
    const {'1': 'categories', '3': 1, '4': 3, '5': 11, '6': '.gooseai.ClassifierCategory', '10': 'categories'},
    const {'1': 'exceeds', '3': 2, '4': 3, '5': 11, '6': '.gooseai.ClassifierCategory', '10': 'exceeds'},
    const {'1': 'realized_action', '3': 3, '4': 1, '5': 14, '6': '.gooseai.Action', '9': 0, '10': 'realizedAction', '17': true},
  ],
  '8': const [
    const {'1': '_realized_action'},
  ],
};

/// Descriptor for `ClassifierParameters`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List classifierParametersDescriptor = $convert.base64Decode('ChRDbGFzc2lmaWVyUGFyYW1ldGVycxI7CgpjYXRlZ29yaWVzGAEgAygLMhsuZ29vc2VhaS5DbGFzc2lmaWVyQ2F0ZWdvcnlSCmNhdGVnb3JpZXMSNQoHZXhjZWVkcxgCIAMoCzIbLmdvb3NlYWkuQ2xhc3NpZmllckNhdGVnb3J5UgdleGNlZWRzEj0KD3JlYWxpemVkX2FjdGlvbhgDIAEoDjIPLmdvb3NlYWkuQWN0aW9uSABSDnJlYWxpemVkQWN0aW9uiAEBQhIKEF9yZWFsaXplZF9hY3Rpb24=');
@$core.Deprecated('Use assetParametersDescriptor instead')
const AssetParameters$json = const {
  '1': 'AssetParameters',
  '2': const [
    const {'1': 'action', '3': 1, '4': 1, '5': 14, '6': '.gooseai.AssetAction', '10': 'action'},
    const {'1': 'project', '3': 2, '4': 1, '5': 4, '10': 'project'},
  ],
};

/// Descriptor for `AssetParameters`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List assetParametersDescriptor = $convert.base64Decode('Cg9Bc3NldFBhcmFtZXRlcnMSLAoGYWN0aW9uGAEgASgOMhQuZ29vc2VhaS5Bc3NldEFjdGlvblIGYWN0aW9uEhgKB3Byb2plY3QYAiABKARSB3Byb2plY3Q=');
@$core.Deprecated('Use answerMetaDescriptor instead')
const AnswerMeta$json = const {
  '1': 'AnswerMeta',
  '2': const [
    const {'1': 'gpu_id', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'gpuId', '17': true},
    const {'1': 'cpu_id', '3': 2, '4': 1, '5': 9, '9': 1, '10': 'cpuId', '17': true},
    const {'1': 'node_id', '3': 3, '4': 1, '5': 9, '9': 2, '10': 'nodeId', '17': true},
    const {'1': 'engine_id', '3': 4, '4': 1, '5': 9, '9': 3, '10': 'engineId', '17': true},
  ],
  '8': const [
    const {'1': '_gpu_id'},
    const {'1': '_cpu_id'},
    const {'1': '_node_id'},
    const {'1': '_engine_id'},
  ],
};

/// Descriptor for `AnswerMeta`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List answerMetaDescriptor = $convert.base64Decode('CgpBbnN3ZXJNZXRhEhoKBmdwdV9pZBgBIAEoCUgAUgVncHVJZIgBARIaCgZjcHVfaWQYAiABKAlIAVIFY3B1SWSIAQESHAoHbm9kZV9pZBgDIAEoCUgCUgZub2RlSWSIAQESIAoJZW5naW5lX2lkGAQgASgJSANSCGVuZ2luZUlkiAEBQgkKB19ncHVfaWRCCQoHX2NwdV9pZEIKCghfbm9kZV9pZEIMCgpfZW5naW5lX2lk');
@$core.Deprecated('Use answerDescriptor instead')
const Answer$json = const {
  '1': 'Answer',
  '2': const [
    const {'1': 'answer_id', '3': 1, '4': 1, '5': 9, '10': 'answerId'},
    const {'1': 'request_id', '3': 2, '4': 1, '5': 9, '10': 'requestId'},
    const {'1': 'received', '3': 3, '4': 1, '5': 4, '10': 'received'},
    const {'1': 'created', '3': 4, '4': 1, '5': 4, '10': 'created'},
    const {'1': 'meta', '3': 6, '4': 1, '5': 11, '6': '.gooseai.AnswerMeta', '9': 0, '10': 'meta', '17': true},
    const {'1': 'artifacts', '3': 7, '4': 3, '5': 11, '6': '.gooseai.Artifact', '10': 'artifacts'},
  ],
  '8': const [
    const {'1': '_meta'},
  ],
};

/// Descriptor for `Answer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List answerDescriptor = $convert.base64Decode('CgZBbnN3ZXISGwoJYW5zd2VyX2lkGAEgASgJUghhbnN3ZXJJZBIdCgpyZXF1ZXN0X2lkGAIgASgJUglyZXF1ZXN0SWQSGgoIcmVjZWl2ZWQYAyABKARSCHJlY2VpdmVkEhgKB2NyZWF0ZWQYBCABKARSB2NyZWF0ZWQSLAoEbWV0YRgGIAEoCzITLmdvb3NlYWkuQW5zd2VyTWV0YUgAUgRtZXRhiAEBEi8KCWFydGlmYWN0cxgHIAMoCzIRLmdvb3NlYWkuQXJ0aWZhY3RSCWFydGlmYWN0c0IHCgVfbWV0YQ==');
@$core.Deprecated('Use requestDescriptor instead')
const Request$json = const {
  '1': 'Request',
  '2': const [
    const {'1': 'engine_id', '3': 1, '4': 1, '5': 9, '10': 'engineId'},
    const {'1': 'request_id', '3': 2, '4': 1, '5': 9, '10': 'requestId'},
    const {'1': 'requested_type', '3': 3, '4': 1, '5': 14, '6': '.gooseai.ArtifactType', '10': 'requestedType'},
    const {'1': 'prompt', '3': 4, '4': 3, '5': 11, '6': '.gooseai.Prompt', '10': 'prompt'},
    const {'1': 'image', '3': 5, '4': 1, '5': 11, '6': '.gooseai.ImageParameters', '9': 0, '10': 'image'},
    const {'1': 'classifier', '3': 7, '4': 1, '5': 11, '6': '.gooseai.ClassifierParameters', '9': 0, '10': 'classifier'},
    const {'1': 'asset', '3': 8, '4': 1, '5': 11, '6': '.gooseai.AssetParameters', '9': 0, '10': 'asset'},
    const {'1': 'conditioner', '3': 6, '4': 1, '5': 11, '6': '.gooseai.ConditionerParameters', '9': 1, '10': 'conditioner', '17': true},
    const {'1': 'request_agent', '3': 500, '4': 1, '5': 9, '10': 'requestAgent'},
  ],
  '8': const [
    const {'1': 'params'},
    const {'1': '_conditioner'},
  ],
};

/// Descriptor for `Request`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requestDescriptor = $convert.base64Decode('CgdSZXF1ZXN0EhsKCWVuZ2luZV9pZBgBIAEoCVIIZW5naW5lSWQSHQoKcmVxdWVzdF9pZBgCIAEoCVIJcmVxdWVzdElkEjwKDnJlcXVlc3RlZF90eXBlGAMgASgOMhUuZ29vc2VhaS5BcnRpZmFjdFR5cGVSDXJlcXVlc3RlZFR5cGUSJwoGcHJvbXB0GAQgAygLMg8uZ29vc2VhaS5Qcm9tcHRSBnByb21wdBIwCgVpbWFnZRgFIAEoCzIYLmdvb3NlYWkuSW1hZ2VQYXJhbWV0ZXJzSABSBWltYWdlEj8KCmNsYXNzaWZpZXIYByABKAsyHS5nb29zZWFpLkNsYXNzaWZpZXJQYXJhbWV0ZXJzSABSCmNsYXNzaWZpZXISMAoFYXNzZXQYCCABKAsyGC5nb29zZWFpLkFzc2V0UGFyYW1ldGVyc0gAUgVhc3NldBJFCgtjb25kaXRpb25lchgGIAEoCzIeLmdvb3NlYWkuQ29uZGl0aW9uZXJQYXJhbWV0ZXJzSAFSC2NvbmRpdGlvbmVyiAEBEiQKDXJlcXVlc3RfYWdlbnQY9AMgASgJUgxyZXF1ZXN0QWdlbnRCCAoGcGFyYW1zQg4KDF9jb25kaXRpb25lcg==');
@$core.Deprecated('Use onStatusDescriptor instead')
const OnStatus$json = const {
  '1': 'OnStatus',
  '2': const [
    const {'1': 'reason', '3': 1, '4': 3, '5': 14, '6': '.gooseai.FinishReason', '10': 'reason'},
    const {'1': 'target', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'target', '17': true},
    const {'1': 'action', '3': 3, '4': 3, '5': 14, '6': '.gooseai.StageAction', '10': 'action'},
  ],
  '8': const [
    const {'1': '_target'},
  ],
};

/// Descriptor for `OnStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List onStatusDescriptor = $convert.base64Decode('CghPblN0YXR1cxItCgZyZWFzb24YASADKA4yFS5nb29zZWFpLkZpbmlzaFJlYXNvblIGcmVhc29uEhsKBnRhcmdldBgCIAEoCUgAUgZ0YXJnZXSIAQESLAoGYWN0aW9uGAMgAygOMhQuZ29vc2VhaS5TdGFnZUFjdGlvblIGYWN0aW9uQgkKB190YXJnZXQ=');
@$core.Deprecated('Use stageDescriptor instead')
const Stage$json = const {
  '1': 'Stage',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'request', '3': 2, '4': 1, '5': 11, '6': '.gooseai.Request', '10': 'request'},
    const {'1': 'on_status', '3': 3, '4': 3, '5': 11, '6': '.gooseai.OnStatus', '10': 'onStatus'},
  ],
};

/// Descriptor for `Stage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stageDescriptor = $convert.base64Decode('CgVTdGFnZRIOCgJpZBgBIAEoCVICaWQSKgoHcmVxdWVzdBgCIAEoCzIQLmdvb3NlYWkuUmVxdWVzdFIHcmVxdWVzdBIuCglvbl9zdGF0dXMYAyADKAsyES5nb29zZWFpLk9uU3RhdHVzUghvblN0YXR1cw==');
@$core.Deprecated('Use chainRequestDescriptor instead')
const ChainRequest$json = const {
  '1': 'ChainRequest',
  '2': const [
    const {'1': 'request_id', '3': 1, '4': 1, '5': 9, '10': 'requestId'},
    const {'1': 'stage', '3': 2, '4': 3, '5': 11, '6': '.gooseai.Stage', '10': 'stage'},
  ],
};

/// Descriptor for `ChainRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chainRequestDescriptor = $convert.base64Decode('CgxDaGFpblJlcXVlc3QSHQoKcmVxdWVzdF9pZBgBIAEoCVIJcmVxdWVzdElkEiQKBXN0YWdlGAIgAygLMg4uZ29vc2VhaS5TdGFnZVIFc3RhZ2U=');
