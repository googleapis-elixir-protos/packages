defmodule GoogleBigtable.MixProject do
  use Mix.Project

  def project do
   [
     app: :google_bigtable,
     version: "0.15.0",
     elixir: "~> 1.0",
     deps: [
      {:protobuf, "~> 0.15.0"}
     ]
   ]
  end
end
