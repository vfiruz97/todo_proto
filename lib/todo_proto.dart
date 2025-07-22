/// Todo Proto Package
///
/// This package provides protobuf messages and gRPC service definitions
/// for the Todo application.
library;

// Export Dart packages
export 'package:fixnum/fixnum.dart';
export 'package:grpc/grpc.dart';

// Export Google protobuf standard types
export 'src/generated/google/protobuf/empty.pb.dart';
// Export generated protobuf messages
export 'src/generated/protos/todo.pb.dart';
export 'src/generated/protos/todo.pbenum.dart';
export 'src/generated/protos/todo.pbgrpc.dart';
export 'src/generated/protos/todo.pbjson.dart';
