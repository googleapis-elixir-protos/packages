defmodule Google.Cloud.Networksecurity.V1alpha1.BackendAuthenticationConfig.WellKnownRoots do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :WELL_KNOWN_ROOTS_UNSPECIFIED, 0
  field :NONE, 1
  field :PUBLIC_ROOTS, 2
end

defmodule Google.Cloud.Networksecurity.V1alpha1.BackendAuthenticationConfig.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Networksecurity.V1alpha1.BackendAuthenticationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :description, 2, type: :string, deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 5,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1alpha1.BackendAuthenticationConfig.LabelsEntry,
    map: true

  field :client_certificate, 6, type: :string, json_name: "clientCertificate", deprecated: false
  field :trust_config, 7, type: :string, json_name: "trustConfig", deprecated: false

  field :well_known_roots, 8,
    type: Google.Cloud.Networksecurity.V1alpha1.BackendAuthenticationConfig.WellKnownRoots,
    json_name: "wellKnownRoots",
    enum: true

  field :etag, 9, type: :string, deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.ListBackendAuthenticationConfigsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Networksecurity.V1alpha1.ListBackendAuthenticationConfigsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :backend_authentication_configs, 1,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1alpha1.BackendAuthenticationConfig,
    json_name: "backendAuthenticationConfigs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Networksecurity.V1alpha1.GetBackendAuthenticationConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.CreateBackendAuthenticationConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :backend_authentication_config_id, 2,
    type: :string,
    json_name: "backendAuthenticationConfigId",
    deprecated: false

  field :backend_authentication_config, 3,
    type: Google.Cloud.Networksecurity.V1alpha1.BackendAuthenticationConfig,
    json_name: "backendAuthenticationConfig",
    deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.UpdateBackendAuthenticationConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :backend_authentication_config, 2,
    type: Google.Cloud.Networksecurity.V1alpha1.BackendAuthenticationConfig,
    json_name: "backendAuthenticationConfig",
    deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.DeleteBackendAuthenticationConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :etag, 2, type: :string, deprecated: false
end
