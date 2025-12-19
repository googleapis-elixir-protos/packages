#!/usr/bin/env nu

#MISE description="Generate elixir protobuf files"
#MISE depends=["install:elixir-proto-plugin", "install:googleapis"]

use ../mimic.nu

if ("./packages" | path exists) { rm -rf packages }
mkdir ./packages

let proto_files = glob $'($env.GOOGLE_PROTOS_DIR)/google/**/*.proto' | path relative-to (pwd) | take 50

protoc --elixir_out=plugins=grpc:./packages -I $env.GOOGLE_PROTOS_DIR ...$proto_files

mv -fu ./packages/google/* packages/
rm -rf ./packages/google

glob --depth 1 --no-file ./packages/* | compact | each {|package|
  print $package
  mkdir $'($package)/lib'

  mv ($'($package)/*[!lib]*' | glob $in) $'($package)/lib'

  let package_name = $package | path basename
  let name = $'google_($package_name)'

  let mix_filename = $'($package_name)/mix.exs'
  mimic mix-template-string $name $env.ELIXIR_VERSION | save --force $mix_filename
}
