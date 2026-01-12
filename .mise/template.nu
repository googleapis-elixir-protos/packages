use std/assert

export def mix [opts] {

let module = $opts.package_name | str camel-case | str capitalize
let app = $opts.package_name| str snake-case

$'defmodule Google.($module).MixProject do
  use Mix.Project

  def project do
   [
     app: :google_($app),
     version: "($opts.package_version)",
     elixir: "~> ($opts.elixir_version)",
     deps: [
       {:protobuf, "~> ($opts.protobuf_version)"},
       {:grpc, "~> ($opts.grpc_version)"} ]
   ]
  end
end
'
}
