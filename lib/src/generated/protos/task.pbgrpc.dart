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

  $grpc.ResponseFuture<$0.Task> createTask(
    $0.CreateTaskRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$createTask, request, options: options);
  }

  $grpc.ResponseFuture<$0.Task> getTask(
    $0.GetTaskRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getTask, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListTasksResponse> listTasks(
    $1.Empty request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$listTasks, request, options: options);
  }

  $grpc.ResponseFuture<$0.Task> updateTask(
    $0.UpdateTaskRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$updateTask, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> deleteTask(
    $0.DeleteTaskRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$deleteTask, request, options: options);
  }

  // method descriptors

  static final _$createTask = $grpc.ClientMethod<$0.CreateTaskRequest, $0.Task>(
      '/todo.TaskService/CreateTask',
      ($0.CreateTaskRequest value) => value.writeToBuffer(),
      $0.Task.fromBuffer);
  static final _$getTask = $grpc.ClientMethod<$0.GetTaskRequest, $0.Task>(
      '/todo.TaskService/GetTask',
      ($0.GetTaskRequest value) => value.writeToBuffer(),
      $0.Task.fromBuffer);
  static final _$listTasks = $grpc.ClientMethod<$1.Empty, $0.ListTasksResponse>(
      '/todo.TaskService/ListTasks',
      ($1.Empty value) => value.writeToBuffer(),
      $0.ListTasksResponse.fromBuffer);
  static final _$updateTask = $grpc.ClientMethod<$0.UpdateTaskRequest, $0.Task>(
      '/todo.TaskService/UpdateTask',
      ($0.UpdateTaskRequest value) => value.writeToBuffer(),
      $0.Task.fromBuffer);
  static final _$deleteTask =
      $grpc.ClientMethod<$0.DeleteTaskRequest, $1.Empty>(
          '/todo.TaskService/DeleteTask',
          ($0.DeleteTaskRequest value) => value.writeToBuffer(),
          $1.Empty.fromBuffer);
}

@$pb.GrpcServiceName('todo.TaskService')
abstract class TaskServiceBase extends $grpc.Service {
  $core.String get $name => 'todo.TaskService';

  TaskServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CreateTaskRequest, $0.Task>(
        'CreateTask',
        createTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateTaskRequest.fromBuffer(value),
        ($0.Task value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetTaskRequest, $0.Task>(
        'GetTask',
        getTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetTaskRequest.fromBuffer(value),
        ($0.Task value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $0.ListTasksResponse>(
        'ListTasks',
        listTasks_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($0.ListTasksResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateTaskRequest, $0.Task>(
        'UpdateTask',
        updateTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateTaskRequest.fromBuffer(value),
        ($0.Task value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteTaskRequest, $1.Empty>(
        'DeleteTask',
        deleteTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeleteTaskRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$0.Task> createTask_Pre($grpc.ServiceCall $call,
      $async.Future<$0.CreateTaskRequest> $request) async {
    return createTask($call, await $request);
  }

  $async.Future<$0.Task> createTask(
      $grpc.ServiceCall call, $0.CreateTaskRequest request);

  $async.Future<$0.Task> getTask_Pre($grpc.ServiceCall $call,
      $async.Future<$0.GetTaskRequest> $request) async {
    return getTask($call, await $request);
  }

  $async.Future<$0.Task> getTask(
      $grpc.ServiceCall call, $0.GetTaskRequest request);

  $async.Future<$0.ListTasksResponse> listTasks_Pre(
      $grpc.ServiceCall $call, $async.Future<$1.Empty> $request) async {
    return listTasks($call, await $request);
  }

  $async.Future<$0.ListTasksResponse> listTasks(
      $grpc.ServiceCall call, $1.Empty request);

  $async.Future<$0.Task> updateTask_Pre($grpc.ServiceCall $call,
      $async.Future<$0.UpdateTaskRequest> $request) async {
    return updateTask($call, await $request);
  }

  $async.Future<$0.Task> updateTask(
      $grpc.ServiceCall call, $0.UpdateTaskRequest request);

  $async.Future<$1.Empty> deleteTask_Pre($grpc.ServiceCall $call,
      $async.Future<$0.DeleteTaskRequest> $request) async {
    return deleteTask($call, await $request);
  }

  $async.Future<$1.Empty> deleteTask(
      $grpc.ServiceCall call, $0.DeleteTaskRequest request);
}
