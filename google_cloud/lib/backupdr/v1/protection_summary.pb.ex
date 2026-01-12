defmodule Google.Cloud.Backupdr.V1.ResourceBackupConfig.ResourceType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :RESOURCE_TYPE_UNSPECIFIED, 0
  field :CLOUD_SQL_INSTANCE, 1
  field :COMPUTE_ENGINE_VM, 2
  field :COMPUTE_ENGINE_DISK, 3
  field :COMPUTE_ENGINE_REGIONAL_DISK, 4
end

defmodule Google.Cloud.Backupdr.V1.BackupConfigDetails.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :CLOUD_SQL_INSTANCE_BACKUP_CONFIG, 1
  field :COMPUTE_ENGINE_RESOURCE_POLICY, 2
  field :BACKUPDR_BACKUP_PLAN, 3
  field :BACKUPDR_TEMPLATE, 4
end

defmodule Google.Cloud.Backupdr.V1.BackupConfigDetails.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :INACTIVE, 2
  field :ERROR, 3
end

defmodule Google.Cloud.Backupdr.V1.BackupLocation.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :ZONAL, 1
  field :REGIONAL, 2
  field :MULTI_REGIONAL, 3
end

defmodule Google.Cloud.Backupdr.V1.ListResourceBackupConfigsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.ListResourceBackupConfigsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource_backup_configs, 1,
    repeated: true,
    type: Google.Cloud.Backupdr.V1.ResourceBackupConfig,
    json_name: "resourceBackupConfigs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Backupdr.V1.ResourceBackupConfig.TargetResourceLabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Backupdr.V1.ResourceBackupConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :uid, 2, type: :string, deprecated: false
  field :target_resource, 3, type: :string, json_name: "targetResource", deprecated: false

  field :target_resource_display_name, 4,
    type: :string,
    json_name: "targetResourceDisplayName",
    deprecated: false

  field :target_resource_type, 5,
    type: Google.Cloud.Backupdr.V1.ResourceBackupConfig.ResourceType,
    json_name: "targetResourceType",
    enum: true,
    deprecated: false

  field :target_resource_labels, 6,
    repeated: true,
    type: Google.Cloud.Backupdr.V1.ResourceBackupConfig.TargetResourceLabelsEntry,
    json_name: "targetResourceLabels",
    map: true

  field :backup_configs_details, 7,
    repeated: true,
    type: Google.Cloud.Backupdr.V1.BackupConfigDetails,
    json_name: "backupConfigsDetails"

  field :backup_configured, 8, type: :bool, json_name: "backupConfigured", deprecated: false
  field :vaulted, 9, type: :bool, deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.BackupConfigDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :plan_specific_config, 0

  field :backup_config_source, 1,
    type: :string,
    json_name: "backupConfigSource",
    deprecated: false

  field :backup_config_source_display_name, 2,
    type: :string,
    json_name: "backupConfigSourceDisplayName",
    deprecated: false

  field :type, 3,
    type: Google.Cloud.Backupdr.V1.BackupConfigDetails.Type,
    enum: true,
    deprecated: false

  field :state, 4,
    type: Google.Cloud.Backupdr.V1.BackupConfigDetails.State,
    enum: true,
    deprecated: false

  field :pitr_settings, 5,
    type: Google.Cloud.Backupdr.V1.PitrSettings,
    json_name: "pitrSettings",
    deprecated: false

  field :latest_successful_backup_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "latestSuccessfulBackupTime",
    deprecated: false

  field :applicable_resource, 7, type: :string, json_name: "applicableResource", deprecated: false
  field :backup_vault, 8, type: :string, json_name: "backupVault", deprecated: false

  field :backup_locations, 12,
    repeated: true,
    type: Google.Cloud.Backupdr.V1.BackupLocation,
    json_name: "backupLocations"

  field :backup_dr_plan_config, 10,
    type: Google.Cloud.Backupdr.V1.BackupDrPlanConfig,
    json_name: "backupDrPlanConfig",
    oneof: 0

  field :backup_dr_template_config, 11,
    type: Google.Cloud.Backupdr.V1.BackupDrTemplateConfig,
    json_name: "backupDrTemplateConfig",
    oneof: 0
end

defmodule Google.Cloud.Backupdr.V1.PitrSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :retention_days, 1, type: :int32, json_name: "retentionDays", deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.BackupDrTemplateConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :first_party_management_uri, 1,
    type: :string,
    json_name: "firstPartyManagementUri",
    deprecated: false

  field :third_party_management_uri, 2,
    type: :string,
    json_name: "thirdPartyManagementUri",
    deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.BackupDrPlanConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :backup_dr_plan_rules, 1,
    repeated: true,
    type: Google.Cloud.Backupdr.V1.BackupDrPlanRule,
    json_name: "backupDrPlanRules"
end

defmodule Google.Cloud.Backupdr.V1.BackupDrPlanRule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :rule_id, 1, type: :string, json_name: "ruleId", deprecated: false

  field :last_successful_backup_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "lastSuccessfulBackupTime",
    deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.BackupLocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :type, 1,
    type: Google.Cloud.Backupdr.V1.BackupLocation.Type,
    enum: true,
    deprecated: false

  field :location_id, 2, type: :string, json_name: "locationId", deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.BackupDrProtectionSummary.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.backupdr.v1.BackupDrProtectionSummary",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ListResourceBackupConfigs,
      Google.Cloud.Backupdr.V1.ListResourceBackupConfigsRequest,
      Google.Cloud.Backupdr.V1.ListResourceBackupConfigsResponse
end

defmodule Google.Cloud.Backupdr.V1.BackupDrProtectionSummary.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Backupdr.V1.BackupDrProtectionSummary.Service
end
