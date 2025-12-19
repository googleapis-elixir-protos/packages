defmodule Google.Ads.Datamanager.V1.ItemParameter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parameter_name, 1, type: :string, json_name: "parameterName", deprecated: false
  field :value, 2, type: :string, deprecated: false
end
