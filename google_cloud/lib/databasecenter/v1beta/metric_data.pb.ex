defmodule Google.Cloud.Databasecenter.V1beta.Metrics do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :p99_cpu_utilization, 1,
    proto3_optional: true,
    type: Google.Cloud.Databasecenter.V1beta.MetricData,
    json_name: "p99CpuUtilization"

  field :p95_cpu_utilization, 2,
    proto3_optional: true,
    type: Google.Cloud.Databasecenter.V1beta.MetricData,
    json_name: "p95CpuUtilization"

  field :current_storage_used_bytes, 3,
    proto3_optional: true,
    type: Google.Cloud.Databasecenter.V1beta.MetricData,
    json_name: "currentStorageUsedBytes"

  field :peak_storage_utilization, 4,
    proto3_optional: true,
    type: Google.Cloud.Databasecenter.V1beta.MetricData,
    json_name: "peakStorageUtilization"

  field :peak_memory_utilization, 5,
    proto3_optional: true,
    type: Google.Cloud.Databasecenter.V1beta.MetricData,
    json_name: "peakMemoryUtilization"

  field :peak_number_connections, 6,
    proto3_optional: true,
    type: Google.Cloud.Databasecenter.V1beta.MetricData,
    json_name: "peakNumberConnections"

  field :node_count, 7,
    proto3_optional: true,
    type: Google.Cloud.Databasecenter.V1beta.MetricData,
    json_name: "nodeCount"

  field :processing_unit_count, 8,
    proto3_optional: true,
    type: Google.Cloud.Databasecenter.V1beta.MetricData,
    json_name: "processingUnitCount"

  field :current_memory_used_bytes, 9,
    proto3_optional: true,
    type: Google.Cloud.Databasecenter.V1beta.MetricData,
    json_name: "currentMemoryUsedBytes"
end

defmodule Google.Cloud.Databasecenter.V1beta.MetricData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :value, 1, type: Google.Cloud.Databasecenter.V1beta.TypedValue
  field :observation_time, 2, type: Google.Protobuf.Timestamp, json_name: "observationTime"
end

defmodule Google.Cloud.Databasecenter.V1beta.TypedValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :value, 0

  field :double_value, 1, type: :double, json_name: "doubleValue", oneof: 0
  field :int64_value, 2, type: :int64, json_name: "int64Value", oneof: 0
end
