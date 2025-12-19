defmodule Google.Ads.Admanager.V1.GetCustomTargetingKeyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Ads.Admanager.V1.ListCustomTargetingKeysRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
  field :skip, 6, type: :int32, deprecated: false
end

defmodule Google.Ads.Admanager.V1.ListCustomTargetingKeysResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :custom_targeting_keys, 1,
    repeated: true,
    type: Google.Ads.Admanager.V1.CustomTargetingKey,
    json_name: "customTargetingKeys"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end

defmodule Google.Ads.Admanager.V1.CreateCustomTargetingKeyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :custom_targeting_key, 2,
    type: Google.Ads.Admanager.V1.CustomTargetingKey,
    json_name: "customTargetingKey",
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.BatchCreateCustomTargetingKeysRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :requests, 2,
    repeated: true,
    type: Google.Ads.Admanager.V1.CreateCustomTargetingKeyRequest,
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.BatchCreateCustomTargetingKeysResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :custom_targeting_keys, 1,
    repeated: true,
    type: Google.Ads.Admanager.V1.CustomTargetingKey,
    json_name: "customTargetingKeys"
end

defmodule Google.Ads.Admanager.V1.UpdateCustomTargetingKeyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :custom_targeting_key, 1,
    type: Google.Ads.Admanager.V1.CustomTargetingKey,
    json_name: "customTargetingKey",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.BatchUpdateCustomTargetingKeysRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :requests, 2,
    repeated: true,
    type: Google.Ads.Admanager.V1.UpdateCustomTargetingKeyRequest,
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.BatchUpdateCustomTargetingKeysResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :custom_targeting_keys, 1,
    repeated: true,
    type: Google.Ads.Admanager.V1.CustomTargetingKey,
    json_name: "customTargetingKeys"
end

defmodule Google.Ads.Admanager.V1.BatchActivateCustomTargetingKeysRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :names, 2, repeated: true, type: :string, deprecated: false
end

defmodule Google.Ads.Admanager.V1.BatchActivateCustomTargetingKeysResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Ads.Admanager.V1.BatchDeactivateCustomTargetingKeysRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :names, 2, repeated: true, type: :string, deprecated: false
end

defmodule Google.Ads.Admanager.V1.BatchDeactivateCustomTargetingKeysResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Ads.Admanager.V1.CustomTargetingKeyService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.admanager.v1.CustomTargetingKeyService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :GetCustomTargetingKey,
      Google.Ads.Admanager.V1.GetCustomTargetingKeyRequest,
      Google.Ads.Admanager.V1.CustomTargetingKey

  rpc :ListCustomTargetingKeys,
      Google.Ads.Admanager.V1.ListCustomTargetingKeysRequest,
      Google.Ads.Admanager.V1.ListCustomTargetingKeysResponse

  rpc :CreateCustomTargetingKey,
      Google.Ads.Admanager.V1.CreateCustomTargetingKeyRequest,
      Google.Ads.Admanager.V1.CustomTargetingKey

  rpc :BatchCreateCustomTargetingKeys,
      Google.Ads.Admanager.V1.BatchCreateCustomTargetingKeysRequest,
      Google.Ads.Admanager.V1.BatchCreateCustomTargetingKeysResponse

  rpc :UpdateCustomTargetingKey,
      Google.Ads.Admanager.V1.UpdateCustomTargetingKeyRequest,
      Google.Ads.Admanager.V1.CustomTargetingKey

  rpc :BatchUpdateCustomTargetingKeys,
      Google.Ads.Admanager.V1.BatchUpdateCustomTargetingKeysRequest,
      Google.Ads.Admanager.V1.BatchUpdateCustomTargetingKeysResponse

  rpc :BatchActivateCustomTargetingKeys,
      Google.Ads.Admanager.V1.BatchActivateCustomTargetingKeysRequest,
      Google.Ads.Admanager.V1.BatchActivateCustomTargetingKeysResponse

  rpc :BatchDeactivateCustomTargetingKeys,
      Google.Ads.Admanager.V1.BatchDeactivateCustomTargetingKeysRequest,
      Google.Ads.Admanager.V1.BatchDeactivateCustomTargetingKeysResponse
end

defmodule Google.Ads.Admanager.V1.CustomTargetingKeyService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Admanager.V1.CustomTargetingKeyService.Service
end
