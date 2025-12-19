defmodule Google.Cloud.Networksecurity.V1alpha1.PartnerSSEGateway.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CUSTOMER_ATTACHED, 1
  field :CUSTOMER_DETACHED, 2
end

defmodule Google.Cloud.Networksecurity.V1alpha1.PartnerSSEGateway.PartnerSSEGatewaySymantecOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :symantec_location_uuid, 1,
    type: :string,
    json_name: "symantecLocationUuid",
    deprecated: false

  field :symantec_site_target_host, 2,
    type: :string,
    json_name: "symantecSiteTargetHost",
    deprecated: false

  field :symantec_site, 3, type: :string, json_name: "symantecSite", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.PartnerSSEGateway.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Networksecurity.V1alpha1.PartnerSSEGateway do
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
    type: Google.Cloud.Networksecurity.V1alpha1.PartnerSSEGateway.LabelsEntry,
    map: true,
    deprecated: false

  field :sse_vpc_subnet_range, 5, type: :string, json_name: "sseVpcSubnetRange", deprecated: true
  field :sse_vpc_target_ip, 6, type: :string, json_name: "sseVpcTargetIp", deprecated: true

  field :sse_gateway_reference_id, 7,
    type: :string,
    json_name: "sseGatewayReferenceId",
    deprecated: false

  field :sse_bgp_ips, 8, repeated: true, type: :string, json_name: "sseBgpIps", deprecated: false
  field :sse_bgp_asn, 9, type: :int32, json_name: "sseBgpAsn", deprecated: false

  field :partner_vpc_subnet_range, 11,
    type: :string,
    json_name: "partnerVpcSubnetRange",
    deprecated: true

  field :partner_sse_realm, 12, type: :string, json_name: "partnerSseRealm", deprecated: false
  field :sse_subnet_range, 17, type: :string, json_name: "sseSubnetRange", deprecated: false
  field :sse_target_ip, 18, type: :string, json_name: "sseTargetIp", deprecated: false

  field :partner_subnet_range, 19,
    type: :string,
    json_name: "partnerSubnetRange",
    deprecated: false

  field :vni, 20, type: :int32, deprecated: false

  field :symantec_options, 21,
    type:
      Google.Cloud.Networksecurity.V1alpha1.PartnerSSEGateway.PartnerSSEGatewaySymantecOptions,
    json_name: "symantecOptions",
    deprecated: false

  field :sse_project, 22, type: :string, json_name: "sseProject", deprecated: false
  field :sse_network, 23, type: :string, json_name: "sseNetwork", deprecated: false

  field :partner_sse_environment, 24,
    type: :string,
    json_name: "partnerSseEnvironment",
    deprecated: false

  field :country, 25, type: :string, deprecated: false
  field :timezone, 26, type: :string, deprecated: false
  field :capacity_bps, 28, type: :int64, json_name: "capacityBps", deprecated: false

  field :state, 29,
    type: Google.Cloud.Networksecurity.V1alpha1.PartnerSSEGateway.State,
    enum: true,
    deprecated: false

  field :prober_subnet_ranges, 30,
    repeated: true,
    type: :string,
    json_name: "proberSubnetRanges",
    deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.ListPartnerSSEGatewaysRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Networksecurity.V1alpha1.ListPartnerSSEGatewaysResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :partner_sse_gateways, 1,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1alpha1.PartnerSSEGateway,
    json_name: "partnerSseGateways"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Networksecurity.V1alpha1.GetPartnerSSEGatewayRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.CreatePartnerSSEGatewayRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :partner_sse_gateway_id, 2,
    type: :string,
    json_name: "partnerSseGatewayId",
    deprecated: false

  field :partner_sse_gateway, 3,
    type: Google.Cloud.Networksecurity.V1alpha1.PartnerSSEGateway,
    json_name: "partnerSseGateway",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.DeletePartnerSSEGatewayRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.UpdatePartnerSSEGatewayRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :partner_sse_gateway, 1,
    type: Google.Cloud.Networksecurity.V1alpha1.PartnerSSEGateway,
    json_name: "partnerSseGateway",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.SSEGatewayReference.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Networksecurity.V1alpha1.SSEGatewayReference do
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
    type: Google.Cloud.Networksecurity.V1alpha1.SSEGatewayReference.LabelsEntry,
    map: true,
    deprecated: false

  field :partner_sse_realm, 5, type: :string, json_name: "partnerSseRealm", deprecated: false

  field :prober_subnet_ranges, 7,
    repeated: true,
    type: :string,
    json_name: "proberSubnetRanges",
    deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.ListSSEGatewayReferencesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Networksecurity.V1alpha1.ListSSEGatewayReferencesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :sse_gateway_references, 1,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1alpha1.SSEGatewayReference,
    json_name: "sseGatewayReferences"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Networksecurity.V1alpha1.GetSSEGatewayReferenceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.SSEGatewayService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.networksecurity.v1alpha1.SSEGatewayService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ListPartnerSSEGateways,
      Google.Cloud.Networksecurity.V1alpha1.ListPartnerSSEGatewaysRequest,
      Google.Cloud.Networksecurity.V1alpha1.ListPartnerSSEGatewaysResponse

  rpc :GetPartnerSSEGateway,
      Google.Cloud.Networksecurity.V1alpha1.GetPartnerSSEGatewayRequest,
      Google.Cloud.Networksecurity.V1alpha1.PartnerSSEGateway

  rpc :CreatePartnerSSEGateway,
      Google.Cloud.Networksecurity.V1alpha1.CreatePartnerSSEGatewayRequest,
      Google.Longrunning.Operation

  rpc :DeletePartnerSSEGateway,
      Google.Cloud.Networksecurity.V1alpha1.DeletePartnerSSEGatewayRequest,
      Google.Longrunning.Operation

  rpc :UpdatePartnerSSEGateway,
      Google.Cloud.Networksecurity.V1alpha1.UpdatePartnerSSEGatewayRequest,
      Google.Longrunning.Operation

  rpc :ListSSEGatewayReferences,
      Google.Cloud.Networksecurity.V1alpha1.ListSSEGatewayReferencesRequest,
      Google.Cloud.Networksecurity.V1alpha1.ListSSEGatewayReferencesResponse

  rpc :GetSSEGatewayReference,
      Google.Cloud.Networksecurity.V1alpha1.GetSSEGatewayReferenceRequest,
      Google.Cloud.Networksecurity.V1alpha1.SSEGatewayReference
end

defmodule Google.Cloud.Networksecurity.V1alpha1.SSEGatewayService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Networksecurity.V1alpha1.SSEGatewayService.Service
end
