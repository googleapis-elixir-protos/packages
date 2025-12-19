defmodule Google.Shopping.Merchant.Quota.V1.ProductLimit.Scope do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SCOPE_UNSPECIFIED, 0
  field :ADS_NON_EEA, 1
  field :ADS_EEA, 2
end

defmodule Google.Shopping.Merchant.Quota.V1.ProductLimit do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :scope, 1,
    type: Google.Shopping.Merchant.Quota.V1.ProductLimit.Scope,
    enum: true,
    deprecated: false

  field :limit, 2, type: :int64, deprecated: false
end

defmodule Google.Shopping.Merchant.Quota.V1.AccountLimit do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :type, 0

  field :products, 100, type: Google.Shopping.Merchant.Quota.V1.ProductLimit, oneof: 0
  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Quota.V1.GetAccountLimitRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Quota.V1.ListAccountLimitsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Quota.V1.ListAccountLimitsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :account_limits, 1,
    repeated: true,
    type: Google.Shopping.Merchant.Quota.V1.AccountLimit,
    json_name: "accountLimits"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Shopping.Merchant.Quota.V1.AccountLimitsService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.shopping.merchant.quota.v1.AccountLimitsService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :GetAccountLimit,
      Google.Shopping.Merchant.Quota.V1.GetAccountLimitRequest,
      Google.Shopping.Merchant.Quota.V1.AccountLimit

  rpc :ListAccountLimits,
      Google.Shopping.Merchant.Quota.V1.ListAccountLimitsRequest,
      Google.Shopping.Merchant.Quota.V1.ListAccountLimitsResponse
end

defmodule Google.Shopping.Merchant.Quota.V1.AccountLimitsService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Shopping.Merchant.Quota.V1.AccountLimitsService.Service
end
