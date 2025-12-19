defmodule Google.Cloud.Networksecurity.V1alpha1.SACRealm.SecurityService do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SECURITY_SERVICE_UNSPECIFIED, 0
  field :PALO_ALTO_PRISMA_ACCESS, 1
  field :SYMANTEC_CLOUD_SWG, 2
end

defmodule Google.Cloud.Networksecurity.V1alpha1.SACRealm.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :PENDING_PARTNER_ATTACHMENT, 7
  field :PARTNER_ATTACHED, 1
  field :PARTNER_DETACHED, 2
  field :KEY_EXPIRED, 3
end

defmodule Google.Cloud.Networksecurity.V1alpha1.SACRealm.SACRealmSymantecOptions.SymantecConnectionState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SYMANTEC_CONNECTION_STATE_UNSPECIFIED, 0
  field :SUCCEEDED, 1
  field :READ_SECRET_FAILED, 2
  field :REQUEST_TO_SYMANTEC_FAILED, 3
end

defmodule Google.Cloud.Networksecurity.V1alpha1.SACAttachment.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :PENDING_PARTNER_ATTACHMENT, 1
  field :PARTNER_ATTACHED, 2
  field :PARTNER_DETACHED, 3
end

defmodule Google.Cloud.Networksecurity.V1alpha1.PartnerSSERealm.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CUSTOMER_ATTACHED, 1
  field :CUSTOMER_DETACHED, 2
end

defmodule Google.Cloud.Networksecurity.V1alpha1.SACRealm.PairingKey do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string, deprecated: false

  field :expire_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "expireTime",
    deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.SACRealm.SACRealmSymantecOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :available_symantec_sites, 2,
    repeated: true,
    type: :string,
    json_name: "availableSymantecSites",
    deprecated: false

  field :secret_path, 4, type: :string, json_name: "secretPath", deprecated: false

  field :symantec_connection_state, 5,
    type:
      Google.Cloud.Networksecurity.V1alpha1.SACRealm.SACRealmSymantecOptions.SymantecConnectionState,
    json_name: "symantecConnectionState",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.SACRealm.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Networksecurity.V1alpha1.SACRealm do
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
    type: Google.Cloud.Networksecurity.V1alpha1.SACRealm.LabelsEntry,
    map: true,
    deprecated: false

  field :security_service, 5,
    type: Google.Cloud.Networksecurity.V1alpha1.SACRealm.SecurityService,
    json_name: "securityService",
    enum: true,
    deprecated: false

  field :pairing_key, 6,
    type: Google.Cloud.Networksecurity.V1alpha1.SACRealm.PairingKey,
    json_name: "pairingKey",
    deprecated: false

  field :state, 7,
    type: Google.Cloud.Networksecurity.V1alpha1.SACRealm.State,
    enum: true,
    deprecated: false

  field :symantec_options, 8,
    type: Google.Cloud.Networksecurity.V1alpha1.SACRealm.SACRealmSymantecOptions,
    json_name: "symantecOptions",
    deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.ListSACRealmsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.ListSACRealmsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :sac_realms, 1,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1alpha1.SACRealm,
    json_name: "sacRealms"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Networksecurity.V1alpha1.GetSACRealmRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.CreateSACRealmRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :sac_realm_id, 2, type: :string, json_name: "sacRealmId", deprecated: false

  field :sac_realm, 3,
    type: Google.Cloud.Networksecurity.V1alpha1.SACRealm,
    json_name: "sacRealm",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.DeleteSACRealmRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.SACAttachment.SACAttachmentSymantecOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :symantec_site, 1, type: :string, json_name: "symantecSite", deprecated: false

  field :symantec_location_name, 2,
    type: :string,
    json_name: "symantecLocationName",
    deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.SACAttachment.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Networksecurity.V1alpha1.SACAttachment do
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
    type: Google.Cloud.Networksecurity.V1alpha1.SACAttachment.LabelsEntry,
    map: true,
    deprecated: false

  field :sac_realm, 5, type: :string, json_name: "sacRealm", deprecated: false
  field :ncc_gateway, 6, type: :string, json_name: "nccGateway", deprecated: false
  field :country, 7, type: :string, deprecated: false
  field :time_zone, 8, type: :string, json_name: "timeZone", deprecated: false

  field :symantec_options, 9,
    type: Google.Cloud.Networksecurity.V1alpha1.SACAttachment.SACAttachmentSymantecOptions,
    json_name: "symantecOptions",
    deprecated: false

  field :state, 10,
    type: Google.Cloud.Networksecurity.V1alpha1.SACAttachment.State,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.ListSACAttachmentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.ListSACAttachmentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :sac_attachments, 1,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1alpha1.SACAttachment,
    json_name: "sacAttachments"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Networksecurity.V1alpha1.GetSACAttachmentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.CreateSACAttachmentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :sac_attachment_id, 2, type: :string, json_name: "sacAttachmentId", deprecated: false

  field :sac_attachment, 3,
    type: Google.Cloud.Networksecurity.V1alpha1.SACAttachment,
    json_name: "sacAttachment",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.DeleteSACAttachmentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.PartnerSSERealm.PartnerSSERealmPanOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :serial_number, 1, type: :string, json_name: "serialNumber", deprecated: false
  field :tenant_id, 2, type: :string, json_name: "tenantId", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.PartnerSSERealm.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Networksecurity.V1alpha1.PartnerSSERealm do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string

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
    type: Google.Cloud.Networksecurity.V1alpha1.PartnerSSERealm.LabelsEntry,
    map: true

  field :pairing_key, 5, type: :string, json_name: "pairingKey", deprecated: false
  field :partner_vpc, 6, type: :string, json_name: "partnerVpc", deprecated: true
  field :sse_vpc, 7, type: :string, json_name: "sseVpc", deprecated: true
  field :sse_project, 8, type: :string, json_name: "sseProject", deprecated: false

  field :state, 9,
    type: Google.Cloud.Networksecurity.V1alpha1.PartnerSSERealm.State,
    enum: true,
    deprecated: false

  field :partner_network, 10, type: :string, json_name: "partnerNetwork", deprecated: false
  field :sse_network, 11, type: :string, json_name: "sseNetwork", deprecated: false

  field :pan_options, 12,
    type: Google.Cloud.Networksecurity.V1alpha1.PartnerSSERealm.PartnerSSERealmPanOptions,
    json_name: "panOptions",
    deprecated: false

  field :sse_project_number, 13, type: :int64, json_name: "sseProjectNumber", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.ListPartnerSSERealmsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Networksecurity.V1alpha1.ListPartnerSSERealmsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :partner_sse_realms, 1,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1alpha1.PartnerSSERealm,
    json_name: "partnerSseRealms"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Networksecurity.V1alpha1.GetPartnerSSERealmRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.CreatePartnerSSERealmRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :partner_sse_realm_id, 2, type: :string, json_name: "partnerSseRealmId", deprecated: false

  field :partner_sse_realm, 3,
    type: Google.Cloud.Networksecurity.V1alpha1.PartnerSSERealm,
    json_name: "partnerSseRealm",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.DeletePartnerSSERealmRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.SSERealmService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.networksecurity.v1alpha1.SSERealmService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ListSACRealms,
      Google.Cloud.Networksecurity.V1alpha1.ListSACRealmsRequest,
      Google.Cloud.Networksecurity.V1alpha1.ListSACRealmsResponse

  rpc :GetSACRealm,
      Google.Cloud.Networksecurity.V1alpha1.GetSACRealmRequest,
      Google.Cloud.Networksecurity.V1alpha1.SACRealm

  rpc :CreateSACRealm,
      Google.Cloud.Networksecurity.V1alpha1.CreateSACRealmRequest,
      Google.Longrunning.Operation

  rpc :DeleteSACRealm,
      Google.Cloud.Networksecurity.V1alpha1.DeleteSACRealmRequest,
      Google.Longrunning.Operation

  rpc :ListSACAttachments,
      Google.Cloud.Networksecurity.V1alpha1.ListSACAttachmentsRequest,
      Google.Cloud.Networksecurity.V1alpha1.ListSACAttachmentsResponse

  rpc :GetSACAttachment,
      Google.Cloud.Networksecurity.V1alpha1.GetSACAttachmentRequest,
      Google.Cloud.Networksecurity.V1alpha1.SACAttachment

  rpc :CreateSACAttachment,
      Google.Cloud.Networksecurity.V1alpha1.CreateSACAttachmentRequest,
      Google.Longrunning.Operation

  rpc :DeleteSACAttachment,
      Google.Cloud.Networksecurity.V1alpha1.DeleteSACAttachmentRequest,
      Google.Longrunning.Operation

  rpc :ListPartnerSSERealms,
      Google.Cloud.Networksecurity.V1alpha1.ListPartnerSSERealmsRequest,
      Google.Cloud.Networksecurity.V1alpha1.ListPartnerSSERealmsResponse

  rpc :GetPartnerSSERealm,
      Google.Cloud.Networksecurity.V1alpha1.GetPartnerSSERealmRequest,
      Google.Cloud.Networksecurity.V1alpha1.PartnerSSERealm

  rpc :CreatePartnerSSERealm,
      Google.Cloud.Networksecurity.V1alpha1.CreatePartnerSSERealmRequest,
      Google.Longrunning.Operation

  rpc :DeletePartnerSSERealm,
      Google.Cloud.Networksecurity.V1alpha1.DeletePartnerSSERealmRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Networksecurity.V1alpha1.SSERealmService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Networksecurity.V1alpha1.SSERealmService.Service
end
