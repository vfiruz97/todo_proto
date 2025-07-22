# Todo Proto

This repo contains the protobuf definitions for the Todo application. The protobuf file is used gRPC Service for task management.

## Protobuf File
The protobuf files are located in the `protos` directory:

## Installation

```bash
brew install protobuf
dart pub global activate protoc_plugin

# Set the PROTOBUF_INCLUDE_DIR environment variable in .evn file
# Example: PROTOBUF_INCLUDE_DIR=/opt/homebrew/include

# Generateby running
./scripts/generate.sh
```