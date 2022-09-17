///
//  Generated code. Do not modify.
//  source: generation.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'generation.pb.dart' as $0;
export 'generation.pb.dart';

class GenerationServiceClient extends $grpc.Client {
  static final _$generate = $grpc.ClientMethod<$0.Request, $0.Answer>(
      '/gooseai.GenerationService/Generate',
      ($0.Request value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Answer.fromBuffer(value));
  static final _$chainGenerate = $grpc.ClientMethod<$0.ChainRequest, $0.Answer>(
      '/gooseai.GenerationService/ChainGenerate',
      ($0.ChainRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Answer.fromBuffer(value));

  GenerationServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$0.Answer> generate($0.Request request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$generate, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$0.Answer> chainGenerate($0.ChainRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$chainGenerate, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class GenerationServiceBase extends $grpc.Service {
  $core.String get $name => 'gooseai.GenerationService';

  GenerationServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Request, $0.Answer>(
        'Generate',
        generate_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.Request.fromBuffer(value),
        ($0.Answer value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ChainRequest, $0.Answer>(
        'ChainGenerate',
        chainGenerate_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.ChainRequest.fromBuffer(value),
        ($0.Answer value) => value.writeToBuffer()));
  }

  $async.Stream<$0.Answer> generate_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Request> request) async* {
    yield* generate(call, await request);
  }

  $async.Stream<$0.Answer> chainGenerate_Pre(
      $grpc.ServiceCall call, $async.Future<$0.ChainRequest> request) async* {
    yield* chainGenerate(call, await request);
  }

  $async.Stream<$0.Answer> generate($grpc.ServiceCall call, $0.Request request);
  $async.Stream<$0.Answer> chainGenerate(
      $grpc.ServiceCall call, $0.ChainRequest request);
}
