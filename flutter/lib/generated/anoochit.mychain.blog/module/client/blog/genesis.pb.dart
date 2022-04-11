///
//  Generated code. Do not modify.
//  source: blog/genesis.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'params.pb.dart' as $2;
import 'blog.pb.dart' as $3;

class GenesisState extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GenesisState', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'anoochit.mychain.blog'), createEmptyInstance: create)
    ..aOM<$2.Params>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'params', subBuilder: $2.Params.create)
    ..pc<$3.Blog>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'blogList', $pb.PbFieldType.PM, protoName: 'blogList', subBuilder: $3.Blog.create)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'blogCount', $pb.PbFieldType.OU6, protoName: 'blogCount', defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  GenesisState._() : super();
  factory GenesisState({
    $2.Params? params,
    $core.Iterable<$3.Blog>? blogList,
    $fixnum.Int64? blogCount,
  }) {
    final _result = create();
    if (params != null) {
      _result.params = params;
    }
    if (blogList != null) {
      _result.blogList.addAll(blogList);
    }
    if (blogCount != null) {
      _result.blogCount = blogCount;
    }
    return _result;
  }
  factory GenesisState.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GenesisState.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GenesisState clone() => GenesisState()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GenesisState copyWith(void Function(GenesisState) updates) => super.copyWith((message) => updates(message as GenesisState)) as GenesisState; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GenesisState create() => GenesisState._();
  GenesisState createEmptyInstance() => create();
  static $pb.PbList<GenesisState> createRepeated() => $pb.PbList<GenesisState>();
  @$core.pragma('dart2js:noInline')
  static GenesisState getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GenesisState>(create);
  static GenesisState? _defaultInstance;

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

  @$pb.TagNumber(2)
  $core.List<$3.Blog> get blogList => $_getList(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get blogCount => $_getI64(2);
  @$pb.TagNumber(3)
  set blogCount($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBlogCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearBlogCount() => clearField(3);
}

