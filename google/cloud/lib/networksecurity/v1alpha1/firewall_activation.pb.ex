defmodule Google.Cloud.Networksecurity.V1alpha1.FirewallEndpoint.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :ACTIVE, 2
  field :DELETING, 3
  field :INACTIVE, 4
end

defmodule Google.Cloud.Networksecurity.V1alpha1.FirewallEndpointAssociation.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :ACTIVE, 2
  field :DELETING, 3
  field :INACTIVE, 4
  field :ORPHAN, 5
end

defmodule Google.Cloud.Networksecurity.V1alpha1.FirewallEndpoint.AssociationReference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :network, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.FirewallEndpoint.EndpointSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :jumbo_frames_enabled, 1, type: :bool, json_name: "jumboFramesEnabled", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.FirewallEndpoint.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Networksecurity.V1alpha1.FirewallEndpoint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :description, 9, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1alpha1.FirewallEndpoint.LabelsEntry,
    map: true,
    deprecated: false

  field :state, 5,
    type: Google.Cloud.Networksecurity.V1alpha1.FirewallEndpoint.State,
    enum: true,
    deprecated: false

  field :reconciling, 6, type: :bool, deprecated: false

  field :associated_networks, 7,
    repeated: true,
    type: :string,
    json_name: "associatedNetworks",
    deprecated: true

  field :associations, 13,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1alpha1.FirewallEndpoint.AssociationReference,
    deprecated: false

  field :satisfies_pzs, 14,
    proto3_optional: true,
    type: :bool,
    json_name: "satisfiesPzs",
    deprecated: false

  field :satisfies_pzi, 15,
    proto3_optional: true,
    type: :bool,
    json_name: "satisfiesPzi",
    deprecated: false

  field :billing_project_id, 8, type: :string, json_name: "billingProjectId", deprecated: false

  field :endpoint_settings, 19,
    type: Google.Cloud.Networksecurity.V1alpha1.FirewallEndpoint.EndpointSettings,
    json_name: "endpointSettings",
    deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.ListFirewallEndpointsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Networksecurity.V1alpha1.ListFirewallEndpointsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :firewall_endpoints, 1,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1alpha1.FirewallEndpoint,
    json_name: "firewallEndpoints"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Networksecurity.V1alpha1.GetFirewallEndpointRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.CreateFirewallEndpointRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :firewall_endpoint_id, 2,
    type: :string,
    json_name: "firewallEndpointId",
    deprecated: false

  field :firewall_endpoint, 3,
    type: Google.Cloud.Networksecurity.V1alpha1.FirewallEndpoint,
    json_name: "firewallEndpoint",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.UpdateFirewallEndpointRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :firewall_endpoint, 2,
    type: Google.Cloud.Networksecurity.V1alpha1.FirewallEndpoint,
    json_name: "firewallEndpoint",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.DeleteFirewallEndpointRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.FirewallEndpointAssociation.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Networksecurity.V1alpha1.FirewallEndpointAssociation do
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

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1alpha1.FirewallEndpointAssociation.LabelsEntry,
    map: true,
    deprecated: false

  field :state, 5,
    type: Google.Cloud.Networksecurity.V1alpha1.FirewallEndpointAssociation.State,
    enum: true,
    deprecated: false

  field :network, 6, type: :string, deprecated: false
  field :firewall_endpoint, 7, type: :string, json_name: "firewallEndpoint", deprecated: false

  field :tls_inspection_policy, 8,
    type: :string,
    json_name: "tlsInspectionPolicy",
    deprecated: false

  field :reconciling, 9, type: :bool, deprecated: false
  field :disabled, 10, type: :bool, deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.ListFirewallEndpointAssociationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Networksecurity.V1alpha1.ListFirewallEndpointAssociationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :firewall_endpoint_associations, 1,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1alpha1.FirewallEndpointAssociation,
    json_name: "firewallEndpointAssociations"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Networksecurity.V1alpha1.GetFirewallEndpointAssociationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.CreateFirewallEndpointAssociationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :firewall_endpoint_association_id, 2,
    type: :string,
    json_name: "firewallEndpointAssociationId",
    deprecated: false

  field :firewall_endpoint_association, 3,
    type: Google.Cloud.Networksecurity.V1alpha1.FirewallEndpointAssociation,
    json_name: "firewallEndpointAssociation",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.DeleteFirewallEndpointAssociationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.UpdateFirewallEndpointAssociationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :firewall_endpoint_association, 2,
    type: Google.Cloud.Networksecurity.V1alpha1.FirewallEndpointAssociation,
    json_name: "firewallEndpointAssociation",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.FirewallActivation.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.networksecurity.v1alpha1.FirewallActivation",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ListFirewallEndpoints,
      Google.Cloud.Networksecurity.V1alpha1.ListFirewallEndpointsRequest,
      Google.Cloud.Networksecurity.V1alpha1.ListFirewallEndpointsResponse

  rpc :GetFirewallEndpoint,
      Google.Cloud.Networksecurity.V1alpha1.GetFirewallEndpointRequest,
      Google.Cloud.Networksecurity.V1alpha1.FirewallEndpoint

  rpc :CreateFirewallEndpoint,
      Google.Cloud.Networksecurity.V1alpha1.CreateFirewallEndpointRequest,
      Google.Longrunning.Operation

  rpc :DeleteFirewallEndpoint,
      Google.Cloud.Networksecurity.V1alpha1.DeleteFirewallEndpointRequest,
      Google.Longrunning.Operation

  rpc :UpdateFirewallEndpoint,
      Google.Cloud.Networksecurity.V1alpha1.UpdateFirewallEndpointRequest,
      Google.Longrunning.Operation

  rpc :ListFirewallEndpointAssociations,
      Google.Cloud.Networksecurity.V1alpha1.ListFirewallEndpointAssociationsRequest,
      Google.Cloud.Networksecurity.V1alpha1.ListFirewallEndpointAssociationsResponse

  rpc :GetFirewallEndpointAssociation,
      Google.Cloud.Networksecurity.V1alpha1.GetFirewallEndpointAssociationRequest,
      Google.Cloud.Networksecurity.V1alpha1.FirewallEndpointAssociation

  rpc :CreateFirewallEndpointAssociation,
      Google.Cloud.Networksecurity.V1alpha1.CreateFirewallEndpointAssociationRequest,
      Google.Longrunning.Operation

  rpc :DeleteFirewallEndpointAssociation,
      Google.Cloud.Networksecurity.V1alpha1.DeleteFirewallEndpointAssociationRequest,
      Google.Longrunning.Operation

  rpc :UpdateFirewallEndpointAssociation,
      Google.Cloud.Networksecurity.V1alpha1.UpdateFirewallEndpointAssociationRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Networksecurity.V1alpha1.FirewallActivation.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Networksecurity.V1alpha1.FirewallActivation.Service
end
