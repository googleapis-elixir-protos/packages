#!/usr/bin/env nu

#MISE description="Generate base elixir protobuf files"
#MISE depends=["install:elixir", "install:googleapis"]

use ../../mimic.nu

let package_path: path = 'packages/elixir/base'
let proto_dir: path = $env.PROTOCOLBUFFERS_PROTOS_DIR 
let package_lib_dir: path = $'($package_path)/lib'
let proto_files: list<path> = [
  'any'
  'descriptor'
  'duration'
  'empty'
  'field_mask'
  'struct'
  'timestamp'
  'type'
  'wrappers'
] | each { |proto|
  $'($proto_dir)/src/google/protobuf/($proto).proto'
}

mkdir $package_lib_dir

(
  protoc --elixir_out=plugins=grpc:$'($package_path)'
  -I $'($proto_dir)/src'
  ...$proto_files
)

mimic mix-template-string "base" $env.ELIXIR_VERSION | save --force packages/elixir/base/mix.exs

mv packages/elixir/base/google/protobuf/* $'($package_path)/lib'

rm -rf packages/elixir/base/google
