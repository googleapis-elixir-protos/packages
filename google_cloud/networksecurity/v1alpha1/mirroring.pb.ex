defmodule Google.Cloud.Networksecurity.V1alpha1.MirroringEndpointGroup.State do
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

defmodule Google.Cloud.Networksecurity.V1alpha1.MirroringEndpointGroup.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :DIRECT, 1
end

defmodule Google.Cloud.Networksecurity.V1alpha1.MirroringEndpointGroupAssociation.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :CREATING, 3
  field :DELETING, 4
  field :CLOSED, 5
  field :OUT_OF_SYNC, 6
  field :DELETE_FAILED, 7
end

defmodule Google.Cloud.Networksecurity.V1alpha1.MirroringEndpointGroupAssociation.LocationDetails.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :OUT_OF_SYNC, 2
end

defmodule Google.Cloud.Networksecurity.V1alpha1.MirroringDeploymentGroup.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :CREATING, 2
  field :DELETING, 3
  field :CLOSED, 4
end

defmodule Google.Cloud.Networksecurity.V1alpha1.MirroringDeployment.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :CREATING, 2
  field :DELETING, 3
  field :OUT_OF_SYNC, 4
  field :DELETE_FAILED, 5
end

defmodule Google.Cloud.Networksecurity.V1alpha1.MirroringLocation.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :OUT_OF_SYNC, 2
end

defmodule Google.Cloud.Networksecurity.V1alpha1.MirroringEndpointGroup.ConnectedDeploymentGroup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :locations, 2,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1alpha1.MirroringLocation,
    deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.MirroringEndpointGroup.AssociationDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :network, 2, type: :string, deprecated: false

  field :state, 3,
    type: Google.Cloud.Networksecurity.V1alpha1.MirroringEndpointGroupAssociation.State,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.MirroringEndpointGroup.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Networksecurity.V1alpha1.MirroringEndpointGroup do
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
    type: Google.Cloud.Networksecurity.V1alpha1.MirroringEndpointGroup.LabelsEntry,
    map: true,
    deprecated: false

  field :mirroring_deployment_group, 5,
    type: :string,
    json_name: "mirroringDeploymentGroup",
    deprecated: false

  field :connected_deployment_groups, 13,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1alpha1.MirroringEndpointGroup.ConnectedDeploymentGroup,
    json_name: "connectedDeploymentGroups",
    deprecated: false

  field :state, 7,
    type: Google.Cloud.Networksecurity.V1alpha1.MirroringEndpointGroup.State,
    enum: true,
    deprecated: false

  field :reconciling, 8, type: :bool, deprecated: false

  field :type, 11,
    type: Google.Cloud.Networksecurity.V1alpha1.MirroringEndpointGroup.Type,
    enum: true,
    deprecated: false

  field :associations, 9,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1alpha1.MirroringEndpointGroup.AssociationDetails,
    deprecated: false

  field :description, 10, type: :string, deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.ListMirroringEndpointGroupsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.ListMirroringEndpointGroupsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :mirroring_endpoint_groups, 1,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1alpha1.MirroringEndpointGroup,
    json_name: "mirroringEndpointGroups"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Networksecurity.V1alpha1.GetMirroringEndpointGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.CreateMirroringEndpointGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :mirroring_endpoint_group_id, 2,
    type: :string,
    json_name: "mirroringEndpointGroupId",
    deprecated: false

  field :mirroring_endpoint_group, 3,
    type: Google.Cloud.Networksecurity.V1alpha1.MirroringEndpointGroup,
    json_name: "mirroringEndpointGroup",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.UpdateMirroringEndpointGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :mirroring_endpoint_group, 2,
    type: Google.Cloud.Networksecurity.V1alpha1.MirroringEndpointGroup,
    json_name: "mirroringEndpointGroup",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.DeleteMirroringEndpointGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.MirroringEndpointGroupAssociation.LocationDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :location, 1, type: :string, deprecated: false

  field :state, 2,
    type:
      Google.Cloud.Networksecurity.V1alpha1.MirroringEndpointGroupAssociation.LocationDetails.State,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.MirroringEndpointGroupAssociation.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Networksecurity.V1alpha1.MirroringEndpointGroupAssociation do
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
    type: Google.Cloud.Networksecurity.V1alpha1.MirroringEndpointGroupAssociation.LabelsEntry,
    map: true,
    deprecated: false

  field :mirroring_endpoint_group, 5,
    type: :string,
    json_name: "mirroringEndpointGroup",
    deprecated: false

  field :network, 6, type: :string, deprecated: false

  field :locations_details, 7,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1alpha1.MirroringEndpointGroupAssociation.LocationDetails,
    json_name: "locationsDetails",
    deprecated: true

  field :state, 8,
    type: Google.Cloud.Networksecurity.V1alpha1.MirroringEndpointGroupAssociation.State,
    enum: true,
    deprecated: false

  field :reconciling, 9, type: :bool, deprecated: false

  field :locations, 10,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1alpha1.MirroringLocation,
    deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.ListMirroringEndpointGroupAssociationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.ListMirroringEndpointGroupAssociationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :mirroring_endpoint_group_associations, 1,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1alpha1.MirroringEndpointGroupAssociation,
    json_name: "mirroringEndpointGroupAssociations"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Networksecurity.V1alpha1.GetMirroringEndpointGroupAssociationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.CreateMirroringEndpointGroupAssociationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :mirroring_endpoint_group_association_id, 2,
    type: :string,
    json_name: "mirroringEndpointGroupAssociationId",
    deprecated: false

  field :mirroring_endpoint_group_association, 3,
    type: Google.Cloud.Networksecurity.V1alpha1.MirroringEndpointGroupAssociation,
    json_name: "mirroringEndpointGroupAssociation",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.UpdateMirroringEndpointGroupAssociationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :mirroring_endpoint_group_association, 2,
    type: Google.Cloud.Networksecurity.V1alpha1.MirroringEndpointGroupAssociation,
    json_name: "mirroringEndpointGroupAssociation",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.DeleteMirroringEndpointGroupAssociationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.MirroringDeploymentGroup.ConnectedEndpointGroup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.MirroringDeploymentGroup.Deployment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :state, 2,
    type: Google.Cloud.Networksecurity.V1alpha1.MirroringDeployment.State,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.MirroringDeploymentGroup.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Networksecurity.V1alpha1.MirroringDeploymentGroup do
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
    type: Google.Cloud.Networksecurity.V1alpha1.MirroringDeploymentGroup.LabelsEntry,
    map: true,
    deprecated: false

  field :network, 5, type: :string, deprecated: false

  field :connected_endpoint_groups, 6,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1alpha1.MirroringDeploymentGroup.ConnectedEndpointGroup,
    json_name: "connectedEndpointGroups",
    deprecated: false

  field :nested_deployments, 10,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1alpha1.MirroringDeploymentGroup.Deployment,
    json_name: "nestedDeployments",
    deprecated: true

  field :state, 7,
    type: Google.Cloud.Networksecurity.V1alpha1.MirroringDeploymentGroup.State,
    enum: true,
    deprecated: false

  field :reconciling, 8, type: :bool, deprecated: false
  field :description, 9, type: :string, deprecated: false

  field :locations, 11,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1alpha1.MirroringLocation,
    deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.ListMirroringDeploymentGroupsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.ListMirroringDeploymentGroupsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :mirroring_deployment_groups, 1,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1alpha1.MirroringDeploymentGroup,
    json_name: "mirroringDeploymentGroups"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Networksecurity.V1alpha1.GetMirroringDeploymentGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.CreateMirroringDeploymentGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :mirroring_deployment_group_id, 2,
    type: :string,
    json_name: "mirroringDeploymentGroupId",
    deprecated: false

  field :mirroring_deployment_group, 3,
    type: Google.Cloud.Networksecurity.V1alpha1.MirroringDeploymentGroup,
    json_name: "mirroringDeploymentGroup",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.UpdateMirroringDeploymentGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :mirroring_deployment_group, 2,
    type: Google.Cloud.Networksecurity.V1alpha1.MirroringDeploymentGroup,
    json_name: "mirroringDeploymentGroup",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.DeleteMirroringDeploymentGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.MirroringDeployment.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Networksecurity.V1alpha1.MirroringDeployment do
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
    type: Google.Cloud.Networksecurity.V1alpha1.MirroringDeployment.LabelsEntry,
    map: true,
    deprecated: false

  field :forwarding_rule, 5, type: :string, json_name: "forwardingRule", deprecated: false

  field :mirroring_deployment_group, 6,
    type: :string,
    json_name: "mirroringDeploymentGroup",
    deprecated: false

  field :state, 7,
    type: Google.Cloud.Networksecurity.V1alpha1.MirroringDeployment.State,
    enum: true,
    deprecated: false

  field :reconciling, 8, type: :bool, deprecated: false
  field :description, 9, type: :string, deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.ListMirroringDeploymentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.ListMirroringDeploymentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :mirroring_deployments, 1,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1alpha1.MirroringDeployment,
    json_name: "mirroringDeployments"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Networksecurity.V1alpha1.GetMirroringDeploymentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.CreateMirroringDeploymentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :mirroring_deployment_id, 2,
    type: :string,
    json_name: "mirroringDeploymentId",
    deprecated: false

  field :mirroring_deployment, 3,
    type: Google.Cloud.Networksecurity.V1alpha1.MirroringDeployment,
    json_name: "mirroringDeployment",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.UpdateMirroringDeploymentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :mirroring_deployment, 2,
    type: Google.Cloud.Networksecurity.V1alpha1.MirroringDeployment,
    json_name: "mirroringDeployment",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.DeleteMirroringDeploymentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.MirroringLocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :location, 1, type: :string, deprecated: false

  field :state, 2,
    type: Google.Cloud.Networksecurity.V1alpha1.MirroringLocation.State,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.Mirroring.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.networksecurity.v1alpha1.Mirroring",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ListMirroringEndpointGroups,
      Google.Cloud.Networksecurity.V1alpha1.ListMirroringEndpointGroupsRequest,
      Google.Cloud.Networksecurity.V1alpha1.ListMirroringEndpointGroupsResponse

  rpc :GetMirroringEndpointGroup,
      Google.Cloud.Networksecurity.V1alpha1.GetMirroringEndpointGroupRequest,
      Google.Cloud.Networksecurity.V1alpha1.MirroringEndpointGroup

  rpc :CreateMirroringEndpointGroup,
      Google.Cloud.Networksecurity.V1alpha1.CreateMirroringEndpointGroupRequest,
      Google.Longrunning.Operation

  rpc :UpdateMirroringEndpointGroup,
      Google.Cloud.Networksecurity.V1alpha1.UpdateMirroringEndpointGroupRequest,
      Google.Longrunning.Operation

  rpc :DeleteMirroringEndpointGroup,
      Google.Cloud.Networksecurity.V1alpha1.DeleteMirroringEndpointGroupRequest,
      Google.Longrunning.Operation

  rpc :ListMirroringEndpointGroupAssociations,
      Google.Cloud.Networksecurity.V1alpha1.ListMirroringEndpointGroupAssociationsRequest,
      Google.Cloud.Networksecurity.V1alpha1.ListMirroringEndpointGroupAssociationsResponse

  rpc :GetMirroringEndpointGroupAssociation,
      Google.Cloud.Networksecurity.V1alpha1.GetMirroringEndpointGroupAssociationRequest,
      Google.Cloud.Networksecurity.V1alpha1.MirroringEndpointGroupAssociation

  rpc :CreateMirroringEndpointGroupAssociation,
      Google.Cloud.Networksecurity.V1alpha1.CreateMirroringEndpointGroupAssociationRequest,
      Google.Longrunning.Operation

  rpc :UpdateMirroringEndpointGroupAssociation,
      Google.Cloud.Networksecurity.V1alpha1.UpdateMirroringEndpointGroupAssociationRequest,
      Google.Longrunning.Operation

  rpc :DeleteMirroringEndpointGroupAssociation,
      Google.Cloud.Networksecurity.V1alpha1.DeleteMirroringEndpointGroupAssociationRequest,
      Google.Longrunning.Operation

  rpc :ListMirroringDeploymentGroups,
      Google.Cloud.Networksecurity.V1alpha1.ListMirroringDeploymentGroupsRequest,
      Google.Cloud.Networksecurity.V1alpha1.ListMirroringDeploymentGroupsResponse

  rpc :GetMirroringDeploymentGroup,
      Google.Cloud.Networksecurity.V1alpha1.GetMirroringDeploymentGroupRequest,
      Google.Cloud.Networksecurity.V1alpha1.MirroringDeploymentGroup

  rpc :CreateMirroringDeploymentGroup,
      Google.Cloud.Networksecurity.V1alpha1.CreateMirroringDeploymentGroupRequest,
      Google.Longrunning.Operation

  rpc :UpdateMirroringDeploymentGroup,
      Google.Cloud.Networksecurity.V1alpha1.UpdateMirroringDeploymentGroupRequest,
      Google.Longrunning.Operation

  rpc :DeleteMirroringDeploymentGroup,
      Google.Cloud.Networksecurity.V1alpha1.DeleteMirroringDeploymentGroupRequest,
      Google.Longrunning.Operation

  rpc :ListMirroringDeployments,
      Google.Cloud.Networksecurity.V1alpha1.ListMirroringDeploymentsRequest,
      Google.Cloud.Networksecurity.V1alpha1.ListMirroringDeploymentsResponse

  rpc :GetMirroringDeployment,
      Google.Cloud.Networksecurity.V1alpha1.GetMirroringDeploymentRequest,
      Google.Cloud.Networksecurity.V1alpha1.MirroringDeployment

  rpc :CreateMirroringDeployment,
      Google.Cloud.Networksecurity.V1alpha1.CreateMirroringDeploymentRequest,
      Google.Longrunning.Operation

  rpc :UpdateMirroringDeployment,
      Google.Cloud.Networksecurity.V1alpha1.UpdateMirroringDeploymentRequest,
      Google.Longrunning.Operation

  rpc :DeleteMirroringDeployment,
      Google.Cloud.Networksecurity.V1alpha1.DeleteMirroringDeploymentRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Networksecurity.V1alpha1.Mirroring.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Networksecurity.V1alpha1.Mirroring.Service
end
