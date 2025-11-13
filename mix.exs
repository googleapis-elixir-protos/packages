defmodule GoogleapisElixir.MixProject do
  use Mix.Project

  def project do
    [
      app: :foo,
      version: "0.15.0",
      elixir: "~> 1.19",
      deps: deps()
    ]
  end

  defp deps do
    [
       {:protobuf, "~> 0.15.0"},
       {:grpc, "~> 0.10.2"},
    ]
  end
end
