defmodule Google.Cloud.Sql.V1.SqlFeatureEligibilityService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.sql.v1.SqlFeatureEligibilityService",
    protoc_gen_elixir_version: "0.15.0"
end

defmodule Google.Cloud.Sql.V1.SqlFeatureEligibilityService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Sql.V1.SqlFeatureEligibilityService.Service
end
