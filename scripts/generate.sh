#!/bin/bash

# This script regenerates Dart files from protobuf schema

set -e

echo "Regenerating Dart files from protobuf schema..."

# Ensure protoc plugin is in PATH
export PATH="$PATH:$HOME/.pub-cache/bin"

# Check if protoc is available
if ! command -v protoc &> /dev/null; then
    echo "❌ protoc not found. Please install Protocol Buffers compiler:"
    exit 1
fi

# Check if protoc-gen-dart is available
if ! command -v protoc-gen-dart &> /dev/null; then
    echo "❌ protoc-gen-dart not found. Installing..."
    dart pub global activate protoc_plugin
fi

# Find the protobuf include directory
PROTOBUF_INCLUDE_DIR=""
if [ -d "/opt/homebrew/include" ]; then
    PROTOBUF_INCLUDE_DIR="/opt/homebrew/include"
elif [ -d "/usr/local/include" ]; then
    PROTOBUF_INCLUDE_DIR="/usr/local/include"
elif [ -d "/usr/include" ]; then
    PROTOBUF_INCLUDE_DIR="/usr/include"
else
    echo "❌ Could not find protobuf include directory. Please ensure protobuf is properly installed."
    exit 1
fi

echo "Using protobuf includes from: $PROTOBUF_INCLUDE_DIR"

mkdir -p lib/src/generated

# Generate the Google protobuf standard types first
echo "Generating Google protobuf standard types..."
protoc --proto_path="$PROTOBUF_INCLUDE_DIR" --dart_out=lib/src/generated "$PROTOBUF_INCLUDE_DIR/google/protobuf/empty.proto"
protoc --proto_path="$PROTOBUF_INCLUDE_DIR" --dart_out=lib/src/generated "$PROTOBUF_INCLUDE_DIR/google/protobuf/field_mask.proto"

echo "📦 Generating Dart files..."
protoc --proto_path="$PROTOBUF_INCLUDE_DIR" --proto_path=. --dart_out=grpc:lib/src/generated protos/task.proto

echo "Code generation completed successfully in: lib/src/generated/protos/"

# Run pub get to ensure dependencies are up to date
echo "📋 Running pub get and dart analyze..."
dart pub get
dart analyze
