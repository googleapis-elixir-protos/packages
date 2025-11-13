#!/usr/bin/env nu

#MISE description="Generate elixir protobuf files"
#MISE depends=["install:elixir-proto-plugin", "install:googleapis"]

use ../mimic.nu

mkdir packages

let proto_files = glob $'($env.GOOGLE_PROTOS_DIR)/google/**/*.proto' | path relative-to (pwd)

protoc --elixir_out=plugins=grpc:. -I $env.GOOGLE_PROTOS_DIR ...$proto_files

glob --depth 1 --no-file ./google/* | compact | each {|package|
  let name = $package | path basename
  let mix_filename = $'./($name)/mix.exs'
  let lib_dir = [$name "lib"] | path join 

  rm -rf $lib_dir
  mkdir $lib_dir
  mv $package $lib_dir

  mimic mix-template-string $'google_($name)' $env.ELIXIR_VERSION | save --force $mix_filename

  $package
}

rm -rt google
