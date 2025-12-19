defmodule Google.Ads.Admanager.V1.GetAdUnitRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Ads.Admanager.V1.ListAdUnitsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
  field :skip, 6, type: :int32, deprecated: false
end

defmodule Google.Ads.Admanager.V1.ListAdUnitsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ad_units, 1, repeated: true, type: Google.Ads.Admanager.V1.AdUnit, json_name: "adUnits"
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end

defmodule Google.Ads.Admanager.V1.CreateAdUnitRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :ad_unit, 2, type: Google.Ads.Admanager.V1.AdUnit, json_name: "adUnit", deprecated: false
end

defmodule Google.Ads.Admanager.V1.UpdateAdUnitRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ad_unit, 1, type: Google.Ads.Admanager.V1.AdUnit, json_name: "adUnit", deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.BatchCreateAdUnitsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :requests, 2,
    repeated: true,
    type: Google.Ads.Admanager.V1.CreateAdUnitRequest,
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.BatchCreateAdUnitsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ad_units, 1, repeated: true, type: Google.Ads.Admanager.V1.AdUnit, json_name: "adUnits"
end

defmodule Google.Ads.Admanager.V1.BatchUpdateAdUnitsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :requests, 2,
    repeated: true,
    type: Google.Ads.Admanager.V1.UpdateAdUnitRequest,
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.BatchUpdateAdUnitsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ad_units, 1, repeated: true, type: Google.Ads.Admanager.V1.AdUnit, json_name: "adUnits"
end

defmodule Google.Ads.Admanager.V1.ListAdUnitSizesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
  field :skip, 6, type: :int32, deprecated: false
end

defmodule Google.Ads.Admanager.V1.ListAdUnitSizesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ad_unit_sizes, 1,
    repeated: true,
    type: Google.Ads.Admanager.V1.AdUnitSize,
    json_name: "adUnitSizes"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end

defmodule Google.Ads.Admanager.V1.BatchActivateAdUnitsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :names, 2, repeated: true, type: :string, deprecated: false
end

defmodule Google.Ads.Admanager.V1.BatchActivateAdUnitsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Ads.Admanager.V1.BatchDeactivateAdUnitsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :names, 2, repeated: true, type: :string, deprecated: false
end

defmodule Google.Ads.Admanager.V1.BatchDeactivateAdUnitsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Ads.Admanager.V1.BatchArchiveAdUnitsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :names, 2, repeated: true, type: :string, deprecated: false
end

defmodule Google.Ads.Admanager.V1.BatchArchiveAdUnitsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Ads.Admanager.V1.AdUnitService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.admanager.v1.AdUnitService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :GetAdUnit, Google.Ads.Admanager.V1.GetAdUnitRequest, Google.Ads.Admanager.V1.AdUnit

  rpc :ListAdUnits,
      Google.Ads.Admanager.V1.ListAdUnitsRequest,
      Google.Ads.Admanager.V1.ListAdUnitsResponse

  rpc :ListAdUnitSizes,
      Google.Ads.Admanager.V1.ListAdUnitSizesRequest,
      Google.Ads.Admanager.V1.ListAdUnitSizesResponse

  rpc :CreateAdUnit, Google.Ads.Admanager.V1.CreateAdUnitRequest, Google.Ads.Admanager.V1.AdUnit

  rpc :UpdateAdUnit, Google.Ads.Admanager.V1.UpdateAdUnitRequest, Google.Ads.Admanager.V1.AdUnit

  rpc :BatchCreateAdUnits,
      Google.Ads.Admanager.V1.BatchCreateAdUnitsRequest,
      Google.Ads.Admanager.V1.BatchCreateAdUnitsResponse

  rpc :BatchUpdateAdUnits,
      Google.Ads.Admanager.V1.BatchUpdateAdUnitsRequest,
      Google.Ads.Admanager.V1.BatchUpdateAdUnitsResponse

  rpc :BatchActivateAdUnits,
      Google.Ads.Admanager.V1.BatchActivateAdUnitsRequest,
      Google.Ads.Admanager.V1.BatchActivateAdUnitsResponse

  rpc :BatchDeactivateAdUnits,
      Google.Ads.Admanager.V1.BatchDeactivateAdUnitsRequest,
      Google.Ads.Admanager.V1.BatchDeactivateAdUnitsResponse

  rpc :BatchArchiveAdUnits,
      Google.Ads.Admanager.V1.BatchArchiveAdUnitsRequest,
      Google.Ads.Admanager.V1.BatchArchiveAdUnitsResponse
end

defmodule Google.Ads.Admanager.V1.AdUnitService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Admanager.V1.AdUnitService.Service
end
