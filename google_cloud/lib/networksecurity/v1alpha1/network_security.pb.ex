defmodule Google.Cloud.Networksecurity.V1alpha1.NetworkSecurity.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.networksecurity.v1alpha1.NetworkSecurity",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ListAuthorizationPolicies,
      Google.Cloud.Networksecurity.V1alpha1.ListAuthorizationPoliciesRequest,
      Google.Cloud.Networksecurity.V1alpha1.ListAuthorizationPoliciesResponse

  rpc :GetAuthorizationPolicy,
      Google.Cloud.Networksecurity.V1alpha1.GetAuthorizationPolicyRequest,
      Google.Cloud.Networksecurity.V1alpha1.AuthorizationPolicy

  rpc :CreateAuthorizationPolicy,
      Google.Cloud.Networksecurity.V1alpha1.CreateAuthorizationPolicyRequest,
      Google.Longrunning.Operation

  rpc :UpdateAuthorizationPolicy,
      Google.Cloud.Networksecurity.V1alpha1.UpdateAuthorizationPolicyRequest,
      Google.Longrunning.Operation

  rpc :DeleteAuthorizationPolicy,
      Google.Cloud.Networksecurity.V1alpha1.DeleteAuthorizationPolicyRequest,
      Google.Longrunning.Operation

  rpc :ListBackendAuthenticationConfigs,
      Google.Cloud.Networksecurity.V1alpha1.ListBackendAuthenticationConfigsRequest,
      Google.Cloud.Networksecurity.V1alpha1.ListBackendAuthenticationConfigsResponse

  rpc :GetBackendAuthenticationConfig,
      Google.Cloud.Networksecurity.V1alpha1.GetBackendAuthenticationConfigRequest,
      Google.Cloud.Networksecurity.V1alpha1.BackendAuthenticationConfig

  rpc :CreateBackendAuthenticationConfig,
      Google.Cloud.Networksecurity.V1alpha1.CreateBackendAuthenticationConfigRequest,
      Google.Longrunning.Operation

  rpc :UpdateBackendAuthenticationConfig,
      Google.Cloud.Networksecurity.V1alpha1.UpdateBackendAuthenticationConfigRequest,
      Google.Longrunning.Operation

  rpc :DeleteBackendAuthenticationConfig,
      Google.Cloud.Networksecurity.V1alpha1.DeleteBackendAuthenticationConfigRequest,
      Google.Longrunning.Operation

  rpc :ListServerTlsPolicies,
      Google.Cloud.Networksecurity.V1alpha1.ListServerTlsPoliciesRequest,
      Google.Cloud.Networksecurity.V1alpha1.ListServerTlsPoliciesResponse

  rpc :GetServerTlsPolicy,
      Google.Cloud.Networksecurity.V1alpha1.GetServerTlsPolicyRequest,
      Google.Cloud.Networksecurity.V1alpha1.ServerTlsPolicy

  rpc :CreateServerTlsPolicy,
      Google.Cloud.Networksecurity.V1alpha1.CreateServerTlsPolicyRequest,
      Google.Longrunning.Operation

  rpc :UpdateServerTlsPolicy,
      Google.Cloud.Networksecurity.V1alpha1.UpdateServerTlsPolicyRequest,
      Google.Longrunning.Operation

  rpc :DeleteServerTlsPolicy,
      Google.Cloud.Networksecurity.V1alpha1.DeleteServerTlsPolicyRequest,
      Google.Longrunning.Operation

  rpc :ListClientTlsPolicies,
      Google.Cloud.Networksecurity.V1alpha1.ListClientTlsPoliciesRequest,
      Google.Cloud.Networksecurity.V1alpha1.ListClientTlsPoliciesResponse

  rpc :GetClientTlsPolicy,
      Google.Cloud.Networksecurity.V1alpha1.GetClientTlsPolicyRequest,
      Google.Cloud.Networksecurity.V1alpha1.ClientTlsPolicy

  rpc :CreateClientTlsPolicy,
      Google.Cloud.Networksecurity.V1alpha1.CreateClientTlsPolicyRequest,
      Google.Longrunning.Operation

  rpc :UpdateClientTlsPolicy,
      Google.Cloud.Networksecurity.V1alpha1.UpdateClientTlsPolicyRequest,
      Google.Longrunning.Operation

  rpc :DeleteClientTlsPolicy,
      Google.Cloud.Networksecurity.V1alpha1.DeleteClientTlsPolicyRequest,
      Google.Longrunning.Operation

  rpc :ListGatewaySecurityPolicies,
      Google.Cloud.Networksecurity.V1alpha1.ListGatewaySecurityPoliciesRequest,
      Google.Cloud.Networksecurity.V1alpha1.ListGatewaySecurityPoliciesResponse

  rpc :GetGatewaySecurityPolicy,
      Google.Cloud.Networksecurity.V1alpha1.GetGatewaySecurityPolicyRequest,
      Google.Cloud.Networksecurity.V1alpha1.GatewaySecurityPolicy

  rpc :CreateGatewaySecurityPolicy,
      Google.Cloud.Networksecurity.V1alpha1.CreateGatewaySecurityPolicyRequest,
      Google.Longrunning.Operation

  rpc :UpdateGatewaySecurityPolicy,
      Google.Cloud.Networksecurity.V1alpha1.UpdateGatewaySecurityPolicyRequest,
      Google.Longrunning.Operation

  rpc :DeleteGatewaySecurityPolicy,
      Google.Cloud.Networksecurity.V1alpha1.DeleteGatewaySecurityPolicyRequest,
      Google.Longrunning.Operation

  rpc :ListGatewaySecurityPolicyRules,
      Google.Cloud.Networksecurity.V1alpha1.ListGatewaySecurityPolicyRulesRequest,
      Google.Cloud.Networksecurity.V1alpha1.ListGatewaySecurityPolicyRulesResponse

  rpc :GetGatewaySecurityPolicyRule,
      Google.Cloud.Networksecurity.V1alpha1.GetGatewaySecurityPolicyRuleRequest,
      Google.Cloud.Networksecurity.V1alpha1.GatewaySecurityPolicyRule

  rpc :CreateGatewaySecurityPolicyRule,
      Google.Cloud.Networksecurity.V1alpha1.CreateGatewaySecurityPolicyRuleRequest,
      Google.Longrunning.Operation

  rpc :UpdateGatewaySecurityPolicyRule,
      Google.Cloud.Networksecurity.V1alpha1.UpdateGatewaySecurityPolicyRuleRequest,
      Google.Longrunning.Operation

  rpc :DeleteGatewaySecurityPolicyRule,
      Google.Cloud.Networksecurity.V1alpha1.DeleteGatewaySecurityPolicyRuleRequest,
      Google.Longrunning.Operation

  rpc :ListUrlLists,
      Google.Cloud.Networksecurity.V1alpha1.ListUrlListsRequest,
      Google.Cloud.Networksecurity.V1alpha1.ListUrlListsResponse

  rpc :GetUrlList,
      Google.Cloud.Networksecurity.V1alpha1.GetUrlListRequest,
      Google.Cloud.Networksecurity.V1alpha1.UrlList

  rpc :CreateUrlList,
      Google.Cloud.Networksecurity.V1alpha1.CreateUrlListRequest,
      Google.Longrunning.Operation

  rpc :UpdateUrlList,
      Google.Cloud.Networksecurity.V1alpha1.UpdateUrlListRequest,
      Google.Longrunning.Operation

  rpc :DeleteUrlList,
      Google.Cloud.Networksecurity.V1alpha1.DeleteUrlListRequest,
      Google.Longrunning.Operation

  rpc :ListTlsInspectionPolicies,
      Google.Cloud.Networksecurity.V1alpha1.ListTlsInspectionPoliciesRequest,
      Google.Cloud.Networksecurity.V1alpha1.ListTlsInspectionPoliciesResponse

  rpc :GetTlsInspectionPolicy,
      Google.Cloud.Networksecurity.V1alpha1.GetTlsInspectionPolicyRequest,
      Google.Cloud.Networksecurity.V1alpha1.TlsInspectionPolicy

  rpc :CreateTlsInspectionPolicy,
      Google.Cloud.Networksecurity.V1alpha1.CreateTlsInspectionPolicyRequest,
      Google.Longrunning.Operation

  rpc :UpdateTlsInspectionPolicy,
      Google.Cloud.Networksecurity.V1alpha1.UpdateTlsInspectionPolicyRequest,
      Google.Longrunning.Operation

  rpc :DeleteTlsInspectionPolicy,
      Google.Cloud.Networksecurity.V1alpha1.DeleteTlsInspectionPolicyRequest,
      Google.Longrunning.Operation

  rpc :ListAuthzPolicies,
      Google.Cloud.Networksecurity.V1alpha1.ListAuthzPoliciesRequest,
      Google.Cloud.Networksecurity.V1alpha1.ListAuthzPoliciesResponse

  rpc :GetAuthzPolicy,
      Google.Cloud.Networksecurity.V1alpha1.GetAuthzPolicyRequest,
      Google.Cloud.Networksecurity.V1alpha1.AuthzPolicy

  rpc :CreateAuthzPolicy,
      Google.Cloud.Networksecurity.V1alpha1.CreateAuthzPolicyRequest,
      Google.Longrunning.Operation

  rpc :UpdateAuthzPolicy,
      Google.Cloud.Networksecurity.V1alpha1.UpdateAuthzPolicyRequest,
      Google.Longrunning.Operation

  rpc :DeleteAuthzPolicy,
      Google.Cloud.Networksecurity.V1alpha1.DeleteAuthzPolicyRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Networksecurity.V1alpha1.NetworkSecurity.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Networksecurity.V1alpha1.NetworkSecurity.Service
end
