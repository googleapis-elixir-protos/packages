defmodule Google.Shopping.MixProject do
  use Mix.Project

  def project do
   [
     app: :google_shopping,
     version: "0.1.0",
     elixir: "~> 1.19.1",
     deps: [
       {:protobuf, "~> 0.15.0"},
       {:grpc, "~> 0.11.0"} ]
   ]
  end
end
