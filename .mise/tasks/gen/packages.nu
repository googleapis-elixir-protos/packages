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

  let mixfile = (template mix $options)
  print $mixfile

  $mixfile | save --force $mix_file_name
}
