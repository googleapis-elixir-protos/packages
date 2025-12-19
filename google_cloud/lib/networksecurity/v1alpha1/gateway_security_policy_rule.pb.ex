defmodule Google.Cloud.Networksecurity.V1alpha1.GatewaySecurityPolicyRule.BasicProfile do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :BASIC_PROFILE_UNSPECIFIED, 0
  field :ALLOW, 1
  field :DENY, 2
end

defmodule Google.Cloud.Networksecurity.V1alpha1.GatewaySecurityPolicyRule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :profile, 0

  field :basic_profile, 9,
    type: Google.Cloud.Networksecurity.V1alpha1.GatewaySecurityPolicyRule.BasicProfile,
    json_name: "basicProfile",
    enum: true,
    oneof: 0,
    deprecated: false

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :enabled, 4, type: :bool, deprecated: false
  field :priority, 5, type: :int32, deprecated: false
  field :description, 6, type: :string, deprecated: false
  field :session_matcher, 7, type: :string, json_name: "sessionMatcher", deprecated: false
  field :application_matcher, 8, type: :string, json_name: "applicationMatcher", deprecated: false

  field :tls_inspection_enabled, 10,
    type: :bool,
    json_name: "tlsInspectionEnabled",
    deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.CreateGatewaySecurityPolicyRuleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :gateway_security_policy_rule, 2,
    type: Google.Cloud.Networksecurity.V1alpha1.GatewaySecurityPolicyRule,
    json_name: "gatewaySecurityPolicyRule",
    deprecated: false

  field :gateway_security_policy_rule_id, 3,
    type: :string,
    json_name: "gatewaySecurityPolicyRuleId"
end

defmodule Google.Cloud.Networksecurity.V1alpha1.GetGatewaySecurityPolicyRuleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.UpdateGatewaySecurityPolicyRuleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :gateway_security_policy_rule, 2,
    type: Google.Cloud.Networksecurity.V1alpha1.GatewaySecurityPolicyRule,
    json_name: "gatewaySecurityPolicyRule",
    deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.ListGatewaySecurityPolicyRulesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Networksecurity.V1alpha1.ListGatewaySecurityPolicyRulesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :gateway_security_policy_rules, 1,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1alpha1.GatewaySecurityPolicyRule,
    json_name: "gatewaySecurityPolicyRules"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Networksecurity.V1alpha1.DeleteGatewaySecurityPolicyRuleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
