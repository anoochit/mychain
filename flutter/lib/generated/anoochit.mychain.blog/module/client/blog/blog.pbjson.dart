///
//  Generated code. Do not modify.
//  source: blog/blog.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use blogDescriptor instead')
const Blog$json = const {
  '1': 'Blog',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'body', '3': 3, '4': 1, '5': 9, '10': 'body'},
    const {'1': 'creator', '3': 4, '4': 1, '5': 9, '10': 'creator'},
  ],
};

/// Descriptor for `Blog`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List blogDescriptor = $convert.base64Decode('CgRCbG9nEg4KAmlkGAEgASgEUgJpZBIUCgV0aXRsZRgCIAEoCVIFdGl0bGUSEgoEYm9keRgDIAEoCVIEYm9keRIYCgdjcmVhdG9yGAQgASgJUgdjcmVhdG9y');
