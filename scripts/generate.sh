#!/bin/bash
# This script regenerates Dart files from protobuf schema

set -e
echo "Regenerating Dart files from protobuf schema..."

# Ensure protoc plugin is in PATH
export PATH="$PATH:$HOME/.pub-cache/bin"

# Check if protoc is available
if ! command -v protoc &> /dev/null; then
    echo "protoc not found. Please install Protocol Buffers compiler:"
    exit 1
fi

# Check if protoc-gen-dart is available
if ! command -v protoc-gen-dart &> /dev/null; then
    echo "protoc-gen-dart not found. Installing..."
    dart pub global activate protoc_plugin
fi

# Load environment variables from .env file
if [ -f ".env" ]; then
    echo "Loading environment variables from .env file..."
    set -a
    source .env
    set +a
fi

# Check if PROTOBUF_INCLUDE_DIR is set and valid
if [ -z "$PROTOBUF_INCLUDE_DIR" ]; then
    echo "PROTOBUF_INCLUDE_DIR not set in .env file. Please configure it."
    exit 1
fi

if [ ! -d "$PROTOBUF_INCLUDE_DIR" ]; then
    echo "Protobuf include directory not found: $PROTOBUF_INCLUDE_DIR"
    echo "Please ensure protobuf is properly installed and update the path in .env file."
    exit 1
fi

echo "Using protobuf includes from: $PROTOBUF_INCLUDE_DIR"

mkdir -p lib/src/generated

# Generate the Google protobuf standard types first
echo "Generating Google protobuf standard types..."
protoc --proto_path="$PROTOBUF_INCLUDE_DIR" --dart_out=lib/src/generated "$PROTOBUF_INCLUDE_DIR/google/protobuf/empty.proto"
# Add any other standard types you need here

echo "Generating Dart files..."
protoc --proto_path="$PROTOBUF_INCLUDE_DIR" --proto_path=. --dart_out=grpc:lib/src/generated protos/todo.proto

echo "Code generation completed successfully in: lib/src/generated/protos/"

echo "Running dart analyze..."
dart analyze
