defmodule Google.Cloud.Networksecurity.V1alpha1.InterceptEndpointGroup.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :CLOSED, 2
  field :CREATING, 3
  field :DELETING, 4
  field :OUT_OF_SYNC, 5
  field :DELETE_FAILED, 6
end

defmodule Google.Cloud.Networksecurity.V1alpha1.InterceptEndpointGroupAssociation.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :CREATING, 2
  field :DELETING, 3
  field :CLOSED, 4
  field :OUT_OF_SYNC, 5
  field :DELETE_FAILED, 6
end

defmodule Google.Cloud.Networksecurity.V1alpha1.InterceptEndpointGroupAssociation.LocationDetails.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :OUT_OF_SYNC, 2
end

defmodule Google.Cloud.Networksecurity.V1alpha1.InterceptDeploymentGroup.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :CREATING, 2
  field :DELETING, 3
end

defmodule Google.Cloud.Networksecurity.V1alpha1.InterceptDeployment.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :CREATING, 2
  field :DELETING, 3
  field :OUT_OF_SYNC, 4
  field :DELETE_FAILED, 5
end

defmodule Google.Cloud.Networksecurity.V1alpha1.InterceptLocation.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :OUT_OF_SYNC, 2
end

defmodule Google.Cloud.Networksecurity.V1alpha1.InterceptEndpointGroup.ConnectedDeploymentGroup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :locations, 2,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1alpha1.InterceptLocation,
    deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.InterceptEndpointGroup.AssociationDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :network, 2, type: :string, deprecated: false

  field :state, 3,
    type: Google.Cloud.Networksecurity.V1alpha1.InterceptEndpointGroupAssociation.State,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.InterceptEndpointGroup.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Networksecurity.V1alpha1.InterceptEndpointGroup do
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
    type: Google.Cloud.Networksecurity.V1alpha1.InterceptEndpointGroup.LabelsEntry,
    map: true,
    deprecated: false

  field :intercept_deployment_group, 5,
    type: :string,
    json_name: "interceptDeploymentGroup",
    deprecated: false

  field :connected_deployment_group, 11,
    type: Google.Cloud.Networksecurity.V1alpha1.InterceptEndpointGroup.ConnectedDeploymentGroup,
    json_name: "connectedDeploymentGroup",
    deprecated: false

  field :state, 7,
    type: Google.Cloud.Networksecurity.V1alpha1.InterceptEndpointGroup.State,
    enum: true,
    deprecated: false

  field :reconciling, 8, type: :bool, deprecated: false

  field :associations, 9,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1alpha1.InterceptEndpointGroup.AssociationDetails,
    deprecated: false

  field :description, 10, type: :string, deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.ListInterceptEndpointGroupsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.ListInterceptEndpointGroupsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :intercept_endpoint_groups, 1,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1alpha1.InterceptEndpointGroup,
    json_name: "interceptEndpointGroups"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Networksecurity.V1alpha1.GetInterceptEndpointGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.CreateInterceptEndpointGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :intercept_endpoint_group_id, 2,
    type: :string,
    json_name: "interceptEndpointGroupId",
    deprecated: false

  field :intercept_endpoint_group, 3,
    type: Google.Cloud.Networksecurity.V1alpha1.InterceptEndpointGroup,
    json_name: "interceptEndpointGroup",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.UpdateInterceptEndpointGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :intercept_endpoint_group, 2,
    type: Google.Cloud.Networksecurity.V1alpha1.InterceptEndpointGroup,
    json_name: "interceptEndpointGroup",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.DeleteInterceptEndpointGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.InterceptEndpointGroupAssociation.LocationDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :location, 1, type: :string, deprecated: false

  field :state, 2,
    type:
      Google.Cloud.Networksecurity.V1alpha1.InterceptEndpointGroupAssociation.LocationDetails.State,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.InterceptEndpointGroupAssociation.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Networksecurity.V1alpha1.InterceptEndpointGroupAssociation do
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
    type: Google.Cloud.Networksecurity.V1alpha1.InterceptEndpointGroupAssociation.LabelsEntry,
    map: true,
    deprecated: false

  field :intercept_endpoint_group, 5,
    type: :string,
    json_name: "interceptEndpointGroup",
    deprecated: false

  field :network, 6, type: :string, deprecated: false

  field :locations_details, 7,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1alpha1.InterceptEndpointGroupAssociation.LocationDetails,
    json_name: "locationsDetails",
    deprecated: true

  field :state, 8,
    type: Google.Cloud.Networksecurity.V1alpha1.InterceptEndpointGroupAssociation.State,
    enum: true,
    deprecated: false

  field :reconciling, 9, type: :bool, deprecated: false

  field :locations, 10,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1alpha1.InterceptLocation,
    deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.ListInterceptEndpointGroupAssociationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.ListInterceptEndpointGroupAssociationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :intercept_endpoint_group_associations, 1,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1alpha1.InterceptEndpointGroupAssociation,
    json_name: "interceptEndpointGroupAssociations"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Networksecurity.V1alpha1.GetInterceptEndpointGroupAssociationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.CreateInterceptEndpointGroupAssociationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :intercept_endpoint_group_association_id, 2,
    type: :string,
    json_name: "interceptEndpointGroupAssociationId",
    deprecated: false

  field :intercept_endpoint_group_association, 3,
    type: Google.Cloud.Networksecurity.V1alpha1.InterceptEndpointGroupAssociation,
    json_name: "interceptEndpointGroupAssociation",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.UpdateInterceptEndpointGroupAssociationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :intercept_endpoint_group_association, 2,
    type: Google.Cloud.Networksecurity.V1alpha1.InterceptEndpointGroupAssociation,
    json_name: "interceptEndpointGroupAssociation",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.DeleteInterceptEndpointGroupAssociationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.InterceptDeploymentGroup.ConnectedEndpointGroup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.InterceptDeploymentGroup.Deployment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :state, 2,
    type: Google.Cloud.Networksecurity.V1alpha1.InterceptDeployment.State,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.InterceptDeploymentGroup.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Networksecurity.V1alpha1.InterceptDeploymentGroup do
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
    type: Google.Cloud.Networksecurity.V1alpha1.InterceptDeploymentGroup.LabelsEntry,
    map: true,
    deprecated: false

  field :network, 5, type: :string, deprecated: false

  field :connected_endpoint_groups, 6,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1alpha1.InterceptDeploymentGroup.ConnectedEndpointGroup,
    json_name: "connectedEndpointGroups",
    deprecated: false

  field :nested_deployments, 10,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1alpha1.InterceptDeploymentGroup.Deployment,
    json_name: "nestedDeployments",
    deprecated: true

  field :state, 7,
    type: Google.Cloud.Networksecurity.V1alpha1.InterceptDeploymentGroup.State,
    enum: true,
    deprecated: false

  field :reconciling, 8, type: :bool, deprecated: false
  field :description, 9, type: :string, deprecated: false

  field :locations, 11,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1alpha1.InterceptLocation,
    deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.ListInterceptDeploymentGroupsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.ListInterceptDeploymentGroupsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :intercept_deployment_groups, 1,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1alpha1.InterceptDeploymentGroup,
    json_name: "interceptDeploymentGroups"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Networksecurity.V1alpha1.GetInterceptDeploymentGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.CreateInterceptDeploymentGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :intercept_deployment_group_id, 2,
    type: :string,
    json_name: "interceptDeploymentGroupId",
    deprecated: false

  field :intercept_deployment_group, 3,
    type: Google.Cloud.Networksecurity.V1alpha1.InterceptDeploymentGroup,
    json_name: "interceptDeploymentGroup",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.UpdateInterceptDeploymentGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :intercept_deployment_group, 2,
    type: Google.Cloud.Networksecurity.V1alpha1.InterceptDeploymentGroup,
    json_name: "interceptDeploymentGroup",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.DeleteInterceptDeploymentGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.InterceptDeployment.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Networksecurity.V1alpha1.InterceptDeployment do
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
    type: Google.Cloud.Networksecurity.V1alpha1.InterceptDeployment.LabelsEntry,
    map: true,
    deprecated: false

  field :forwarding_rule, 5, type: :string, json_name: "forwardingRule", deprecated: false

  field :intercept_deployment_group, 6,
    type: :string,
    json_name: "interceptDeploymentGroup",
    deprecated: false

  field :state, 7,
    type: Google.Cloud.Networksecurity.V1alpha1.InterceptDeployment.State,
    enum: true,
    deprecated: false

  field :reconciling, 8, type: :bool, deprecated: false
  field :description, 9, type: :string, deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.ListInterceptDeploymentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.ListInterceptDeploymentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :intercept_deployments, 1,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1alpha1.InterceptDeployment,
    json_name: "interceptDeployments"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Networksecurity.V1alpha1.GetInterceptDeploymentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.CreateInterceptDeploymentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :intercept_deployment_id, 2,
    type: :string,
    json_name: "interceptDeploymentId",
    deprecated: false

  field :intercept_deployment, 3,
    type: Google.Cloud.Networksecurity.V1alpha1.InterceptDeployment,
    json_name: "interceptDeployment",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.UpdateInterceptDeploymentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :intercept_deployment, 2,
    type: Google.Cloud.Networksecurity.V1alpha1.InterceptDeployment,
    json_name: "interceptDeployment",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.DeleteInterceptDeploymentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.InterceptLocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :location, 1, type: :string, deprecated: false

  field :state, 2,
    type: Google.Cloud.Networksecurity.V1alpha1.InterceptLocation.State,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.Intercept.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.networksecurity.v1alpha1.Intercept",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ListInterceptEndpointGroups,
      Google.Cloud.Networksecurity.V1alpha1.ListInterceptEndpointGroupsRequest,
      Google.Cloud.Networksecurity.V1alpha1.ListInterceptEndpointGroupsResponse

  rpc :GetInterceptEndpointGroup,
      Google.Cloud.Networksecurity.V1alpha1.GetInterceptEndpointGroupRequest,
      Google.Cloud.Networksecurity.V1alpha1.InterceptEndpointGroup

  rpc :CreateInterceptEndpointGroup,
      Google.Cloud.Networksecurity.V1alpha1.CreateInterceptEndpointGroupRequest,
      Google.Longrunning.Operation

  rpc :UpdateInterceptEndpointGroup,
      Google.Cloud.Networksecurity.V1alpha1.UpdateInterceptEndpointGroupRequest,
      Google.Longrunning.Operation

  rpc :DeleteInterceptEndpointGroup,
      Google.Cloud.Networksecurity.V1alpha1.DeleteInterceptEndpointGroupRequest,
      Google.Longrunning.Operation

  rpc :ListInterceptEndpointGroupAssociations,
      Google.Cloud.Networksecurity.V1alpha1.ListInterceptEndpointGroupAssociationsRequest,
      Google.Cloud.Networksecurity.V1alpha1.ListInterceptEndpointGroupAssociationsResponse

  rpc :GetInterceptEndpointGroupAssociation,
      Google.Cloud.Networksecurity.V1alpha1.GetInterceptEndpointGroupAssociationRequest,
      Google.Cloud.Networksecurity.V1alpha1.InterceptEndpointGroupAssociation

  rpc :CreateInterceptEndpointGroupAssociation,
      Google.Cloud.Networksecurity.V1alpha1.CreateInterceptEndpointGroupAssociationRequest,
      Google.Longrunning.Operation

  rpc :UpdateInterceptEndpointGroupAssociation,
      Google.Cloud.Networksecurity.V1alpha1.UpdateInterceptEndpointGroupAssociationRequest,
      Google.Longrunning.Operation

  rpc :DeleteInterceptEndpointGroupAssociation,
      Google.Cloud.Networksecurity.V1alpha1.DeleteInterceptEndpointGroupAssociationRequest,
      Google.Longrunning.Operation

  rpc :ListInterceptDeploymentGroups,
      Google.Cloud.Networksecurity.V1alpha1.ListInterceptDeploymentGroupsRequest,
      Google.Cloud.Networksecurity.V1alpha1.ListInterceptDeploymentGroupsResponse

  rpc :GetInterceptDeploymentGroup,
      Google.Cloud.Networksecurity.V1alpha1.GetInterceptDeploymentGroupRequest,
      Google.Cloud.Networksecurity.V1alpha1.InterceptDeploymentGroup

  rpc :CreateInterceptDeploymentGroup,
      Google.Cloud.Networksecurity.V1alpha1.CreateInterceptDeploymentGroupRequest,
      Google.Longrunning.Operation

  rpc :UpdateInterceptDeploymentGroup,
      Google.Cloud.Networksecurity.V1alpha1.UpdateInterceptDeploymentGroupRequest,
      Google.Longrunning.Operation

  rpc :DeleteInterceptDeploymentGroup,
      Google.Cloud.Networksecurity.V1alpha1.DeleteInterceptDeploymentGroupRequest,
      Google.Longrunning.Operation

  rpc :ListInterceptDeployments,
      Google.Cloud.Networksecurity.V1alpha1.ListInterceptDeploymentsRequest,
      Google.Cloud.Networksecurity.V1alpha1.ListInterceptDeploymentsResponse

  rpc :GetInterceptDeployment,
      Google.Cloud.Networksecurity.V1alpha1.GetInterceptDeploymentRequest,
      Google.Cloud.Networksecurity.V1alpha1.InterceptDeployment

  rpc :CreateInterceptDeployment,
      Google.Cloud.Networksecurity.V1alpha1.CreateInterceptDeploymentRequest,
      Google.Longrunning.Operation

  rpc :UpdateInterceptDeployment,
      Google.Cloud.Networksecurity.V1alpha1.UpdateInterceptDeploymentRequest,
      Google.Longrunning.Operation

  rpc :DeleteInterceptDeployment,
      Google.Cloud.Networksecurity.V1alpha1.DeleteInterceptDeploymentRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Networksecurity.V1alpha1.Intercept.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Networksecurity.V1alpha1.Intercept.Service
end
