defmodule Google.Spanner.V1.Mutation.Write do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :table, 1, type: :string, deprecated: false
  field :columns, 2, repeated: true, type: :string
  field :values, 3, repeated: true, type: Google.Protobuf.ListValue
end

defmodule Google.Spanner.V1.Mutation.Delete do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :table, 1, type: :string, deprecated: false
  field :key_set, 2, type: Google.Spanner.V1.KeySet, json_name: "keySet", deprecated: false
end

defmodule Google.Spanner.V1.Mutation.Send do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :queue, 1, type: :string, deprecated: false
  field :key, 2, type: Google.Protobuf.ListValue, deprecated: false
  field :deliver_time, 3, type: Google.Protobuf.Timestamp, json_name: "deliverTime"
  field :payload, 4, type: Google.Protobuf.Value
end

defmodule Google.Spanner.V1.Mutation.Ack do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :queue, 1, type: :string, deprecated: false
  field :key, 2, type: Google.Protobuf.ListValue, deprecated: false
  field :ignore_not_found, 3, type: :bool, json_name: "ignoreNotFound"
end

defmodule Google.Spanner.V1.Mutation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :operation, 0

  field :insert, 1, type: Google.Spanner.V1.Mutation.Write, oneof: 0
  field :update, 2, type: Google.Spanner.V1.Mutation.Write, oneof: 0

  field :insert_or_update, 3,
    type: Google.Spanner.V1.Mutation.Write,
    json_name: "insertOrUpdate",
    oneof: 0

  field :replace, 4, type: Google.Spanner.V1.Mutation.Write, oneof: 0
  field :delete, 5, type: Google.Spanner.V1.Mutation.Delete, oneof: 0
  field :send, 6, type: Google.Spanner.V1.Mutation.Send, oneof: 0
  field :ack, 7, type: Google.Spanner.V1.Mutation.Ack, oneof: 0
end
