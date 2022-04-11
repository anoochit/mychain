///
//  Generated code. Do not modify.
//  source: blog/tx.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'tx.pb.dart' as $1;
export 'tx.pb.dart';

class MsgClient extends $grpc.Client {
  static final _$createBlog =
      $grpc.ClientMethod<$1.MsgCreateBlog, $1.MsgCreateBlogResponse>(
          '/anoochit.mychain.blog.Msg/CreateBlog',
          ($1.MsgCreateBlog value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.MsgCreateBlogResponse.fromBuffer(value));
  static final _$updateBlog =
      $grpc.ClientMethod<$1.MsgUpdateBlog, $1.MsgUpdateBlogResponse>(
          '/anoochit.mychain.blog.Msg/UpdateBlog',
          ($1.MsgUpdateBlog value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.MsgUpdateBlogResponse.fromBuffer(value));
  static final _$deleteBlog =
      $grpc.ClientMethod<$1.MsgDeleteBlog, $1.MsgDeleteBlogResponse>(
          '/anoochit.mychain.blog.Msg/DeleteBlog',
          ($1.MsgDeleteBlog value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.MsgDeleteBlogResponse.fromBuffer(value));

  MsgClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.MsgCreateBlogResponse> createBlog(
      $1.MsgCreateBlog request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createBlog, request, options: options);
  }

  $grpc.ResponseFuture<$1.MsgUpdateBlogResponse> updateBlog(
      $1.MsgUpdateBlog request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateBlog, request, options: options);
  }

  $grpc.ResponseFuture<$1.MsgDeleteBlogResponse> deleteBlog(
      $1.MsgDeleteBlog request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteBlog, request, options: options);
  }
}

abstract class MsgServiceBase extends $grpc.Service {
  $core.String get $name => 'anoochit.mychain.blog.Msg';

  MsgServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.MsgCreateBlog, $1.MsgCreateBlogResponse>(
        'CreateBlog',
        createBlog_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.MsgCreateBlog.fromBuffer(value),
        ($1.MsgCreateBlogResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.MsgUpdateBlog, $1.MsgUpdateBlogResponse>(
        'UpdateBlog',
        updateBlog_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.MsgUpdateBlog.fromBuffer(value),
        ($1.MsgUpdateBlogResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.MsgDeleteBlog, $1.MsgDeleteBlogResponse>(
        'DeleteBlog',
        deleteBlog_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.MsgDeleteBlog.fromBuffer(value),
        ($1.MsgDeleteBlogResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.MsgCreateBlogResponse> createBlog_Pre(
      $grpc.ServiceCall call, $async.Future<$1.MsgCreateBlog> request) async {
    return createBlog(call, await request);
  }

  $async.Future<$1.MsgUpdateBlogResponse> updateBlog_Pre(
      $grpc.ServiceCall call, $async.Future<$1.MsgUpdateBlog> request) async {
    return updateBlog(call, await request);
  }

  $async.Future<$1.MsgDeleteBlogResponse> deleteBlog_Pre(
      $grpc.ServiceCall call, $async.Future<$1.MsgDeleteBlog> request) async {
    return deleteBlog(call, await request);
  }

  $async.Future<$1.MsgCreateBlogResponse> createBlog(
      $grpc.ServiceCall call, $1.MsgCreateBlog request);
  $async.Future<$1.MsgUpdateBlogResponse> updateBlog(
      $grpc.ServiceCall call, $1.MsgUpdateBlog request);
  $async.Future<$1.MsgDeleteBlogResponse> deleteBlog(
      $grpc.ServiceCall call, $1.MsgDeleteBlog request);
}
