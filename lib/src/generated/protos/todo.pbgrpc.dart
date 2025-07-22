// This is a generated file - do not edit.
//
// Generated from protos/todo.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import '../google/protobuf/empty.pb.dart' as $1;
import 'todo.pb.dart' as $0;

export 'todo.pb.dart';

/// The Todo service definition.
@$pb.GrpcServiceName('todo.TodoService')
class TodoServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  TodoServiceClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$0.Todo> create(
    $0.CreateTodoRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$0.Todo> getById(
    $0.GetTodoRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getById, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListTodosResponse> getAll(
    $1.Empty request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getAll, request, options: options);
  }

  $grpc.ResponseFuture<$0.Todo> update(
    $0.UpdateTodoRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$update, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> delete(
    $0.DeleteTodoRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$delete, request, options: options);
  }

  // method descriptors

  static final _$create = $grpc.ClientMethod<$0.CreateTodoRequest, $0.Todo>(
      '/todo.TodoService/Create',
      ($0.CreateTodoRequest value) => value.writeToBuffer(),
      $0.Todo.fromBuffer);
  static final _$getById = $grpc.ClientMethod<$0.GetTodoRequest, $0.Todo>(
      '/todo.TodoService/GetById',
      ($0.GetTodoRequest value) => value.writeToBuffer(),
      $0.Todo.fromBuffer);
  static final _$getAll = $grpc.ClientMethod<$1.Empty, $0.ListTodosResponse>(
      '/todo.TodoService/GetAll',
      ($1.Empty value) => value.writeToBuffer(),
      $0.ListTodosResponse.fromBuffer);
  static final _$update = $grpc.ClientMethod<$0.UpdateTodoRequest, $0.Todo>(
      '/todo.TodoService/Update',
      ($0.UpdateTodoRequest value) => value.writeToBuffer(),
      $0.Todo.fromBuffer);
  static final _$delete = $grpc.ClientMethod<$0.DeleteTodoRequest, $1.Empty>(
      '/todo.TodoService/Delete',
      ($0.DeleteTodoRequest value) => value.writeToBuffer(),
      $1.Empty.fromBuffer);
}

@$pb.GrpcServiceName('todo.TodoService')
abstract class TodoServiceBase extends $grpc.Service {
  $core.String get $name => 'todo.TodoService';

  TodoServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CreateTodoRequest, $0.Todo>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateTodoRequest.fromBuffer(value),
        ($0.Todo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetTodoRequest, $0.Todo>(
        'GetById',
        getById_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetTodoRequest.fromBuffer(value),
        ($0.Todo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $0.ListTodosResponse>(
        'GetAll',
        getAll_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($0.ListTodosResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateTodoRequest, $0.Todo>(
        'Update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateTodoRequest.fromBuffer(value),
        ($0.Todo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteTodoRequest, $1.Empty>(
        'Delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeleteTodoRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$0.Todo> create_Pre($grpc.ServiceCall $call,
      $async.Future<$0.CreateTodoRequest> $request) async {
    return create($call, await $request);
  }

  $async.Future<$0.Todo> create(
      $grpc.ServiceCall call, $0.CreateTodoRequest request);

  $async.Future<$0.Todo> getById_Pre($grpc.ServiceCall $call,
      $async.Future<$0.GetTodoRequest> $request) async {
    return getById($call, await $request);
  }

  $async.Future<$0.Todo> getById(
      $grpc.ServiceCall call, $0.GetTodoRequest request);

  $async.Future<$0.ListTodosResponse> getAll_Pre(
      $grpc.ServiceCall $call, $async.Future<$1.Empty> $request) async {
    return getAll($call, await $request);
  }

  $async.Future<$0.ListTodosResponse> getAll(
      $grpc.ServiceCall call, $1.Empty request);

  $async.Future<$0.Todo> update_Pre($grpc.ServiceCall $call,
      $async.Future<$0.UpdateTodoRequest> $request) async {
    return update($call, await $request);
  }

  $async.Future<$0.Todo> update(
      $grpc.ServiceCall call, $0.UpdateTodoRequest request);

  $async.Future<$1.Empty> delete_Pre($grpc.ServiceCall $call,
      $async.Future<$0.DeleteTodoRequest> $request) async {
    return delete($call, await $request);
  }

  $async.Future<$1.Empty> delete(
      $grpc.ServiceCall call, $0.DeleteTodoRequest request);
}
