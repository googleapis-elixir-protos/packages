#!/usr/bin/env nu

#MISE description="Generate elixir protobuf files"
#MISE depends=["install:elixir"]

use ../../mimic.nu

let google_dir = ".googleapis"
let package_dir: path = './packages/elixir'
let epoch_seconds: int = (date now) | format date '%s'

if ($google_dir | path exists) {
  cd $google_dir 
  git pull origin master
} else {
  git clone https://github.com/googleapis/googleapis $google_dir
  cd $google_dir
}


$google_dir | print

let proto_files = (glob "google/**/*.proto") | path relative-to (pwd)
$proto_files | print

# Create packages base dir for elixir projects
mkdir $package_dir

# Create elixir protofiles
protoc --elixir_out=$'($package_dir)' -I './google' ...$proto_files

# # move protofiles into their project pacakge
# $'($package_dir)/*/*.pb.ex' | glob $in | each {|file|
#   let lib_dir: path = $file | path dirname | path join "lib"
#   mkdir $lib_dir
#   mv $file $lib_dir
# }
#
# #Add a mix.exs and application.ex file to each individual package
# glob -SF --depth 1 $'($package_dir)/*' | par-each {|project|
#   let package = $project | path basename
#
#   mimic app-template-string $package | save --force $"($project)/lib/application.ex"
#   mimic mix-template-string $package $env.ELIXIR_VERSION | save --force $"($project)/mix.exs"
#
#   $project | path relative-to (pwd)
# }
