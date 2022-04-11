///
//  Generated code. Do not modify.
//  source: blog/query.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use queryParamsRequestDescriptor instead')
const QueryParamsRequest$json = const {
  '1': 'QueryParamsRequest',
};

/// Descriptor for `QueryParamsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryParamsRequestDescriptor = $convert.base64Decode('ChJRdWVyeVBhcmFtc1JlcXVlc3Q=');
@$core.Deprecated('Use queryParamsResponseDescriptor instead')
const QueryParamsResponse$json = const {
  '1': 'QueryParamsResponse',
  '2': const [
    const {'1': 'params', '3': 1, '4': 1, '5': 11, '6': '.anoochit.mychain.blog.Params', '8': const {}, '10': 'params'},
  ],
};

/// Descriptor for `QueryParamsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryParamsResponseDescriptor = $convert.base64Decode('ChNRdWVyeVBhcmFtc1Jlc3BvbnNlEjsKBnBhcmFtcxgBIAEoCzIdLmFub29jaGl0Lm15Y2hhaW4uYmxvZy5QYXJhbXNCBMjeHwBSBnBhcmFtcw==');
@$core.Deprecated('Use queryGetBlogRequestDescriptor instead')
const QueryGetBlogRequest$json = const {
  '1': 'QueryGetBlogRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
  ],
};

/// Descriptor for `QueryGetBlogRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryGetBlogRequestDescriptor = $convert.base64Decode('ChNRdWVyeUdldEJsb2dSZXF1ZXN0Eg4KAmlkGAEgASgEUgJpZA==');
@$core.Deprecated('Use queryGetBlogResponseDescriptor instead')
const QueryGetBlogResponse$json = const {
  '1': 'QueryGetBlogResponse',
  '2': const [
    const {'1': 'Blog', '3': 1, '4': 1, '5': 11, '6': '.anoochit.mychain.blog.Blog', '8': const {}, '10': 'Blog'},
  ],
};

/// Descriptor for `QueryGetBlogResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryGetBlogResponseDescriptor = $convert.base64Decode('ChRRdWVyeUdldEJsb2dSZXNwb25zZRI1CgRCbG9nGAEgASgLMhsuYW5vb2NoaXQubXljaGFpbi5ibG9nLkJsb2dCBMjeHwBSBEJsb2c=');
@$core.Deprecated('Use queryAllBlogRequestDescriptor instead')
const QueryAllBlogRequest$json = const {
  '1': 'QueryAllBlogRequest',
  '2': const [
    const {'1': 'pagination', '3': 1, '4': 1, '5': 11, '6': '.cosmos.base.query.v1beta1.PageRequest', '10': 'pagination'},
  ],
};

/// Descriptor for `QueryAllBlogRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryAllBlogRequestDescriptor = $convert.base64Decode('ChNRdWVyeUFsbEJsb2dSZXF1ZXN0EkYKCnBhZ2luYXRpb24YASABKAsyJi5jb3Ntb3MuYmFzZS5xdWVyeS52MWJldGExLlBhZ2VSZXF1ZXN0UgpwYWdpbmF0aW9u');
@$core.Deprecated('Use queryAllBlogResponseDescriptor instead')
const QueryAllBlogResponse$json = const {
  '1': 'QueryAllBlogResponse',
  '2': const [
    const {'1': 'Blog', '3': 1, '4': 3, '5': 11, '6': '.anoochit.mychain.blog.Blog', '8': const {}, '10': 'Blog'},
    const {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.cosmos.base.query.v1beta1.PageResponse', '10': 'pagination'},
  ],
};

/// Descriptor for `QueryAllBlogResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryAllBlogResponseDescriptor = $convert.base64Decode('ChRRdWVyeUFsbEJsb2dSZXNwb25zZRI1CgRCbG9nGAEgAygLMhsuYW5vb2NoaXQubXljaGFpbi5ibG9nLkJsb2dCBMjeHwBSBEJsb2cSRwoKcGFnaW5hdGlvbhgCIAEoCzInLmNvc21vcy5iYXNlLnF1ZXJ5LnYxYmV0YTEuUGFnZVJlc3BvbnNlUgpwYWdpbmF0aW9u');
