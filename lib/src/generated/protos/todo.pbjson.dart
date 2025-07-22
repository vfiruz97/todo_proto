// This is a generated file - do not edit.
//
// Generated from protos/todo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use todoDescriptor instead')
const Todo$json = {
  '1': 'Todo',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'is_completed', '3': 4, '4': 1, '5': 8, '10': 'isCompleted'},
    {'1': 'created_at', '3': 5, '4': 1, '5': 3, '10': 'createdAt'},
    {'1': 'updated_at', '3': 6, '4': 1, '5': 3, '10': 'updatedAt'},
  ],
};

/// Descriptor for `Todo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List todoDescriptor = $convert.base64Decode(
    'CgRUb2RvEg4KAmlkGAEgASgFUgJpZBIUCgV0aXRsZRgCIAEoCVIFdGl0bGUSIAoLZGVzY3JpcH'
    'Rpb24YAyABKAlSC2Rlc2NyaXB0aW9uEiEKDGlzX2NvbXBsZXRlZBgEIAEoCFILaXNDb21wbGV0'
    'ZWQSHQoKY3JlYXRlZF9hdBgFIAEoA1IJY3JlYXRlZEF0Eh0KCnVwZGF0ZWRfYXQYBiABKANSCX'
    'VwZGF0ZWRBdA==');

@$core.Deprecated('Use createTodoRequestDescriptor instead')
const CreateTodoRequest$json = {
  '1': 'CreateTodoRequest',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
  ],
};

/// Descriptor for `CreateTodoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createTodoRequestDescriptor = $convert.base64Decode(
    'ChFDcmVhdGVUb2RvUmVxdWVzdBIUCgV0aXRsZRgBIAEoCVIFdGl0bGUSIAoLZGVzY3JpcHRpb2'
    '4YAiABKAlSC2Rlc2NyaXB0aW9u');

@$core.Deprecated('Use getTodoRequestDescriptor instead')
const GetTodoRequest$json = {
  '1': 'GetTodoRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `GetTodoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTodoRequestDescriptor =
    $convert.base64Decode('Cg5HZXRUb2RvUmVxdWVzdBIOCgJpZBgBIAEoBVICaWQ=');

@$core.Deprecated('Use updateTodoRequestDescriptor instead')
const UpdateTodoRequest$json = {
  '1': 'UpdateTodoRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'is_completed', '3': 4, '4': 1, '5': 8, '10': 'isCompleted'},
  ],
};

/// Descriptor for `UpdateTodoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateTodoRequestDescriptor = $convert.base64Decode(
    'ChFVcGRhdGVUb2RvUmVxdWVzdBIOCgJpZBgBIAEoBVICaWQSFAoFdGl0bGUYAiABKAlSBXRpdG'
    'xlEiAKC2Rlc2NyaXB0aW9uGAMgASgJUgtkZXNjcmlwdGlvbhIhCgxpc19jb21wbGV0ZWQYBCAB'
    'KAhSC2lzQ29tcGxldGVk');

@$core.Deprecated('Use deleteTodoRequestDescriptor instead')
const DeleteTodoRequest$json = {
  '1': 'DeleteTodoRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `DeleteTodoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteTodoRequestDescriptor =
    $convert.base64Decode('ChFEZWxldGVUb2RvUmVxdWVzdBIOCgJpZBgBIAEoBVICaWQ=');

@$core.Deprecated('Use listTodosResponseDescriptor instead')
const ListTodosResponse$json = {
  '1': 'ListTodosResponse',
  '2': [
    {'1': 'todos', '3': 1, '4': 3, '5': 11, '6': '.todo.Todo', '10': 'todos'},
  ],
};

/// Descriptor for `ListTodosResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listTodosResponseDescriptor = $convert.base64Decode(
    'ChFMaXN0VG9kb3NSZXNwb25zZRIgCgV0b2RvcxgBIAMoCzIKLnRvZG8uVG9kb1IFdG9kb3M=');

@$core.Deprecated('Use errorResponseDescriptor instead')
const ErrorResponse$json = {
  '1': 'ErrorResponse',
  '2': [
    {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
    {'1': 'code', '3': 2, '4': 1, '5': 5, '10': 'code'},
  ],
};

/// Descriptor for `ErrorResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List errorResponseDescriptor = $convert.base64Decode(
    'Cg1FcnJvclJlc3BvbnNlEhgKB21lc3NhZ2UYASABKAlSB21lc3NhZ2USEgoEY29kZRgCIAEoBV'
    'IEY29kZQ==');
