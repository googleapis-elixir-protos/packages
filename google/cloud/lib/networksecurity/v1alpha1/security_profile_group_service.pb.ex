defmodule Google.Cloud.Networksecurity.V1alpha1.ListSecurityProfileGroupsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Networksecurity.V1alpha1.ListSecurityProfileGroupsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :security_profile_groups, 1,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1alpha1.SecurityProfileGroup,
    json_name: "securityProfileGroups"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Networksecurity.V1alpha1.GetSecurityProfileGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.CreateSecurityProfileGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :security_profile_group_id, 2,
    type: :string,
    json_name: "securityProfileGroupId",
    deprecated: false

  field :security_profile_group, 3,
    type: Google.Cloud.Networksecurity.V1alpha1.SecurityProfileGroup,
    json_name: "securityProfileGroup",
    deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.UpdateSecurityProfileGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :security_profile_group, 2,
    type: Google.Cloud.Networksecurity.V1alpha1.SecurityProfileGroup,
    json_name: "securityProfileGroup",
    deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.DeleteSecurityProfileGroupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :etag, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.ListSecurityProfilesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Networksecurity.V1alpha1.ListSecurityProfilesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :security_profiles, 1,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1alpha1.SecurityProfile,
    json_name: "securityProfiles"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Networksecurity.V1alpha1.GetSecurityProfileRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.CreateSecurityProfileRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :security_profile_id, 2, type: :string, json_name: "securityProfileId", deprecated: false

  field :security_profile, 3,
    type: Google.Cloud.Networksecurity.V1alpha1.SecurityProfile,
    json_name: "securityProfile",
    deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.UpdateSecurityProfileRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :security_profile, 2,
    type: Google.Cloud.Networksecurity.V1alpha1.SecurityProfile,
    json_name: "securityProfile",
    deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.DeleteSecurityProfileRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :etag, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.OrganizationSecurityProfileGroupService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.networksecurity.v1alpha1.OrganizationSecurityProfileGroupService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ListSecurityProfileGroups,
      Google.Cloud.Networksecurity.V1alpha1.ListSecurityProfileGroupsRequest,
      Google.Cloud.Networksecurity.V1alpha1.ListSecurityProfileGroupsResponse

  rpc :GetSecurityProfileGroup,
      Google.Cloud.Networksecurity.V1alpha1.GetSecurityProfileGroupRequest,
      Google.Cloud.Networksecurity.V1alpha1.SecurityProfileGroup

  rpc :CreateSecurityProfileGroup,
      Google.Cloud.Networksecurity.V1alpha1.CreateSecurityProfileGroupRequest,
      Google.Longrunning.Operation

  rpc :UpdateSecurityProfileGroup,
      Google.Cloud.Networksecurity.V1alpha1.UpdateSecurityProfileGroupRequest,
      Google.Longrunning.Operation

  rpc :DeleteSecurityProfileGroup,
      Google.Cloud.Networksecurity.V1alpha1.DeleteSecurityProfileGroupRequest,
      Google.Longrunning.Operation

  rpc :ListSecurityProfiles,
      Google.Cloud.Networksecurity.V1alpha1.ListSecurityProfilesRequest,
      Google.Cloud.Networksecurity.V1alpha1.ListSecurityProfilesResponse

  rpc :GetSecurityProfile,
      Google.Cloud.Networksecurity.V1alpha1.GetSecurityProfileRequest,
      Google.Cloud.Networksecurity.V1alpha1.SecurityProfile

  rpc :CreateSecurityProfile,
      Google.Cloud.Networksecurity.V1alpha1.CreateSecurityProfileRequest,
      Google.Longrunning.Operation

  rpc :UpdateSecurityProfile,
      Google.Cloud.Networksecurity.V1alpha1.UpdateSecurityProfileRequest,
      Google.Longrunning.Operation

  rpc :DeleteSecurityProfile,
      Google.Cloud.Networksecurity.V1alpha1.DeleteSecurityProfileRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Networksecurity.V1alpha1.OrganizationSecurityProfileGroupService.Stub do
  @moduledoc false

  use GRPC.Stub,
    service: Google.Cloud.Networksecurity.V1alpha1.OrganizationSecurityProfileGroupService.Service
end
