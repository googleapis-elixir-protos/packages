defmodule Google.Cloud.Databasecenter.V1beta.SuspensionReason do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SUSPENSION_REASON_UNSPECIFIED, 0
  field :WIPEOUT_HIDE_EVENT, 1
  field :WIPEOUT_PURGE_EVENT, 2
  field :BILLING_DISABLED, 3
  field :ABUSER_DETECTED, 4
  field :ENCRYPTION_KEY_INACCESSIBLE, 5
  field :REPLICATED_CLUSTER_ENCRYPTION_KEY_INACCESSIBLE, 6
end
