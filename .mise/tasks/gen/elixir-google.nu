#!/usr/bin/env nu

#MISE description="Generate elixir protobuf files"
#MISE depends=["install:elixir", "install:googleapis"]

use ../../mimic.nu

let package_root: path = 'packages'
let package_dir: path = $package_root | path join 'elixir' | path expand
let google_package_dir: path = $package_root | path join 'google' | path expand
# let epoch_seconds: int = (date now) | format date '%s'
let google_dir = $env.GOOGLE_PROTOS_DIR
let proto_files = (glob $"($google_dir)/google/**/*.proto") | path relative-to (pwd) | take 2

mkdir $package_dir

(
  protoc --elixir_out=plugins=grpc:$'($package_root)'
  -I $env.GOOGLE_PROTOS_DIR
  ...$proto_files
)

$'($google_package_dir)/*' | glob  --depth 1 --no-file $in | compact | each {|package|
  let name = $package | path basename
  let elixir_filename = [$package_dir $name lib $'($name).ex'] | path join
  let mix_filename = [$package_dir $name 'mix.exs'] | path join

  $elixir_filename | path dirname | mkdir $in

  rm -f $elixir_filename

  print $mix_filename

  mimic mix-template-string $name $env.ELIXIR_VERSION | save --force $mix_filename

  glob $'($package)/**/*.pb.ex' | each {|proto|
    (open $proto) | save --append $elixir_filename
  }

}

rm -rf elixir/google
