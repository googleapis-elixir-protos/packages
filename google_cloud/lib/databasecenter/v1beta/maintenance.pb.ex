defmodule Google.Cloud.Databasecenter.V1beta.Phase do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PHASE_UNSPECIFIED, 0
  field :PHASE_WEEK1, 1
  field :PHASE_WEEK2, 2
  field :PHASE_WEEK5, 3
  field :PHASE_ANY, 4
end

defmodule Google.Cloud.Databasecenter.V1beta.ResourceMaintenanceSchedule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :start_time, 1, type: Google.Type.TimeOfDay, json_name: "startTime", deprecated: false
  field :day, 2, type: Google.Type.DayOfWeek, enum: true, deprecated: false
  field :phase, 3, type: Google.Cloud.Databasecenter.V1beta.Phase, enum: true, deprecated: false
end

defmodule Google.Cloud.Databasecenter.V1beta.ResourceMaintenanceDenySchedule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :start_date, 1, type: Google.Type.Date, json_name: "startDate", deprecated: false
  field :end_date, 2, type: Google.Type.Date, json_name: "endDate", deprecated: false
  field :time, 3, type: Google.Type.TimeOfDay, deprecated: false
end

defmodule Google.Cloud.Databasecenter.V1beta.MaintenanceInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :maintenance_schedule, 1,
    type: Google.Cloud.Databasecenter.V1beta.ResourceMaintenanceSchedule,
    json_name: "maintenanceSchedule",
    deprecated: false

  field :deny_maintenance_schedules, 2,
    repeated: true,
    type: Google.Cloud.Databasecenter.V1beta.ResourceMaintenanceDenySchedule,
    json_name: "denyMaintenanceSchedules",
    deprecated: false

  field :maintenance_version, 3, type: :string, json_name: "maintenanceVersion", deprecated: false
end
