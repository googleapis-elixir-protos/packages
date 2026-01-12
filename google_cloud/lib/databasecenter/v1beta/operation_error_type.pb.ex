defmodule Google.Cloud.Databasecenter.V1beta.OperationErrorType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :OPERATION_ERROR_TYPE_UNSPECIFIED, 0
  field :KMS_KEY_ERROR, 1
  field :DATABASE_ERROR, 2
  field :STOCKOUT_ERROR, 3
  field :CANCELLATION_ERROR, 4
  field :SQLSERVER_ERROR, 5
  field :INTERNAL_ERROR, 6
end
