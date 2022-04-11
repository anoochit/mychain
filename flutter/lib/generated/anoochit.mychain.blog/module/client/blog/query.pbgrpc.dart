///
//  Generated code. Do not modify.
//  source: blog/query.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'query.pb.dart' as $0;
export 'query.pb.dart';

class QueryClient extends $grpc.Client {
  static final _$params =
      $grpc.ClientMethod<$0.QueryParamsRequest, $0.QueryParamsResponse>(
          '/anoochit.mychain.blog.Query/Params',
          ($0.QueryParamsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.QueryParamsResponse.fromBuffer(value));
  static final _$blog =
      $grpc.ClientMethod<$0.QueryGetBlogRequest, $0.QueryGetBlogResponse>(
          '/anoochit.mychain.blog.Query/Blog',
          ($0.QueryGetBlogRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.QueryGetBlogResponse.fromBuffer(value));
  static final _$blogAll =
      $grpc.ClientMethod<$0.QueryAllBlogRequest, $0.QueryAllBlogResponse>(
          '/anoochit.mychain.blog.Query/BlogAll',
          ($0.QueryAllBlogRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.QueryAllBlogResponse.fromBuffer(value));

  QueryClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.QueryParamsResponse> params(
      $0.QueryParamsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$params, request, options: options);
  }

  $grpc.ResponseFuture<$0.QueryGetBlogResponse> blog(
      $0.QueryGetBlogRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$blog, request, options: options);
  }

  $grpc.ResponseFuture<$0.QueryAllBlogResponse> blogAll(
      $0.QueryAllBlogRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$blogAll, request, options: options);
  }
}

abstract class QueryServiceBase extends $grpc.Service {
  $core.String get $name => 'anoochit.mychain.blog.Query';

  QueryServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.QueryParamsRequest, $0.QueryParamsResponse>(
            'Params',
            params_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.QueryParamsRequest.fromBuffer(value),
            ($0.QueryParamsResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.QueryGetBlogRequest, $0.QueryGetBlogResponse>(
            'Blog',
            blog_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.QueryGetBlogRequest.fromBuffer(value),
            ($0.QueryGetBlogResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.QueryAllBlogRequest, $0.QueryAllBlogResponse>(
            'BlogAll',
            blogAll_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.QueryAllBlogRequest.fromBuffer(value),
            ($0.QueryAllBlogResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.QueryParamsResponse> params_Pre($grpc.ServiceCall call,
      $async.Future<$0.QueryParamsRequest> request) async {
    return params(call, await request);
  }

  $async.Future<$0.QueryGetBlogResponse> blog_Pre($grpc.ServiceCall call,
      $async.Future<$0.QueryGetBlogRequest> request) async {
    return blog(call, await request);
  }

  $async.Future<$0.QueryAllBlogResponse> blogAll_Pre($grpc.ServiceCall call,
      $async.Future<$0.QueryAllBlogRequest> request) async {
    return blogAll(call, await request);
  }

  $async.Future<$0.QueryParamsResponse> params(
      $grpc.ServiceCall call, $0.QueryParamsRequest request);
  $async.Future<$0.QueryGetBlogResponse> blog(
      $grpc.ServiceCall call, $0.QueryGetBlogRequest request);
  $async.Future<$0.QueryAllBlogResponse> blogAll(
      $grpc.ServiceCall call, $0.QueryAllBlogRequest request);
}
