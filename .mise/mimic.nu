export def app-template-string [package] {
let module = $package | str camel-case | str capitalize
$'defmodule ($module) do
end
'
}

export def mix-template-string [package version] {
let module = $package | str camel-case | str capitalize
let app = $package | str snake-case
$'defmodule ($module).MixProject do
  use Mix.Project

  def project do
   [
     app: :($app),
     version: "0.1.0",
     elixir: "~> ($version)",
     deps: [ {:protobuf, "~> 0.15"} ]
   ]
  end
end
'
}
