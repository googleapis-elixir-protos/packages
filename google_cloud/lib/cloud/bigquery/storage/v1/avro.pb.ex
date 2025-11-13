defmodule Google.Cloud.Bigquery.Storage.V1.AvroSerializationOptions.PicosTimestampPrecision do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PICOS_TIMESTAMP_PRECISION_UNSPECIFIED, 0
  field :TIMESTAMP_PRECISION_MICROS, 1
  field :TIMESTAMP_PRECISION_NANOS, 2
  field :TIMESTAMP_PRECISION_PICOS, 3
end

defmodule Google.Cloud.Bigquery.Storage.V1.AvroSchema do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :schema, 1, type: :string
end

defmodule Google.Cloud.Bigquery.Storage.V1.AvroRows do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :serialized_binary_rows, 1, type: :bytes, json_name: "serializedBinaryRows"
  field :row_count, 2, type: :int64, json_name: "rowCount", deprecated: true
end

defmodule Google.Cloud.Bigquery.Storage.V1.AvroSerializationOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enable_display_name_attribute, 1, type: :bool, json_name: "enableDisplayNameAttribute"

  field :picos_timestamp_precision, 2,
    type: Google.Cloud.Bigquery.Storage.V1.AvroSerializationOptions.PicosTimestampPrecision,
    json_name: "picosTimestampPrecision",
    enum: true
end
