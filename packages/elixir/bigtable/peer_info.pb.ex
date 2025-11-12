defmodule Google.Bigtable.V2.PeerInfo.TransportType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TRANSPORT_TYPE_UNKNOWN, 0
  field :TRANSPORT_TYPE_EXTERNAL, 1
  field :TRANSPORT_TYPE_CLOUD_PATH, 2
  field :TRANSPORT_TYPE_DIRECT_ACCESS, 3
  field :TRANSPORT_TYPE_SESSION_UNKNOWN, 4
  field :TRANSPORT_TYPE_SESSION_EXTERNAL, 5
  field :TRANSPORT_TYPE_SESSION_CLOUD_PATH, 6
  field :TRANSPORT_TYPE_SESSION_DIRECT_ACCESS, 7
end

defmodule Google.Bigtable.V2.PeerInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :google_frontend_id, 1, type: :int64, json_name: "googleFrontendId"
  field :application_frontend_id, 2, type: :int64, json_name: "applicationFrontendId"
  field :application_frontend_zone, 3, type: :string, json_name: "applicationFrontendZone"
  field :application_frontend_subzone, 4, type: :string, json_name: "applicationFrontendSubzone"

  field :transport_type, 5,
    type: Google.Bigtable.V2.PeerInfo.TransportType,
    json_name: "transportType",
    enum: true
end
