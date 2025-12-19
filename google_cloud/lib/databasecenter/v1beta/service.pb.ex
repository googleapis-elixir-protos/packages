defmodule Google.Cloud.Databasecenter.V1beta.QueryProductsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 3, type: :string, deprecated: false
  field :page_size, 1, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Databasecenter.V1beta.QueryProductsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :products, 1, repeated: true, type: Google.Cloud.Databasecenter.V1beta.Product
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Databasecenter.V1beta.DatabaseCenter.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.databasecenter.v1beta.DatabaseCenter",
    protoc_gen_elixir_version: "0.15.0"

  rpc :QueryProducts,
      Google.Cloud.Databasecenter.V1beta.QueryProductsRequest,
      Google.Cloud.Databasecenter.V1beta.QueryProductsResponse
end

defmodule Google.Cloud.Databasecenter.V1beta.DatabaseCenter.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Databasecenter.V1beta.DatabaseCenter.Service
end
