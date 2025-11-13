defmodule GoogleAnalytics.MixProject do
  use Mix.Project

  def project do
   [
     app: :google_analytics,
     version: "0.15.0",
     elixir: "~> 1.0",
     deps: [
      {:protobuf, "~> 0.15.0"}
     ]
   ]
  end
end
