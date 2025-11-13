defmodule Google.Cloud.Vectorsearch.V1beta.DistanceMetric do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :DISTANCE_METRIC_UNSPECIFIED, 0
  field :DOT_PRODUCT, 1
  field :COSINE_DISTANCE, 2
end
