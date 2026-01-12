defmodule Google.Cloud.Sql.V1.Backup.SqlBackupType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SQL_BACKUP_TYPE_UNSPECIFIED, 0
  field :AUTOMATED, 1
  field :ON_DEMAND, 2
  field :FINAL, 3
end

defmodule Google.Cloud.Sql.V1.Backup.SqlBackupState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SQL_BACKUP_STATE_UNSPECIFIED, 0
  field :ENQUEUED, 1
  field :RUNNING, 2
  field :FAILED, 3
  field :SUCCESSFUL, 4
  field :DELETING, 5
  field :DELETION_FAILED, 6
end

defmodule Google.Cloud.Sql.V1.CreateBackupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :backup, 2, type: Google.Cloud.Sql.V1.Backup, deprecated: false
end

defmodule Google.Cloud.Sql.V1.GetBackupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Sql.V1.ListBackupsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
end

defmodule Google.Cloud.Sql.V1.ListBackupsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :backups, 1, repeated: true, type: Google.Cloud.Sql.V1.Backup
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :warnings, 3, repeated: true, type: Google.Cloud.Sql.V1.ApiWarning
end

defmodule Google.Cloud.Sql.V1.UpdateBackupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :backup, 1, type: Google.Cloud.Sql.V1.Backup, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Sql.V1.DeleteBackupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Sql.V1.Backup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :expiration, 0

  field :name, 1, type: :string, deprecated: false
  field :kind, 2, type: :string, deprecated: false
  field :self_link, 3, type: :string, json_name: "selfLink", deprecated: false
  field :type, 4, type: Google.Cloud.Sql.V1.Backup.SqlBackupType, enum: true, deprecated: false
  field :description, 5, type: :string
  field :instance, 6, type: :string
  field :location, 7, type: :string

  field :backup_interval, 8,
    type: Google.Type.Interval,
    json_name: "backupInterval",
    deprecated: false

  field :state, 9, type: Google.Cloud.Sql.V1.Backup.SqlBackupState, enum: true, deprecated: false
  field :error, 10, type: Google.Cloud.Sql.V1.OperationError, deprecated: false
  field :kms_key, 11, type: :string, json_name: "kmsKey", deprecated: false
  field :kms_key_version, 12, type: :string, json_name: "kmsKeyVersion", deprecated: false

  field :backup_kind, 13,
    type: Google.Cloud.Sql.V1.SqlBackupKind,
    json_name: "backupKind",
    enum: true,
    deprecated: false

  field :time_zone, 15, type: :string, json_name: "timeZone", deprecated: false
  field :ttl_days, 16, type: :int64, json_name: "ttlDays", oneof: 0, deprecated: false
  field :expiry_time, 17, type: Google.Protobuf.Timestamp, json_name: "expiryTime", oneof: 0

  field :database_version, 20,
    type: Google.Cloud.Sql.V1.SqlDatabaseVersion,
    json_name: "databaseVersion",
    enum: true,
    deprecated: false

  field :max_chargeable_bytes, 23,
    proto3_optional: true,
    type: :int64,
    json_name: "maxChargeableBytes",
    deprecated: false

  field :instance_deletion_time, 24,
    type: Google.Protobuf.Timestamp,
    json_name: "instanceDeletionTime",
    deprecated: false

  field :instance_settings, 25,
    type: Google.Cloud.Sql.V1.DatabaseInstance,
    json_name: "instanceSettings",
    deprecated: false

  field :backup_run, 26, type: :string, json_name: "backupRun", deprecated: false

  field :satisfies_pzs, 27,
    type: Google.Protobuf.BoolValue,
    json_name: "satisfiesPzs",
    deprecated: false

  field :satisfies_pzi, 28,
    type: Google.Protobuf.BoolValue,
    json_name: "satisfiesPzi",
    deprecated: false
end

defmodule Google.Cloud.Sql.V1.SqlBackupsService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.sql.v1.SqlBackupsService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :CreateBackup, Google.Cloud.Sql.V1.CreateBackupRequest, Google.Cloud.Sql.V1.Operation

  rpc :GetBackup, Google.Cloud.Sql.V1.GetBackupRequest, Google.Cloud.Sql.V1.Backup

  rpc :ListBackups,
      Google.Cloud.Sql.V1.ListBackupsRequest,
      Google.Cloud.Sql.V1.ListBackupsResponse

  rpc :UpdateBackup, Google.Cloud.Sql.V1.UpdateBackupRequest, Google.Cloud.Sql.V1.Operation

  rpc :DeleteBackup, Google.Cloud.Sql.V1.DeleteBackupRequest, Google.Cloud.Sql.V1.Operation
end

defmodule Google.Cloud.Sql.V1.SqlBackupsService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Sql.V1.SqlBackupsService.Service
end
