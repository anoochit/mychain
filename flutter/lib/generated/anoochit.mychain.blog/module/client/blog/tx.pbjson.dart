///
//  Generated code. Do not modify.
//  source: blog/tx.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use msgCreateBlogDescriptor instead')
const MsgCreateBlog$json = const {
  '1': 'MsgCreateBlog',
  '2': const [
    const {'1': 'creator', '3': 1, '4': 1, '5': 9, '10': 'creator'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'body', '3': 3, '4': 1, '5': 9, '10': 'body'},
  ],
};

/// Descriptor for `MsgCreateBlog`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgCreateBlogDescriptor = $convert.base64Decode('Cg1Nc2dDcmVhdGVCbG9nEhgKB2NyZWF0b3IYASABKAlSB2NyZWF0b3ISFAoFdGl0bGUYAiABKAlSBXRpdGxlEhIKBGJvZHkYAyABKAlSBGJvZHk=');
@$core.Deprecated('Use msgCreateBlogResponseDescriptor instead')
const MsgCreateBlogResponse$json = const {
  '1': 'MsgCreateBlogResponse',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
  ],
};

/// Descriptor for `MsgCreateBlogResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgCreateBlogResponseDescriptor = $convert.base64Decode('ChVNc2dDcmVhdGVCbG9nUmVzcG9uc2USDgoCaWQYASABKARSAmlk');
@$core.Deprecated('Use msgUpdateBlogDescriptor instead')
const MsgUpdateBlog$json = const {
  '1': 'MsgUpdateBlog',
  '2': const [
    const {'1': 'creator', '3': 1, '4': 1, '5': 9, '10': 'creator'},
    const {'1': 'id', '3': 2, '4': 1, '5': 4, '10': 'id'},
    const {'1': 'title', '3': 3, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'body', '3': 4, '4': 1, '5': 9, '10': 'body'},
  ],
};

/// Descriptor for `MsgUpdateBlog`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgUpdateBlogDescriptor = $convert.base64Decode('Cg1Nc2dVcGRhdGVCbG9nEhgKB2NyZWF0b3IYASABKAlSB2NyZWF0b3ISDgoCaWQYAiABKARSAmlkEhQKBXRpdGxlGAMgASgJUgV0aXRsZRISCgRib2R5GAQgASgJUgRib2R5');
@$core.Deprecated('Use msgUpdateBlogResponseDescriptor instead')
const MsgUpdateBlogResponse$json = const {
  '1': 'MsgUpdateBlogResponse',
};

/// Descriptor for `MsgUpdateBlogResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgUpdateBlogResponseDescriptor = $convert.base64Decode('ChVNc2dVcGRhdGVCbG9nUmVzcG9uc2U=');
@$core.Deprecated('Use msgDeleteBlogDescriptor instead')
const MsgDeleteBlog$json = const {
  '1': 'MsgDeleteBlog',
  '2': const [
    const {'1': 'creator', '3': 1, '4': 1, '5': 9, '10': 'creator'},
    const {'1': 'id', '3': 2, '4': 1, '5': 4, '10': 'id'},
  ],
};

/// Descriptor for `MsgDeleteBlog`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgDeleteBlogDescriptor = $convert.base64Decode('Cg1Nc2dEZWxldGVCbG9nEhgKB2NyZWF0b3IYASABKAlSB2NyZWF0b3ISDgoCaWQYAiABKARSAmlk');
@$core.Deprecated('Use msgDeleteBlogResponseDescriptor instead')
const MsgDeleteBlogResponse$json = const {
  '1': 'MsgDeleteBlogResponse',
};

/// Descriptor for `MsgDeleteBlogResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgDeleteBlogResponseDescriptor = $convert.base64Decode('ChVNc2dEZWxldGVCbG9nUmVzcG9uc2U=');
