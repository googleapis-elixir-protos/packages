defmodule Google.Cloud.Databasecenter.V1beta.SignalStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SIGNAL_STATUS_UNSPECIFIED, 0
  field :SIGNAL_STATUS_NOT_APPLICABLE, 1
  field :SIGNAL_STATUS_OK, 2
  field :SIGNAL_STATUS_ISSUE, 3
  field :SIGNAL_STATUS_NOT_ENABLED, 4
end

defmodule Google.Cloud.Databasecenter.V1beta.SignalSource do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SIGNAL_SOURCE_UNSPECIFIED, 0
  field :SIGNAL_SOURCE_RESOURCE_METADATA, 1
  field :SIGNAL_SOURCE_SECURITY_FINDINGS, 2
  field :SIGNAL_SOURCE_RECOMMENDER, 3
  field :SIGNAL_SOURCE_MODERN_OBSERVABILITY, 4
end

defmodule Google.Cloud.Databasecenter.V1beta.IssueSeverity do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ISSUE_SEVERITY_UNSPECIFIED, 0
  field :ISSUE_SEVERITY_LOW, 1
  field :ISSUE_SEVERITY_MEDIUM, 2
  field :ISSUE_SEVERITY_HIGH, 3
  field :ISSUE_SEVERITY_CRITICAL, 4
  field :ISSUE_SEVERITY_IRRELEVANT, 5
end

defmodule Google.Cloud.Databasecenter.V1beta.SignalType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SIGNAL_TYPE_UNSPECIFIED, 0
  field :SIGNAL_TYPE_RESOURCE_FAILOVER_PROTECTED, 1
  field :SIGNAL_TYPE_GROUP_MULTIREGIONAL, 2
  field :SIGNAL_TYPE_NO_AUTOMATED_BACKUP_POLICY, 4
  field :SIGNAL_TYPE_SHORT_BACKUP_RETENTION, 5
  field :SIGNAL_TYPE_LAST_BACKUP_FAILED, 6
  field :SIGNAL_TYPE_LAST_BACKUP_OLD, 7
  field :SIGNAL_TYPE_VIOLATES_CIS_GCP_FOUNDATION_2_0, 8
  field :SIGNAL_TYPE_VIOLATES_CIS_GCP_FOUNDATION_1_3, 9
  field :SIGNAL_TYPE_VIOLATES_CIS_GCP_FOUNDATION_1_2, 10
  field :SIGNAL_TYPE_VIOLATES_CIS_GCP_FOUNDATION_1_1, 11
  field :SIGNAL_TYPE_VIOLATES_CIS_GCP_FOUNDATION_1_0, 12
  field :SIGNAL_TYPE_VIOLATES_CIS_CONTROLS_V8_0, 76
  field :SIGNAL_TYPE_VIOLATES_NIST_800_53, 13
  field :SIGNAL_TYPE_VIOLATES_NIST_800_53_R5, 69
  field :SIGNAL_TYPE_VIOLATES_NIST_CYBERSECURITY_FRAMEWORK_V1_0, 72
  field :SIGNAL_TYPE_VIOLATES_ISO_27001, 14
  field :SIGNAL_TYPE_VIOLATES_ISO_27001_V2022, 70
  field :SIGNAL_TYPE_VIOLATES_PCI_DSS_V3_2_1, 15
  field :SIGNAL_TYPE_VIOLATES_PCI_DSS_V4_0, 71
  field :SIGNAL_TYPE_VIOLATES_CLOUD_CONTROLS_MATRIX_V4, 73
  field :SIGNAL_TYPE_VIOLATES_HIPAA, 74
  field :SIGNAL_TYPE_VIOLATES_SOC2_V2017, 75
  field :SIGNAL_TYPE_LOGS_NOT_OPTIMIZED_FOR_TROUBLESHOOTING, 16
  field :SIGNAL_TYPE_QUERY_DURATIONS_NOT_LOGGED, 17
  field :SIGNAL_TYPE_VERBOSE_ERROR_LOGGING, 18
  field :SIGNAL_TYPE_QUERY_LOCK_WAITS_NOT_LOGGED, 19
  field :SIGNAL_TYPE_LOGGING_MOST_ERRORS, 20
  field :SIGNAL_TYPE_LOGGING_ONLY_CRITICAL_ERRORS, 21
  field :SIGNAL_TYPE_MINIMAL_ERROR_LOGGING, 22
  field :SIGNAL_TYPE_QUERY_STATS_LOGGED, 23
  field :SIGNAL_TYPE_EXCESSIVE_LOGGING_OF_CLIENT_HOSTNAME, 24
  field :SIGNAL_TYPE_EXCESSIVE_LOGGING_OF_PARSER_STATS, 25
  field :SIGNAL_TYPE_EXCESSIVE_LOGGING_OF_PLANNER_STATS, 26
  field :SIGNAL_TYPE_NOT_LOGGING_ONLY_DDL_STATEMENTS, 27
  field :SIGNAL_TYPE_LOGGING_QUERY_STATS, 28
  field :SIGNAL_TYPE_NOT_LOGGING_TEMPORARY_FILES, 29
  field :SIGNAL_TYPE_CONNECTION_MAX_NOT_CONFIGURED, 30
  field :SIGNAL_TYPE_USER_OPTIONS_CONFIGURED, 31
  field :SIGNAL_TYPE_EXPOSED_TO_PUBLIC_ACCESS, 32
  field :SIGNAL_TYPE_UNENCRYPTED_CONNECTIONS, 33
  field :SIGNAL_TYPE_NO_ROOT_PASSWORD, 34
  field :SIGNAL_TYPE_WEAK_ROOT_PASSWORD, 35
  field :SIGNAL_TYPE_ENCRYPTION_KEY_NOT_CUSTOMER_MANAGED, 36
  field :SIGNAL_TYPE_SERVER_AUTHENTICATION_NOT_REQUIRED, 37
  field :SIGNAL_TYPE_EXPOSED_TO_EXTERNAL_SCRIPTS, 39
  field :SIGNAL_TYPE_EXPOSED_TO_LOCAL_DATA_LOADS, 40
  field :SIGNAL_TYPE_CONNECTION_ATTEMPTS_NOT_LOGGED, 41
  field :SIGNAL_TYPE_DISCONNECTIONS_NOT_LOGGED, 42
  field :SIGNAL_TYPE_LOGGING_EXCESSIVE_STATEMENT_INFO, 43
  field :SIGNAL_TYPE_EXPOSED_TO_REMOTE_ACCESS, 44
  field :SIGNAL_TYPE_DATABASE_NAMES_EXPOSED, 45
  field :SIGNAL_TYPE_SENSITIVE_TRACE_INFO_NOT_MASKED, 46
  field :SIGNAL_TYPE_PUBLIC_IP_ENABLED, 47
  field :SIGNAL_TYPE_IDLE, 48
  field :SIGNAL_TYPE_OVERPROVISIONED, 49
  field :SIGNAL_TYPE_HIGH_NUMBER_OF_OPEN_TABLES, 50
  field :SIGNAL_TYPE_HIGH_NUMBER_OF_TABLES, 51
  field :SIGNAL_TYPE_HIGH_TRANSACTION_ID_UTILIZATION, 52
  field :SIGNAL_TYPE_UNDERPROVISIONED, 53
  field :SIGNAL_TYPE_OUT_OF_DISK, 54
  field :SIGNAL_TYPE_SERVER_CERTIFICATE_NEAR_EXPIRY, 55
  field :SIGNAL_TYPE_DATABASE_AUDITING_DISABLED, 56
  field :SIGNAL_TYPE_RESTRICT_AUTHORIZED_NETWORKS, 57
  field :SIGNAL_TYPE_VIOLATE_POLICY_RESTRICT_PUBLIC_IP, 58
  field :SIGNAL_TYPE_QUOTA_LIMIT, 59
  field :SIGNAL_TYPE_NO_PASSWORD_POLICY, 60
  field :SIGNAL_TYPE_CONNECTIONS_PERFORMANCE_IMPACT, 61
  field :SIGNAL_TYPE_TMP_TABLES_PERFORMANCE_IMPACT, 62
  field :SIGNAL_TYPE_TRANS_LOGS_PERFORMANCE_IMPACT, 63
  field :SIGNAL_TYPE_HIGH_JOINS_WITHOUT_INDEXES, 64
  field :SIGNAL_TYPE_SUPERUSER_WRITING_TO_USER_TABLES, 65
  field :SIGNAL_TYPE_USER_GRANTED_ALL_PERMISSIONS, 66
  field :SIGNAL_TYPE_DATA_EXPORT_TO_EXTERNAL_CLOUD_STORAGE_BUCKET, 67
  field :SIGNAL_TYPE_DATA_EXPORT_TO_PUBLIC_CLOUD_STORAGE_BUCKET, 68
  field :SIGNAL_TYPE_WEAK_PASSWORD_HASH_ALGORITHM, 77
  field :SIGNAL_TYPE_NO_USER_PASSWORD_POLICY, 78
  field :SIGNAL_TYPE_HOT_NODE, 79
  field :SIGNAL_TYPE_NO_DELETION_PROTECTION, 80
  field :SIGNAL_TYPE_NO_POINT_IN_TIME_RECOVERY, 81
  field :SIGNAL_TYPE_RESOURCE_SUSPENDED, 82
  field :SIGNAL_TYPE_EXPENSIVE_COMMANDS, 83
  field :SIGNAL_TYPE_NO_MAINTENANCE_POLICY_CONFIGURED, 84
  field :SIGNAL_TYPE_INEFFICIENT_QUERY, 85
  field :SIGNAL_TYPE_READ_INTENSIVE_WORKLOAD, 86
  field :SIGNAL_TYPE_MEMORY_LIMIT, 87
  field :SIGNAL_TYPE_MAX_SERVER_MEMORY, 88
  field :SIGNAL_TYPE_LARGE_ROWS, 89
  field :SIGNAL_TYPE_HIGH_WRITE_PRESSURE, 90
  field :SIGNAL_TYPE_HIGH_READ_PRESSURE, 91
  field :SIGNAL_TYPE_ENCRYPTION_ORG_POLICY_NOT_SATISFIED, 92
  field :SIGNAL_TYPE_LOCATION_ORG_POLICY_NOT_SATISFIED, 93
  field :SIGNAL_TYPE_OUTDATED_MINOR_VERSION, 94
  field :SIGNAL_TYPE_SCHEMA_NOT_OPTIMIZED, 95
  field :SIGNAL_TYPE_REPLICATION_LAG, 97
  field :SIGNAL_TYPE_OUTDATED_CLIENT, 99
  field :SIGNAL_TYPE_DATABOOST_DISABLED, 100
  field :SIGNAL_TYPE_RECOMMENDED_MAINTENANCE_POLICIES, 101
  field :SIGNAL_TYPE_EXTENDED_SUPPORT, 102
end

defmodule Google.Cloud.Databasecenter.V1beta.BackupRunInfo.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :SUCCEEDED, 1
  field :FAILED, 2
end

defmodule Google.Cloud.Databasecenter.V1beta.SignalTypeGroup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName", deprecated: false

  field :signal_types, 2,
    repeated: true,
    type: Google.Cloud.Databasecenter.V1beta.SignalType,
    json_name: "signalTypes",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Databasecenter.V1beta.SignalFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :signal_type, 1,
    type: Google.Cloud.Databasecenter.V1beta.SignalType,
    json_name: "signalType",
    enum: true,
    deprecated: false

  field :signal_status, 2,
    type: Google.Cloud.Databasecenter.V1beta.SignalStatus,
    json_name: "signalStatus",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Databasecenter.V1beta.SignalGroup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName"
  field :issue_count, 2, type: :int32, json_name: "issueCount"
  field :signals, 3, repeated: true, type: Google.Cloud.Databasecenter.V1beta.Signal
end

defmodule Google.Cloud.Databasecenter.V1beta.IssueCount do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName"
  field :issue_count, 2, type: :int32, json_name: "issueCount"
end

defmodule Google.Cloud.Databasecenter.V1beta.AdditionalDetail do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :detail, 0

  field :short_backup_retention_info, 2,
    type: Google.Cloud.Databasecenter.V1beta.RetentionSettingsInfo,
    json_name: "shortBackupRetentionInfo",
    oneof: 0

  field :backup_run_info, 3,
    type: Google.Cloud.Databasecenter.V1beta.BackupRunInfo,
    json_name: "backupRunInfo",
    oneof: 0

  field :scc_info, 4,
    type: Google.Cloud.Databasecenter.V1beta.SCCInfo,
    json_name: "sccInfo",
    oneof: 0

  field :recommendation_info, 6,
    type: Google.Cloud.Databasecenter.V1beta.RecommendationInfo,
    json_name: "recommendationInfo",
    oneof: 0

  field :automated_backup_policy_info, 8,
    type: Google.Cloud.Databasecenter.V1beta.AutomatedBackupPolicyInfo,
    json_name: "automatedBackupPolicyInfo",
    oneof: 0

  field :deletion_protection_info, 9,
    type: Google.Cloud.Databasecenter.V1beta.DeletionProtectionInfo,
    json_name: "deletionProtectionInfo",
    oneof: 0

  field :resource_suspension_info, 10,
    type: Google.Cloud.Databasecenter.V1beta.ResourceSuspensionInfo,
    json_name: "resourceSuspensionInfo",
    oneof: 0

  field :inefficient_query_info, 11,
    type: Google.Cloud.Databasecenter.V1beta.InefficientQueryInfo,
    json_name: "inefficientQueryInfo",
    oneof: 0

  field :outdated_minor_version_info, 12,
    type: Google.Cloud.Databasecenter.V1beta.OutdatedMinorVersionInfo,
    json_name: "outdatedMinorVersionInfo",
    oneof: 0

  field :maintenance_recommendation_info, 13,
    type: Google.Cloud.Databasecenter.V1beta.MaintenanceRecommendationInfo,
    json_name: "maintenanceRecommendationInfo",
    oneof: 0

  field :signal_source, 1,
    type: Google.Cloud.Databasecenter.V1beta.SignalSource,
    json_name: "signalSource",
    enum: true

  field :signal_type, 5,
    type: Google.Cloud.Databasecenter.V1beta.SignalType,
    json_name: "signalType",
    enum: true

  field :signal_event_time, 7, type: Google.Protobuf.Timestamp, json_name: "signalEventTime"
end

defmodule Google.Cloud.Databasecenter.V1beta.SubResource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource_type, 1, type: :string, json_name: "resourceType", deprecated: false
  field :full_resource_name, 2, type: :string, json_name: "fullResourceName", deprecated: false
  field :product, 3, type: Google.Cloud.Databasecenter.V1beta.Product, deprecated: false
  field :container, 4, type: :string
end

defmodule Google.Cloud.Databasecenter.V1beta.RetentionSettingsInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :retention, 0

  field :quantity_based_retention, 3,
    type: Google.Protobuf.Int32Value,
    json_name: "quantityBasedRetention",
    oneof: 0

  field :duration_based_retention, 5,
    type: Google.Protobuf.Duration,
    json_name: "durationBasedRetention",
    oneof: 0

  field :timestamp_based_retention_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "timestampBasedRetentionTime",
    oneof: 0

  field :sub_resource, 4,
    type: Google.Cloud.Databasecenter.V1beta.SubResource,
    json_name: "subResource",
    deprecated: false
end

defmodule Google.Cloud.Databasecenter.V1beta.AutomatedBackupPolicyInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :sub_resource, 1,
    type: Google.Cloud.Databasecenter.V1beta.SubResource,
    json_name: "subResource",
    deprecated: false

  field :is_enabled, 2, type: :bool, json_name: "isEnabled"
end

defmodule Google.Cloud.Databasecenter.V1beta.DeletionProtectionInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :sub_resource, 1,
    type: Google.Cloud.Databasecenter.V1beta.SubResource,
    json_name: "subResource",
    deprecated: false

  field :deletion_protection_enabled, 2, type: :bool, json_name: "deletionProtectionEnabled"
end

defmodule Google.Cloud.Databasecenter.V1beta.ResourceSuspensionInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource_suspended, 1, type: :bool, json_name: "resourceSuspended"

  field :suspension_reason, 2,
    type: Google.Cloud.Databasecenter.V1beta.SuspensionReason,
    json_name: "suspensionReason",
    enum: true
end

defmodule Google.Cloud.Databasecenter.V1beta.BackupRunInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 6, type: Google.Protobuf.Timestamp, json_name: "endTime"

  field :state, 2,
    type: Google.Cloud.Databasecenter.V1beta.BackupRunInfo.State,
    enum: true,
    deprecated: false

  field :error_message, 3, type: :string, json_name: "errorMessage"

  field :operation_error_type, 4,
    type: Google.Cloud.Databasecenter.V1beta.OperationErrorType,
    json_name: "operationErrorType",
    enum: true,
    deprecated: false

  field :sub_resource, 5,
    type: Google.Cloud.Databasecenter.V1beta.SubResource,
    json_name: "subResource",
    deprecated: false
end

defmodule Google.Cloud.Databasecenter.V1beta.InefficientQueryInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :database, 1, type: :string
  field :table, 2, type: :string
  field :sql_index_statement, 3, type: :string, json_name: "sqlIndexStatement"
  field :storage_cost_bytes, 4, type: :int64, json_name: "storageCostBytes"
  field :impacted_queries_count, 5, type: :int64, json_name: "impactedQueriesCount"
end

defmodule Google.Cloud.Databasecenter.V1beta.SCCInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :signal, 1, type: :string
  field :category, 2, type: :string

  field :regulatory_standards, 3,
    repeated: true,
    type: Google.Cloud.Databasecenter.V1beta.RegulatoryStandard,
    json_name: "regulatoryStandards"

  field :external_uri, 4, type: :string, json_name: "externalUri"
end

defmodule Google.Cloud.Databasecenter.V1beta.RecommendationInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :recommender, 1, type: :string
  field :recommender_id, 2, type: :string, json_name: "recommenderId"
  field :recommender_subtype, 3, type: :string, json_name: "recommenderSubtype"
end

defmodule Google.Cloud.Databasecenter.V1beta.RegulatoryStandard do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :standard, 1, type: :string
  field :version, 2, type: :string
end

defmodule Google.Cloud.Databasecenter.V1beta.OutdatedMinorVersionInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :recommended_minor_version, 1, type: :string, json_name: "recommendedMinorVersion"
end

defmodule Google.Cloud.Databasecenter.V1beta.MaintenanceRecommendationInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource_maintenance_schedules, 1,
    repeated: true,
    type: Google.Cloud.Databasecenter.V1beta.ResourceMaintenanceSchedule,
    json_name: "resourceMaintenanceSchedules",
    deprecated: false
end

defmodule Google.Cloud.Databasecenter.V1beta.Signal do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :signal_type, 1,
    type: Google.Cloud.Databasecenter.V1beta.SignalType,
    json_name: "signalType",
    enum: true

  field :signal_status, 2,
    type: Google.Cloud.Databasecenter.V1beta.SignalStatus,
    json_name: "signalStatus",
    enum: true

  field :additional_details, 3,
    repeated: true,
    type: Google.Cloud.Databasecenter.V1beta.AdditionalDetail,
    json_name: "additionalDetails"

  field :issue_severity, 4,
    type: Google.Cloud.Databasecenter.V1beta.IssueSeverity,
    json_name: "issueSeverity",
    enum: true

  field :issue_create_time, 5, type: Google.Protobuf.Timestamp, json_name: "issueCreateTime"
end
