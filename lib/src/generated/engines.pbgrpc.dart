///
//  Generated code. Do not modify.
//  source: engines.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'engines.pb.dart' as $0;
export 'engines.pb.dart';

class EnginesServiceClient extends $grpc.Client {
  static final _$listEngines =
      $grpc.ClientMethod<$0.ListEnginesRequest, $0.Engines>(
          '/gooseai.EnginesService/ListEngines',
          ($0.ListEnginesRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Engines.fromBuffer(value));

  EnginesServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.Engines> listEngines($0.ListEnginesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listEngines, request, options: options);
  }
}

abstract class EnginesServiceBase extends $grpc.Service {
  $core.String get $name => 'gooseai.EnginesService';

  EnginesServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ListEnginesRequest, $0.Engines>(
        'ListEngines',
        listEngines_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ListEnginesRequest.fromBuffer(value),
        ($0.Engines value) => value.writeToBuffer()));
  }

  $async.Future<$0.Engines> listEngines_Pre($grpc.ServiceCall call,
      $async.Future<$0.ListEnginesRequest> request) async {
    return listEngines(call, await request);
  }

  $async.Future<$0.Engines> listEngines(
      $grpc.ServiceCall call, $0.ListEnginesRequest request);
}
