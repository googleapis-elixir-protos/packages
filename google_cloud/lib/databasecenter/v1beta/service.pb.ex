defmodule Google.Cloud.Databasecenter.V1beta.ResourceCategory do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :RESOURCE_CATEGORY_UNSPECIFIED, 0
  field :INSTANCE, 1
  field :CLUSTER, 2
  field :DATABASE, 3
end

defmodule Google.Cloud.Databasecenter.V1beta.Edition do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :EDITION_UNSPECIFIED, 0
  field :EDITION_ENTERPRISE, 1
  field :EDITION_ENTERPRISE_PLUS, 2
  field :EDITION_STANDARD, 3
end

defmodule Google.Cloud.Databasecenter.V1beta.SubResourceType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SUB_RESOURCE_TYPE_UNSPECIFIED, 0
  field :SUB_RESOURCE_TYPE_PRIMARY, 1
  field :SUB_RESOURCE_TYPE_SECONDARY, 2
  field :SUB_RESOURCE_TYPE_READ_REPLICA, 3
  field :SUB_RESOURCE_TYPE_EXTERNAL_PRIMARY, 5
  field :SUB_RESOURCE_TYPE_OTHER, 4
end

defmodule Google.Cloud.Databasecenter.V1beta.ManagementType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :MANAGEMENT_TYPE_UNSPECIFIED, 0
  field :MANAGEMENT_TYPE_GCP_MANAGED, 1
  field :MANAGEMENT_TYPE_SELF_MANAGED, 2
end

defmodule Google.Cloud.Databasecenter.V1beta.QueryProductsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 3, type: :string, deprecated: false
  field :page_size, 1, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Databasecenter.V1beta.QueryProductsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :products, 1, repeated: true, type: Google.Cloud.Databasecenter.V1beta.Product
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Databasecenter.V1beta.QueryDatabaseResourceGroupsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false

  field :signal_type_groups, 3,
    repeated: true,
    type: Google.Cloud.Databasecenter.V1beta.SignalTypeGroup,
    json_name: "signalTypeGroups",
    deprecated: false

  field :signal_filters, 4,
    repeated: true,
    type: Google.Cloud.Databasecenter.V1beta.SignalFilter,
    json_name: "signalFilters",
    deprecated: false

  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
  field :page_size, 6, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 7, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Databasecenter.V1beta.QueryDatabaseResourceGroupsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource_groups, 1,
    repeated: true,
    type: Google.Cloud.Databasecenter.V1beta.DatabaseResourceGroup,
    json_name: "resourceGroups"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Databasecenter.V1beta.DatabaseResourceGroup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :root_resources, 1,
    repeated: true,
    type: Google.Cloud.Databasecenter.V1beta.DatabaseResource,
    json_name: "rootResources"

  field :signal_groups, 2,
    repeated: true,
    type: Google.Cloud.Databasecenter.V1beta.IssueCount,
    json_name: "signalGroups"
end

defmodule Google.Cloud.Databasecenter.V1beta.DatabaseResource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :child_resources, 1,
    repeated: true,
    type: Google.Cloud.Databasecenter.V1beta.DatabaseResource,
    json_name: "childResources"

  field :full_resource_name, 3, type: :string, json_name: "fullResourceName"
  field :container, 4, type: :string
  field :product, 5, type: Google.Cloud.Databasecenter.V1beta.Product
  field :location, 6, type: :string
  field :labels, 7, repeated: true, type: Google.Cloud.Databasecenter.V1beta.Label
  field :tags, 16, repeated: true, type: Google.Cloud.Databasecenter.V1beta.Tag
  field :resource_type, 8, type: :string, json_name: "resourceType"

  field :sub_resource_type, 9,
    type: Google.Cloud.Databasecenter.V1beta.SubResourceType,
    json_name: "subResourceType",
    enum: true

  field :machine_config, 12,
    type: Google.Cloud.Databasecenter.V1beta.MachineConfig,
    json_name: "machineConfig"

  field :signal_groups, 10,
    repeated: true,
    type: Google.Cloud.Databasecenter.V1beta.SignalGroup,
    json_name: "signalGroups"

  field :metrics, 13, type: Google.Cloud.Databasecenter.V1beta.Metrics

  field :resource_category, 14,
    type: Google.Cloud.Databasecenter.V1beta.ResourceCategory,
    json_name: "resourceCategory",
    enum: true

  field :resource_name, 15, type: :string, json_name: "resourceName"

  field :backupdr_config, 17,
    type: Google.Cloud.Databasecenter.V1beta.BackupDRConfig,
    json_name: "backupdrConfig",
    deprecated: false

  field :edition, 18, type: Google.Cloud.Databasecenter.V1beta.Edition, enum: true

  field :maintenance_info, 19,
    type: Google.Cloud.Databasecenter.V1beta.MaintenanceInfo,
    json_name: "maintenanceInfo",
    deprecated: false
end

defmodule Google.Cloud.Databasecenter.V1beta.Label do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
  field :source, 3, type: :string
end

defmodule Google.Cloud.Databasecenter.V1beta.AggregateFleetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :group_by, 3, type: :string, json_name: "groupBy", deprecated: false
  field :order_by, 4, type: :string, json_name: "orderBy", deprecated: false
  field :page_size, 5, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 6, type: :string, json_name: "pageToken", deprecated: false

  field :baseline_date, 7,
    proto3_optional: true,
    type: Google.Type.Date,
    json_name: "baselineDate",
    deprecated: false
end

defmodule Google.Cloud.Databasecenter.V1beta.AggregateFleetResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :rows, 1, repeated: true, type: Google.Cloud.Databasecenter.V1beta.AggregateFleetRow
  field :resource_groups_total_count, 2, type: :int32, json_name: "resourceGroupsTotalCount"
  field :resource_total_count, 3, type: :int32, json_name: "resourceTotalCount"
  field :next_page_token, 4, type: :string, json_name: "nextPageToken"
  field :unreachable, 5, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Databasecenter.V1beta.AggregateFleetRow do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :dimension, 1, repeated: true, type: Google.Cloud.Databasecenter.V1beta.Dimension
  field :resource_groups_count, 2, type: :int32, json_name: "resourceGroupsCount"
  field :resources_count, 3, type: :int32, json_name: "resourcesCount"

  field :delta_details, 4,
    proto3_optional: true,
    type: Google.Cloud.Databasecenter.V1beta.DeltaDetails,
    json_name: "deltaDetails",
    deprecated: false
end

defmodule Google.Cloud.Databasecenter.V1beta.Dimension do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :dimension, 0

  field :container, 2, type: :string, oneof: 0

  field :product_type, 3,
    type: Google.Cloud.Databasecenter.V1beta.ProductType,
    json_name: "productType",
    enum: true,
    oneof: 0

  field :product_engine, 4,
    type: Google.Cloud.Databasecenter.V1beta.Engine,
    json_name: "productEngine",
    enum: true,
    oneof: 0

  field :product_version, 5, type: :string, json_name: "productVersion", oneof: 0
  field :location, 6, type: :string, oneof: 0
  field :resource_type, 7, type: :string, json_name: "resourceType", oneof: 0

  field :sub_resource_type, 8,
    type: Google.Cloud.Databasecenter.V1beta.SubResourceType,
    json_name: "subResourceType",
    enum: true,
    oneof: 0

  field :resource_category, 9,
    type: Google.Cloud.Databasecenter.V1beta.ResourceCategory,
    json_name: "resourceCategory",
    enum: true,
    oneof: 0

  field :management_type, 10,
    type: Google.Cloud.Databasecenter.V1beta.ManagementType,
    json_name: "managementType",
    enum: true,
    oneof: 0

  field :edition, 11, type: Google.Cloud.Databasecenter.V1beta.Edition, enum: true, oneof: 0
  field :tag_key, 12, type: :string, json_name: "tagKey", oneof: 0
  field :tag_value, 13, type: :string, json_name: "tagValue", oneof: 0
  field :tag_source, 14, type: :string, json_name: "tagSource", oneof: 0
  field :tag_inherited, 15, type: :bool, json_name: "tagInherited", oneof: 0
  field :label_key, 16, type: :string, json_name: "labelKey", oneof: 0
  field :label_value, 17, type: :string, json_name: "labelValue", oneof: 0
  field :label_source, 18, type: :string, json_name: "labelSource", oneof: 0
  field :has_maintenance_schedule, 19, type: :bool, json_name: "hasMaintenanceSchedule", oneof: 0

  field :has_deny_maintenance_schedules, 20,
    type: :bool,
    json_name: "hasDenyMaintenanceSchedules",
    oneof: 0
end

defmodule Google.Cloud.Databasecenter.V1beta.BackupDRConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :backupdr_managed, 1, proto3_optional: true, type: :bool, json_name: "backupdrManaged"
end

defmodule Google.Cloud.Databasecenter.V1beta.Tag do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
  field :source, 3, type: :string
  field :inherited, 4, type: :bool
end

defmodule Google.Cloud.Databasecenter.V1beta.ResourceDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :full_resource_name, 1, type: :string, json_name: "fullResourceName"
  field :container, 2, type: :string
  field :product, 3, type: Google.Cloud.Databasecenter.V1beta.Product
  field :location, 4, type: :string
end

defmodule Google.Cloud.Databasecenter.V1beta.DeltaDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :increased_resources, 1,
    repeated: true,
    type: Google.Cloud.Databasecenter.V1beta.ResourceDetails,
    json_name: "increasedResources"

  field :decreased_resources, 2,
    repeated: true,
    type: Google.Cloud.Databasecenter.V1beta.ResourceDetails,
    json_name: "decreasedResources"
end

defmodule Google.Cloud.Databasecenter.V1beta.DatabaseCenter.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.databasecenter.v1beta.DatabaseCenter",
    protoc_gen_elixir_version: "0.15.0"

  rpc :QueryProducts,
      Google.Cloud.Databasecenter.V1beta.QueryProductsRequest,
      Google.Cloud.Databasecenter.V1beta.QueryProductsResponse

  rpc :AggregateFleet,
      Google.Cloud.Databasecenter.V1beta.AggregateFleetRequest,
      Google.Cloud.Databasecenter.V1beta.AggregateFleetResponse

  rpc :QueryDatabaseResourceGroups,
      Google.Cloud.Databasecenter.V1beta.QueryDatabaseResourceGroupsRequest,
      Google.Cloud.Databasecenter.V1beta.QueryDatabaseResourceGroupsResponse
end

defmodule Google.Cloud.Databasecenter.V1beta.DatabaseCenter.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Databasecenter.V1beta.DatabaseCenter.Service
end
