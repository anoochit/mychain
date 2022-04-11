///
//  Generated code. Do not modify.
//  source: blog/query.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'params.pb.dart' as $2;
import 'blog.pb.dart' as $3;
import '../cosmos/base/query/v1beta1/pagination.pb.dart' as $5;

class QueryParamsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryParamsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'anoochit.mychain.blog'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  QueryParamsRequest._() : super();
  factory QueryParamsRequest() => create();
  factory QueryParamsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryParamsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryParamsRequest clone() => QueryParamsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryParamsRequest copyWith(void Function(QueryParamsRequest) updates) => super.copyWith((message) => updates(message as QueryParamsRequest)) as QueryParamsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryParamsRequest create() => QueryParamsRequest._();
  QueryParamsRequest createEmptyInstance() => create();
  static $pb.PbList<QueryParamsRequest> createRepeated() => $pb.PbList<QueryParamsRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryParamsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryParamsRequest>(create);
  static QueryParamsRequest? _defaultInstance;
}

class QueryParamsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryParamsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'anoochit.mychain.blog'), createEmptyInstance: create)
    ..aOM<$2.Params>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'params', subBuilder: $2.Params.create)
    ..hasRequiredFields = false
  ;

  QueryParamsResponse._() : super();
  factory QueryParamsResponse({
    $2.Params? params,
  }) {
    final _result = create();
    if (params != null) {
      _result.params = params;
    }
    return _result;
  }
  factory QueryParamsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryParamsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryParamsResponse clone() => QueryParamsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryParamsResponse copyWith(void Function(QueryParamsResponse) updates) => super.copyWith((message) => updates(message as QueryParamsResponse)) as QueryParamsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryParamsResponse create() => QueryParamsResponse._();
  QueryParamsResponse createEmptyInstance() => create();
  static $pb.PbList<QueryParamsResponse> createRepeated() => $pb.PbList<QueryParamsResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryParamsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryParamsResponse>(create);
  static QueryParamsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $2.Params get params => $_getN(0);
  @$pb.TagNumber(1)
  set params($2.Params v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasParams() => $_has(0);
  @$pb.TagNumber(1)
  void clearParams() => clearField(1);
  @$pb.TagNumber(1)
  $2.Params ensureParams() => $_ensure(0);
}

class QueryGetBlogRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryGetBlogRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'anoochit.mychain.blog'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  QueryGetBlogRequest._() : super();
  factory QueryGetBlogRequest({
    $fixnum.Int64? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory QueryGetBlogRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryGetBlogRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryGetBlogRequest clone() => QueryGetBlogRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryGetBlogRequest copyWith(void Function(QueryGetBlogRequest) updates) => super.copyWith((message) => updates(message as QueryGetBlogRequest)) as QueryGetBlogRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryGetBlogRequest create() => QueryGetBlogRequest._();
  QueryGetBlogRequest createEmptyInstance() => create();
  static $pb.PbList<QueryGetBlogRequest> createRepeated() => $pb.PbList<QueryGetBlogRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryGetBlogRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryGetBlogRequest>(create);
  static QueryGetBlogRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class QueryGetBlogResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryGetBlogResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'anoochit.mychain.blog'), createEmptyInstance: create)
    ..aOM<$3.Blog>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Blog', protoName: 'Blog', subBuilder: $3.Blog.create)
    ..hasRequiredFields = false
  ;

  QueryGetBlogResponse._() : super();
  factory QueryGetBlogResponse({
    $3.Blog? blog,
  }) {
    final _result = create();
    if (blog != null) {
      _result.blog = blog;
    }
    return _result;
  }
  factory QueryGetBlogResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryGetBlogResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryGetBlogResponse clone() => QueryGetBlogResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryGetBlogResponse copyWith(void Function(QueryGetBlogResponse) updates) => super.copyWith((message) => updates(message as QueryGetBlogResponse)) as QueryGetBlogResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryGetBlogResponse create() => QueryGetBlogResponse._();
  QueryGetBlogResponse createEmptyInstance() => create();
  static $pb.PbList<QueryGetBlogResponse> createRepeated() => $pb.PbList<QueryGetBlogResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryGetBlogResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryGetBlogResponse>(create);
  static QueryGetBlogResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $3.Blog get blog => $_getN(0);
  @$pb.TagNumber(1)
  set blog($3.Blog v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBlog() => $_has(0);
  @$pb.TagNumber(1)
  void clearBlog() => clearField(1);
  @$pb.TagNumber(1)
  $3.Blog ensureBlog() => $_ensure(0);
}

class QueryAllBlogRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryAllBlogRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'anoochit.mychain.blog'), createEmptyInstance: create)
    ..aOM<$5.PageRequest>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pagination', subBuilder: $5.PageRequest.create)
    ..hasRequiredFields = false
  ;

  QueryAllBlogRequest._() : super();
  factory QueryAllBlogRequest({
    $5.PageRequest? pagination,
  }) {
    final _result = create();
    if (pagination != null) {
      _result.pagination = pagination;
    }
    return _result;
  }
  factory QueryAllBlogRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryAllBlogRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryAllBlogRequest clone() => QueryAllBlogRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryAllBlogRequest copyWith(void Function(QueryAllBlogRequest) updates) => super.copyWith((message) => updates(message as QueryAllBlogRequest)) as QueryAllBlogRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryAllBlogRequest create() => QueryAllBlogRequest._();
  QueryAllBlogRequest createEmptyInstance() => create();
  static $pb.PbList<QueryAllBlogRequest> createRepeated() => $pb.PbList<QueryAllBlogRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryAllBlogRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryAllBlogRequest>(create);
  static QueryAllBlogRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $5.PageRequest get pagination => $_getN(0);
  @$pb.TagNumber(1)
  set pagination($5.PageRequest v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPagination() => $_has(0);
  @$pb.TagNumber(1)
  void clearPagination() => clearField(1);
  @$pb.TagNumber(1)
  $5.PageRequest ensurePagination() => $_ensure(0);
}

class QueryAllBlogResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryAllBlogResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'anoochit.mychain.blog'), createEmptyInstance: create)
    ..pc<$3.Blog>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Blog', $pb.PbFieldType.PM, protoName: 'Blog', subBuilder: $3.Blog.create)
    ..aOM<$5.PageResponse>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pagination', subBuilder: $5.PageResponse.create)
    ..hasRequiredFields = false
  ;

  QueryAllBlogResponse._() : super();
  factory QueryAllBlogResponse({
    $core.Iterable<$3.Blog>? blog,
    $5.PageResponse? pagination,
  }) {
    final _result = create();
    if (blog != null) {
      _result.blog.addAll(blog);
    }
    if (pagination != null) {
      _result.pagination = pagination;
    }
    return _result;
  }
  factory QueryAllBlogResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryAllBlogResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryAllBlogResponse clone() => QueryAllBlogResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryAllBlogResponse copyWith(void Function(QueryAllBlogResponse) updates) => super.copyWith((message) => updates(message as QueryAllBlogResponse)) as QueryAllBlogResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryAllBlogResponse create() => QueryAllBlogResponse._();
  QueryAllBlogResponse createEmptyInstance() => create();
  static $pb.PbList<QueryAllBlogResponse> createRepeated() => $pb.PbList<QueryAllBlogResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryAllBlogResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryAllBlogResponse>(create);
  static QueryAllBlogResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$3.Blog> get blog => $_getList(0);

  @$pb.TagNumber(2)
  $5.PageResponse get pagination => $_getN(1);
  @$pb.TagNumber(2)
  set pagination($5.PageResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPagination() => $_has(1);
  @$pb.TagNumber(2)
  void clearPagination() => clearField(2);
  @$pb.TagNumber(2)
  $5.PageResponse ensurePagination() => $_ensure(1);
}

