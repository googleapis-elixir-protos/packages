#!/usr/bin/env nu

#MISE description="Generate elixir protobuf files"
#MISE depends=["install:elixir-proto-plugin", "install:googleapis"]

use ../mimic.nu

mkdir packages/elixir

let proto_files = glob $'($env.GOOGLE_PROTOS_DIR)/google/**/*.proto' | path relative-to (pwd)

protoc --elixir_out=plugins=grpc:./packages -I $env.GOOGLE_PROTOS_DIR ...$proto_files

glob --depth 1 --no-file ./packages/google/* | compact | each {|package|
  let name = $package | path basename

  mkdir $'./packages/elixir/($name)'

  glob $'($package)/**/*.pb.ex' | each {|proto| 
    mv $proto $'./packages/elixir/($name)/'
  }

  # let name = $package | path basename
  # let elixir_filename = $'./packages/elixir/($name)/lib/($name).ex'
  # let mix_filename = $'./packages/elixir/($name)/mix.exs'
  #
  # mkdir ($elixir_filename | path dirname)
  # mimic mix-template-string $name $env.ELIXIR_VERSION | save --force $mix_filename
  #
  # rm --force $elixir_filename
  #
  #
  # glob $'($package)/**/*.pb.ex' | each {|proto| $proto | open | save --append $elixir_filename }
}

# rm -rf packages/google
#
# mix format
