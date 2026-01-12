defmodule Google.Cloud.Databasecenter.V1beta.MachineConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :memory_size_bytes, 2, type: :int64, json_name: "memorySizeBytes"

  field :shard_count, 3,
    proto3_optional: true,
    type: :int32,
    json_name: "shardCount",
    deprecated: false

  field :vcpu_count, 4,
    proto3_optional: true,
    type: :double,
    json_name: "vcpuCount",
    deprecated: false
end
