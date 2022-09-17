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
  ],
  '8': const [
    const {'1': 'data'},
    const {'1': '_magic'},
  ],
};

/// Descriptor for `Artifact`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List artifactDescriptor = $convert.base64Decode('CghBcnRpZmFjdBIOCgJpZBgBIAEoBFICaWQSKQoEdHlwZRgCIAEoDjIVLmdvb3NlYWkuQXJ0aWZhY3RUeXBlUgR0eXBlEhIKBG1pbWUYAyABKAlSBG1pbWUSGQoFbWFnaWMYBCABKAlIAVIFbWFnaWOIAQESGAoGYmluYXJ5GAUgASgMSABSBmJpbmFyeRIUCgR0ZXh0GAYgASgJSABSBHRleHQSKQoGdG9rZW5zGAcgASgLMg8uZ29vc2VhaS5Ub2tlbnNIAFIGdG9rZW5zEj8KCmNsYXNzaWZpZXIYCyABKAsyHS5nb29zZWFpLkNsYXNzaWZpZXJQYXJhbWV0ZXJzSABSCmNsYXNzaWZpZXISFAoFaW5kZXgYCCABKA1SBWluZGV4EjoKDWZpbmlzaF9yZWFzb24YCSABKA4yFS5nb29zZWFpLkZpbmlzaFJlYXNvblIMZmluaXNoUmVhc29uEhIKBHNlZWQYCiABKA1SBHNlZWRCBgoEZGF0YUIICgZfbWFnaWM=');
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
  ],
  '8': const [
    const {'1': '_vector_adjust_prior'},
  ],
};

/// Descriptor for `ConditionerParameters`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List conditionerParametersDescriptor = $convert.base64Decode('ChVDb25kaXRpb25lclBhcmFtZXRlcnMSMwoTdmVjdG9yX2FkanVzdF9wcmlvchgBIAEoCUgAUhF2ZWN0b3JBZGp1c3RQcmlvcogBAUIWChRfdmVjdG9yX2FkanVzdF9wcmlvcg==');
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
  ],
  '8': const [
    const {'1': '_sampler'},
    const {'1': '_schedule'},
  ],
};

/// Descriptor for `StepParameter`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stepParameterDescriptor = $convert.base64Decode('Cg1TdGVwUGFyYW1ldGVyEh8KC3NjYWxlZF9zdGVwGAEgASgCUgpzY2FsZWRTdGVwEjkKB3NhbXBsZXIYAiABKAsyGi5nb29zZWFpLlNhbXBsZXJQYXJhbWV0ZXJzSABSB3NhbXBsZXKIAQESPAoIc2NoZWR1bGUYAyABKAsyGy5nb29zZWFpLlNjaGVkdWxlUGFyYW1ldGVyc0gBUghzY2hlZHVsZYgBAUIKCghfc2FtcGxlckILCglfc2NoZWR1bGU=');
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
  ],
  '8': const [
    const {'1': '_height'},
    const {'1': '_width'},
    const {'1': '_samples'},
    const {'1': '_steps'},
    const {'1': '_transform'},
  ],
};

/// Descriptor for `ImageParameters`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List imageParametersDescriptor = $convert.base64Decode('Cg9JbWFnZVBhcmFtZXRlcnMSGwoGaGVpZ2h0GAEgASgESABSBmhlaWdodIgBARIZCgV3aWR0aBgCIAEoBEgBUgV3aWR0aIgBARISCgRzZWVkGAMgAygNUgRzZWVkEh0KB3NhbXBsZXMYBCABKARIAlIHc2FtcGxlc4gBARIZCgVzdGVwcxgFIAEoBEgDUgVzdGVwc4gBARI5Cgl0cmFuc2Zvcm0YBiABKAsyFi5nb29zZWFpLlRyYW5zZm9ybVR5cGVIBFIJdHJhbnNmb3JtiAEBEjYKCnBhcmFtZXRlcnMYByADKAsyFi5nb29zZWFpLlN0ZXBQYXJhbWV0ZXJSCnBhcmFtZXRlcnNCCQoHX2hlaWdodEIICgZfd2lkdGhCCgoIX3NhbXBsZXNCCAoGX3N0ZXBzQgwKCl90cmFuc2Zvcm0=');
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
    const {'1': 'conditioner', '3': 6, '4': 1, '5': 11, '6': '.gooseai.ConditionerParameters', '9': 1, '10': 'conditioner', '17': true},
  ],
  '8': const [
    const {'1': 'params'},
    const {'1': '_conditioner'},
  ],
};

/// Descriptor for `Request`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requestDescriptor = $convert.base64Decode('CgdSZXF1ZXN0EhsKCWVuZ2luZV9pZBgBIAEoCVIIZW5naW5lSWQSHQoKcmVxdWVzdF9pZBgCIAEoCVIJcmVxdWVzdElkEjwKDnJlcXVlc3RlZF90eXBlGAMgASgOMhUuZ29vc2VhaS5BcnRpZmFjdFR5cGVSDXJlcXVlc3RlZFR5cGUSJwoGcHJvbXB0GAQgAygLMg8uZ29vc2VhaS5Qcm9tcHRSBnByb21wdBIwCgVpbWFnZRgFIAEoCzIYLmdvb3NlYWkuSW1hZ2VQYXJhbWV0ZXJzSABSBWltYWdlEj8KCmNsYXNzaWZpZXIYByABKAsyHS5nb29zZWFpLkNsYXNzaWZpZXJQYXJhbWV0ZXJzSABSCmNsYXNzaWZpZXISRQoLY29uZGl0aW9uZXIYBiABKAsyHi5nb29zZWFpLkNvbmRpdGlvbmVyUGFyYW1ldGVyc0gBUgtjb25kaXRpb25lcogBAUIICgZwYXJhbXNCDgoMX2NvbmRpdGlvbmVy');
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
