defmodule GoogleArea120.MixProject do
  use Mix.Project

  def project do
   [
     app: :google_area120,
     version: "0.15.0",
     elixir: "~> 1.0",
     deps: [
      {:protobuf, "~> 0.15.0"}
     ]
   ]
  end
end
