defmodule Google.Firestore.V1.StructuredPipeline.OptionsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Firestore.V1.Value
end

defmodule Google.Firestore.V1.StructuredPipeline do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :pipeline, 1, type: Google.Firestore.V1.Pipeline, deprecated: false

  field :options, 2,
    repeated: true,
    type: Google.Firestore.V1.StructuredPipeline.OptionsEntry,
    map: true,
    deprecated: false
end
