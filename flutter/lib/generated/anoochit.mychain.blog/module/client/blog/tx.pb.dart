///
//  Generated code. Do not modify.
//  source: blog/tx.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class MsgCreateBlog extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgCreateBlog', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'anoochit.mychain.blog'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'creator')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body')
    ..hasRequiredFields = false
  ;

  MsgCreateBlog._() : super();
  factory MsgCreateBlog({
    $core.String? creator,
    $core.String? title,
    $core.String? body,
  }) {
    final _result = create();
    if (creator != null) {
      _result.creator = creator;
    }
    if (title != null) {
      _result.title = title;
    }
    if (body != null) {
      _result.body = body;
    }
    return _result;
  }
  factory MsgCreateBlog.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgCreateBlog.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgCreateBlog clone() => MsgCreateBlog()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgCreateBlog copyWith(void Function(MsgCreateBlog) updates) => super.copyWith((message) => updates(message as MsgCreateBlog)) as MsgCreateBlog; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgCreateBlog create() => MsgCreateBlog._();
  MsgCreateBlog createEmptyInstance() => create();
  static $pb.PbList<MsgCreateBlog> createRepeated() => $pb.PbList<MsgCreateBlog>();
  @$core.pragma('dart2js:noInline')
  static MsgCreateBlog getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgCreateBlog>(create);
  static MsgCreateBlog? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get creator => $_getSZ(0);
  @$pb.TagNumber(1)
  set creator($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreator() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreator() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get body => $_getSZ(2);
  @$pb.TagNumber(3)
  set body($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBody() => $_has(2);
  @$pb.TagNumber(3)
  void clearBody() => clearField(3);
}

class MsgCreateBlogResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgCreateBlogResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'anoochit.mychain.blog'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  MsgCreateBlogResponse._() : super();
  factory MsgCreateBlogResponse({
    $fixnum.Int64? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory MsgCreateBlogResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgCreateBlogResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgCreateBlogResponse clone() => MsgCreateBlogResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgCreateBlogResponse copyWith(void Function(MsgCreateBlogResponse) updates) => super.copyWith((message) => updates(message as MsgCreateBlogResponse)) as MsgCreateBlogResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgCreateBlogResponse create() => MsgCreateBlogResponse._();
  MsgCreateBlogResponse createEmptyInstance() => create();
  static $pb.PbList<MsgCreateBlogResponse> createRepeated() => $pb.PbList<MsgCreateBlogResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgCreateBlogResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgCreateBlogResponse>(create);
  static MsgCreateBlogResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class MsgUpdateBlog extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgUpdateBlog', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'anoochit.mychain.blog'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'creator')
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'body')
    ..hasRequiredFields = false
  ;

  MsgUpdateBlog._() : super();
  factory MsgUpdateBlog({
    $core.String? creator,
    $fixnum.Int64? id,
    $core.String? title,
    $core.String? body,
  }) {
    final _result = create();
    if (creator != null) {
      _result.creator = creator;
    }
    if (id != null) {
      _result.id = id;
    }
    if (title != null) {
      _result.title = title;
    }
    if (body != null) {
      _result.body = body;
    }
    return _result;
  }
  factory MsgUpdateBlog.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgUpdateBlog.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgUpdateBlog clone() => MsgUpdateBlog()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgUpdateBlog copyWith(void Function(MsgUpdateBlog) updates) => super.copyWith((message) => updates(message as MsgUpdateBlog)) as MsgUpdateBlog; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgUpdateBlog create() => MsgUpdateBlog._();
  MsgUpdateBlog createEmptyInstance() => create();
  static $pb.PbList<MsgUpdateBlog> createRepeated() => $pb.PbList<MsgUpdateBlog>();
  @$core.pragma('dart2js:noInline')
  static MsgUpdateBlog getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgUpdateBlog>(create);
  static MsgUpdateBlog? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get creator => $_getSZ(0);
  @$pb.TagNumber(1)
  set creator($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreator() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreator() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get id => $_getI64(1);
  @$pb.TagNumber(2)
  set id($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get title => $_getSZ(2);
  @$pb.TagNumber(3)
  set title($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTitle() => $_has(2);
  @$pb.TagNumber(3)
  void clearTitle() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get body => $_getSZ(3);
  @$pb.TagNumber(4)
  set body($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBody() => $_has(3);
  @$pb.TagNumber(4)
  void clearBody() => clearField(4);
}

class MsgUpdateBlogResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgUpdateBlogResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'anoochit.mychain.blog'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  MsgUpdateBlogResponse._() : super();
  factory MsgUpdateBlogResponse() => create();
  factory MsgUpdateBlogResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgUpdateBlogResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgUpdateBlogResponse clone() => MsgUpdateBlogResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgUpdateBlogResponse copyWith(void Function(MsgUpdateBlogResponse) updates) => super.copyWith((message) => updates(message as MsgUpdateBlogResponse)) as MsgUpdateBlogResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgUpdateBlogResponse create() => MsgUpdateBlogResponse._();
  MsgUpdateBlogResponse createEmptyInstance() => create();
  static $pb.PbList<MsgUpdateBlogResponse> createRepeated() => $pb.PbList<MsgUpdateBlogResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgUpdateBlogResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgUpdateBlogResponse>(create);
  static MsgUpdateBlogResponse? _defaultInstance;
}

class MsgDeleteBlog extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgDeleteBlog', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'anoochit.mychain.blog'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'creator')
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  MsgDeleteBlog._() : super();
  factory MsgDeleteBlog({
    $core.String? creator,
    $fixnum.Int64? id,
  }) {
    final _result = create();
    if (creator != null) {
      _result.creator = creator;
    }
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory MsgDeleteBlog.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgDeleteBlog.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgDeleteBlog clone() => MsgDeleteBlog()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgDeleteBlog copyWith(void Function(MsgDeleteBlog) updates) => super.copyWith((message) => updates(message as MsgDeleteBlog)) as MsgDeleteBlog; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgDeleteBlog create() => MsgDeleteBlog._();
  MsgDeleteBlog createEmptyInstance() => create();
  static $pb.PbList<MsgDeleteBlog> createRepeated() => $pb.PbList<MsgDeleteBlog>();
  @$core.pragma('dart2js:noInline')
  static MsgDeleteBlog getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgDeleteBlog>(create);
  static MsgDeleteBlog? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get creator => $_getSZ(0);
  @$pb.TagNumber(1)
  set creator($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreator() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreator() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get id => $_getI64(1);
  @$pb.TagNumber(2)
  set id($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);
}

class MsgDeleteBlogResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgDeleteBlogResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'anoochit.mychain.blog'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  MsgDeleteBlogResponse._() : super();
  factory MsgDeleteBlogResponse() => create();
  factory MsgDeleteBlogResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgDeleteBlogResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgDeleteBlogResponse clone() => MsgDeleteBlogResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgDeleteBlogResponse copyWith(void Function(MsgDeleteBlogResponse) updates) => super.copyWith((message) => updates(message as MsgDeleteBlogResponse)) as MsgDeleteBlogResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgDeleteBlogResponse create() => MsgDeleteBlogResponse._();
  MsgDeleteBlogResponse createEmptyInstance() => create();
  static $pb.PbList<MsgDeleteBlogResponse> createRepeated() => $pb.PbList<MsgDeleteBlogResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgDeleteBlogResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgDeleteBlogResponse>(create);
  static MsgDeleteBlogResponse? _defaultInstance;
}

