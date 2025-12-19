defmodule Google.Cloud.Networksecurity.V1alpha1.TlsInspectionPolicy.TlsVersion do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TLS_VERSION_UNSPECIFIED, 0
  field :TLS_1_0, 1
  field :TLS_1_1, 2
  field :TLS_1_2, 3
  field :TLS_1_3, 4
end

defmodule Google.Cloud.Networksecurity.V1alpha1.TlsInspectionPolicy.Profile do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PROFILE_UNSPECIFIED, 0
  field :PROFILE_COMPATIBLE, 1
  field :PROFILE_MODERN, 2
  field :PROFILE_RESTRICTED, 3
  field :PROFILE_CUSTOM, 4
end

defmodule Google.Cloud.Networksecurity.V1alpha1.TlsInspectionPolicy do
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

  field :ca_pool, 5, type: :string, json_name: "caPool", deprecated: false
  field :trust_config, 6, type: :string, json_name: "trustConfig", deprecated: false

  field :exclude_public_ca_set, 7,
    proto3_optional: true,
    type: :bool,
    json_name: "excludePublicCaSet",
    deprecated: false

  field :min_tls_version, 8,
    type: Google.Cloud.Networksecurity.V1alpha1.TlsInspectionPolicy.TlsVersion,
    json_name: "minTlsVersion",
    enum: true,
    deprecated: false

  field :tls_feature_profile, 9,
    type: Google.Cloud.Networksecurity.V1alpha1.TlsInspectionPolicy.Profile,
    json_name: "tlsFeatureProfile",
    enum: true,
    deprecated: false

  field :custom_tls_features, 10,
    repeated: true,
    type: :string,
    json_name: "customTlsFeatures",
    deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.CreateTlsInspectionPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :tls_inspection_policy_id, 2,
    type: :string,
    json_name: "tlsInspectionPolicyId",
    deprecated: false

  field :tls_inspection_policy, 3,
    type: Google.Cloud.Networksecurity.V1alpha1.TlsInspectionPolicy,
    json_name: "tlsInspectionPolicy",
    deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.ListTlsInspectionPoliciesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Networksecurity.V1alpha1.ListTlsInspectionPoliciesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :tls_inspection_policies, 1,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1alpha1.TlsInspectionPolicy,
    json_name: "tlsInspectionPolicies"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Networksecurity.V1alpha1.GetTlsInspectionPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.DeleteTlsInspectionPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :force, 2, type: :bool
end

defmodule Google.Cloud.Networksecurity.V1alpha1.UpdateTlsInspectionPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :tls_inspection_policy, 2,
    type: Google.Cloud.Networksecurity.V1alpha1.TlsInspectionPolicy,
    json_name: "tlsInspectionPolicy",
    deprecated: false
end
