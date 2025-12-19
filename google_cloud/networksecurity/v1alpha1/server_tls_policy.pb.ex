defmodule Google.Cloud.Networksecurity.V1alpha1.ServerTlsPolicy.MTLSPolicy.ClientValidationMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :CLIENT_VALIDATION_MODE_UNSPECIFIED, 0
  field :ALLOW_INVALID_OR_MISSING_CLIENT_CERT, 1
  field :REJECT_INVALID, 2
end

defmodule Google.Cloud.Networksecurity.V1alpha1.ServerTlsPolicy.MTLSPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :client_validation_mode, 2,
    type: Google.Cloud.Networksecurity.V1alpha1.ServerTlsPolicy.MTLSPolicy.ClientValidationMode,
    json_name: "clientValidationMode",
    enum: true

  field :client_validation_ca, 1,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1alpha1.ValidationCA,
    json_name: "clientValidationCa"

  field :client_validation_trust_config, 4,
    type: :string,
    json_name: "clientValidationTrustConfig",
    deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.ServerTlsPolicy.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Networksecurity.V1alpha1.ServerTlsPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :description, 2, type: :string

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
    type: Google.Cloud.Networksecurity.V1alpha1.ServerTlsPolicy.LabelsEntry,
    map: true

  field :allow_open, 6, type: :bool, json_name: "allowOpen"

  field :server_certificate, 7,
    type: Google.Cloud.Networksecurity.V1alpha1.CertificateProvider,
    json_name: "serverCertificate"

  field :mtls_policy, 8,
    type: Google.Cloud.Networksecurity.V1alpha1.ServerTlsPolicy.MTLSPolicy,
    json_name: "mtlsPolicy"
end

defmodule Google.Cloud.Networksecurity.V1alpha1.ListServerTlsPoliciesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"

  field :return_partial_success, 4,
    type: :bool,
    json_name: "returnPartialSuccess",
    deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.ListServerTlsPoliciesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :server_tls_policies, 1,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1alpha1.ServerTlsPolicy,
    json_name: "serverTlsPolicies"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Networksecurity.V1alpha1.GetServerTlsPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.CreateServerTlsPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :server_tls_policy_id, 2, type: :string, json_name: "serverTlsPolicyId", deprecated: false

  field :server_tls_policy, 3,
    type: Google.Cloud.Networksecurity.V1alpha1.ServerTlsPolicy,
    json_name: "serverTlsPolicy",
    deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.UpdateServerTlsPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :server_tls_policy, 2,
    type: Google.Cloud.Networksecurity.V1alpha1.ServerTlsPolicy,
    json_name: "serverTlsPolicy",
    deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.DeleteServerTlsPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
