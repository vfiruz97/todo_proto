/// Todo Proto Package
///
/// This package provides protobuf messages and gRPC service definitions
/// for the Todo application.
library;

// Export Dart packages
export 'package:grpc/grpc.dart';

// Export Google protobuf standard types
export 'src/generated/google/protobuf/empty.pb.dart';
// Export generated protobuf messages
export 'src/generated/protos/task.pb.dart';
export 'src/generated/protos/task.pbenum.dart';
export 'src/generated/protos/task.pbgrpc.dart';
export 'src/generated/protos/task.pbjson.dart';
