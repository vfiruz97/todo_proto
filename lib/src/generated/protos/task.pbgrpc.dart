// This is a generated file - do not edit.
//
// Generated from protos/task.proto.

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
import 'task.pb.dart' as $0;

export 'task.pb.dart';

/// The Task service definition.
@$pb.GrpcServiceName('todo.TaskService')
class TaskServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  TaskServiceClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$0.Task> create(
    $0.CreateTaskRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$0.Task> getById(
    $0.GetTaskRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getById, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListTasksResponse> getAll(
    $1.Empty request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getAll, request, options: options);
  }

  $grpc.ResponseFuture<$0.Task> update(
    $0.UpdateTaskRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$update, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> delete(
    $0.DeleteTaskRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$delete, request, options: options);
  }

  // method descriptors

  static final _$create = $grpc.ClientMethod<$0.CreateTaskRequest, $0.Task>(
      '/todo.TaskService/Create',
      ($0.CreateTaskRequest value) => value.writeToBuffer(),
      $0.Task.fromBuffer);
  static final _$getById = $grpc.ClientMethod<$0.GetTaskRequest, $0.Task>(
      '/todo.TaskService/GetById',
      ($0.GetTaskRequest value) => value.writeToBuffer(),
      $0.Task.fromBuffer);
  static final _$getAll = $grpc.ClientMethod<$1.Empty, $0.ListTasksResponse>(
      '/todo.TaskService/GetAll',
      ($1.Empty value) => value.writeToBuffer(),
      $0.ListTasksResponse.fromBuffer);
  static final _$update = $grpc.ClientMethod<$0.UpdateTaskRequest, $0.Task>(
      '/todo.TaskService/Update',
      ($0.UpdateTaskRequest value) => value.writeToBuffer(),
      $0.Task.fromBuffer);
  static final _$delete = $grpc.ClientMethod<$0.DeleteTaskRequest, $1.Empty>(
      '/todo.TaskService/Delete',
      ($0.DeleteTaskRequest value) => value.writeToBuffer(),
      $1.Empty.fromBuffer);
}

@$pb.GrpcServiceName('todo.TaskService')
abstract class TaskServiceBase extends $grpc.Service {
  $core.String get $name => 'todo.TaskService';

  TaskServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CreateTaskRequest, $0.Task>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateTaskRequest.fromBuffer(value),
        ($0.Task value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetTaskRequest, $0.Task>(
        'GetById',
        getById_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetTaskRequest.fromBuffer(value),
        ($0.Task value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $0.ListTasksResponse>(
        'GetAll',
        getAll_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($0.ListTasksResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateTaskRequest, $0.Task>(
        'Update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateTaskRequest.fromBuffer(value),
        ($0.Task value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteTaskRequest, $1.Empty>(
        'Delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeleteTaskRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$0.Task> create_Pre($grpc.ServiceCall $call,
      $async.Future<$0.CreateTaskRequest> $request) async {
    return create($call, await $request);
  }

  $async.Future<$0.Task> create(
      $grpc.ServiceCall call, $0.CreateTaskRequest request);

  $async.Future<$0.Task> getById_Pre($grpc.ServiceCall $call,
      $async.Future<$0.GetTaskRequest> $request) async {
    return getById($call, await $request);
  }

  $async.Future<$0.Task> getById(
      $grpc.ServiceCall call, $0.GetTaskRequest request);

  $async.Future<$0.ListTasksResponse> getAll_Pre(
      $grpc.ServiceCall $call, $async.Future<$1.Empty> $request) async {
    return getAll($call, await $request);
  }

  $async.Future<$0.ListTasksResponse> getAll(
      $grpc.ServiceCall call, $1.Empty request);

  $async.Future<$0.Task> update_Pre($grpc.ServiceCall $call,
      $async.Future<$0.UpdateTaskRequest> $request) async {
    return update($call, await $request);
  }

  $async.Future<$0.Task> update(
      $grpc.ServiceCall call, $0.UpdateTaskRequest request);

  $async.Future<$1.Empty> delete_Pre($grpc.ServiceCall $call,
      $async.Future<$0.DeleteTaskRequest> $request) async {
    return delete($call, await $request);
  }

  $async.Future<$1.Empty> delete(
      $grpc.ServiceCall call, $0.DeleteTaskRequest request);
}
