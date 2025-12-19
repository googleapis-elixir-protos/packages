defmodule Google.Cloud.Networksecurity.V1alpha1.AuthzPolicy.LoadBalancingScheme do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :LOAD_BALANCING_SCHEME_UNSPECIFIED, 0
  field :INTERNAL_MANAGED, 1
  field :EXTERNAL_MANAGED, 2
  field :INTERNAL_SELF_MANAGED, 3
end

defmodule Google.Cloud.Networksecurity.V1alpha1.AuthzPolicy.AuthzAction do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :AUTHZ_ACTION_UNSPECIFIED, 0
  field :ALLOW, 1
  field :DENY, 2
  field :CUSTOM, 3
end

defmodule Google.Cloud.Networksecurity.V1alpha1.AuthzPolicy.AuthzRule.Principal.PrincipalSelector do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PRINCIPAL_SELECTOR_UNSPECIFIED, 0
  field :CLIENT_CERT_URI_SAN, 1
  field :CLIENT_CERT_DNS_NAME_SAN, 2
  field :CLIENT_CERT_COMMON_NAME, 3
end

defmodule Google.Cloud.Networksecurity.V1alpha1.AuthzPolicy.Target do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :load_balancing_scheme, 8,
    type: Google.Cloud.Networksecurity.V1alpha1.AuthzPolicy.LoadBalancingScheme,
    json_name: "loadBalancingScheme",
    enum: true,
    deprecated: false

  field :resources, 1, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.AuthzPolicy.AuthzRule.StringMatch do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :match_pattern, 0

  field :exact, 1, type: :string, oneof: 0
  field :prefix, 2, type: :string, oneof: 0
  field :suffix, 3, type: :string, oneof: 0
  field :contains, 4, type: :string, oneof: 0
  field :ignore_case, 5, type: :bool, json_name: "ignoreCase"
end

defmodule Google.Cloud.Networksecurity.V1alpha1.AuthzPolicy.AuthzRule.IpBlock do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :prefix, 1, type: :string, deprecated: false
  field :length, 2, type: :int32, deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.AuthzPolicy.AuthzRule.RequestResource.TagValueIdSet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ids, 1, repeated: true, type: :int64, deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.AuthzPolicy.AuthzRule.RequestResource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :tag_value_id_set, 1,
    type:
      Google.Cloud.Networksecurity.V1alpha1.AuthzPolicy.AuthzRule.RequestResource.TagValueIdSet,
    json_name: "tagValueIdSet",
    deprecated: false

  field :iam_service_account, 2,
    type: Google.Cloud.Networksecurity.V1alpha1.AuthzPolicy.AuthzRule.StringMatch,
    json_name: "iamServiceAccount",
    deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.AuthzPolicy.AuthzRule.HeaderMatch do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :value, 2,
    type: Google.Cloud.Networksecurity.V1alpha1.AuthzPolicy.AuthzRule.StringMatch,
    deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.AuthzPolicy.AuthzRule.Principal do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :principal_selector, 1,
    type: Google.Cloud.Networksecurity.V1alpha1.AuthzPolicy.AuthzRule.Principal.PrincipalSelector,
    json_name: "principalSelector",
    enum: true,
    deprecated: false

  field :principal, 2,
    type: Google.Cloud.Networksecurity.V1alpha1.AuthzPolicy.AuthzRule.StringMatch,
    deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.AuthzPolicy.AuthzRule.From.RequestSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :principals, 1,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1alpha1.AuthzPolicy.AuthzRule.Principal,
    deprecated: false

  field :ip_blocks, 2,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1alpha1.AuthzPolicy.AuthzRule.IpBlock,
    json_name: "ipBlocks",
    deprecated: false

  field :resources, 3,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1alpha1.AuthzPolicy.AuthzRule.RequestResource,
    deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.AuthzPolicy.AuthzRule.From do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :sources, 1,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1alpha1.AuthzPolicy.AuthzRule.From.RequestSource,
    deprecated: false

  field :not_sources, 2,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1alpha1.AuthzPolicy.AuthzRule.From.RequestSource,
    json_name: "notSources",
    deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.AuthzPolicy.AuthzRule.To.RequestOperation.HeaderSet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :headers, 1,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1alpha1.AuthzPolicy.AuthzRule.HeaderMatch,
    deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.AuthzPolicy.AuthzRule.To.RequestOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :header_set, 1,
    type:
      Google.Cloud.Networksecurity.V1alpha1.AuthzPolicy.AuthzRule.To.RequestOperation.HeaderSet,
    json_name: "headerSet",
    deprecated: false

  field :hosts, 2,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1alpha1.AuthzPolicy.AuthzRule.StringMatch,
    deprecated: false

  field :paths, 3,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1alpha1.AuthzPolicy.AuthzRule.StringMatch,
    deprecated: false

  field :methods, 4, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.AuthzPolicy.AuthzRule.To do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :operations, 1,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1alpha1.AuthzPolicy.AuthzRule.To.RequestOperation,
    deprecated: false

  field :not_operations, 2,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1alpha1.AuthzPolicy.AuthzRule.To.RequestOperation,
    json_name: "notOperations",
    deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.AuthzPolicy.AuthzRule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :from, 1,
    type: Google.Cloud.Networksecurity.V1alpha1.AuthzPolicy.AuthzRule.From,
    deprecated: false

  field :to, 2,
    type: Google.Cloud.Networksecurity.V1alpha1.AuthzPolicy.AuthzRule.To,
    deprecated: false

  field :when, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.AuthzPolicy.CustomProvider.CloudIap do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Networksecurity.V1alpha1.AuthzPolicy.CustomProvider.AuthzExtension do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resources, 1, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.AuthzPolicy.CustomProvider do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :cloud_iap, 1,
    type: Google.Cloud.Networksecurity.V1alpha1.AuthzPolicy.CustomProvider.CloudIap,
    json_name: "cloudIap",
    deprecated: false

  field :authz_extension, 2,
    type: Google.Cloud.Networksecurity.V1alpha1.AuthzPolicy.CustomProvider.AuthzExtension,
    json_name: "authzExtension",
    deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.AuthzPolicy.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Networksecurity.V1alpha1.AuthzPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :description, 4, type: :string, deprecated: false

  field :labels, 5,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1alpha1.AuthzPolicy.LabelsEntry,
    map: true,
    deprecated: false

  field :target, 6,
    type: Google.Cloud.Networksecurity.V1alpha1.AuthzPolicy.Target,
    deprecated: false

  field :http_rules, 7,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1alpha1.AuthzPolicy.AuthzRule,
    json_name: "httpRules",
    deprecated: false

  field :action, 8,
    type: Google.Cloud.Networksecurity.V1alpha1.AuthzPolicy.AuthzAction,
    enum: true,
    deprecated: false

  field :custom_provider, 10,
    type: Google.Cloud.Networksecurity.V1alpha1.AuthzPolicy.CustomProvider,
    json_name: "customProvider",
    deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.CreateAuthzPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :authz_policy_id, 2, type: :string, json_name: "authzPolicyId", deprecated: false

  field :authz_policy, 3,
    type: Google.Cloud.Networksecurity.V1alpha1.AuthzPolicy,
    json_name: "authzPolicy",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.ListAuthzPoliciesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.ListAuthzPoliciesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :authz_policies, 1,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1alpha1.AuthzPolicy,
    json_name: "authzPolicies"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Networksecurity.V1alpha1.GetAuthzPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.UpdateAuthzPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :authz_policy, 2,
    type: Google.Cloud.Networksecurity.V1alpha1.AuthzPolicy,
    json_name: "authzPolicy",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.DeleteAuthzPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end
