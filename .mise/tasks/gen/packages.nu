#!/usr/bin/env nu

#MISE description="Add hex package info to each google proto project"
pwd | print

use ../../../.mise/template.nu

glob "google/*" | each {|filepath|
  let $libdir = [$filepath lib] | path join
  let $mix_file_name = [$filepath mix.exs] | path join
  let $package_name = $filepath | path basename
  let options = {
    package_name: $package_name,
    elixir_version: $env.ELIXIR_VERSION,
    protobuf_version: $env.ELIXIR_PROTOBUF_VERSION,
    package_version: 0.1.0
  }

  mkdir -v $libdir
  glob --exclude ["lib"] $"($filepath)/*" | each {|packagepath|
    mv $packagepath $libdir
  }

  let mixfile = (template mix $options)
  $mixfile | save --force $mix_file_name



}

glob "google/*" | each {|package| 
  mv $package ([$env.MISE_PROJECT_ROOT, $'google_($package | path basename)'] | path join) | print
}

rm -rf google grafeas gapic
