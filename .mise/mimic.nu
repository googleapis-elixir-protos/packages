export def mix-template-string [package version] {
let module = $package | str camel-case | str capitalize
let app = $package | str snake-case
$'defmodule ($module).MixProject do
  use Mix.Project

  def project do
   [
     app: :($app),
     version: "($env.ELIXIR_PROTOBUF_VERSION)",
     elixir: "~> 1.0",
     deps: [
      {:protobuf, "~> ($env.ELIXIR_PROTOBUF_VERSION)"}
     ]
   ]
  end
end
'
}
