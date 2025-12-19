defmodule Google.Cloud.Dataform.Logging.V1.WorkflowInvocationCompletionLogEntry.TerminalState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TERMINAL_STATE_UNSPECIFIED, 0
  field :SUCCEEDED, 1
  field :CANCELLED, 2
  field :FAILED, 3
end

defmodule Google.Cloud.Dataform.Logging.V1.WorkflowInvocationCompletionLogEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :workflow_invocation_id, 1,
    type: :string,
    json_name: "workflowInvocationId",
    deprecated: false

  field :workflow_config_id, 2, type: :string, json_name: "workflowConfigId", deprecated: false
  field :release_config_id, 3, type: :string, json_name: "releaseConfigId", deprecated: false

  field :terminal_state, 4,
    type: Google.Cloud.Dataform.Logging.V1.WorkflowInvocationCompletionLogEntry.TerminalState,
    json_name: "terminalState",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Dataform.Logging.V1.ActAsDryRunResultLogEntry.CreateRepositoryContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :repository, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataform.Logging.V1.ActAsDryRunResultLogEntry.UpdateRepositoryContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :repository, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataform.Logging.V1.ActAsDryRunResultLogEntry.UpdateReleaseConfigContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :release_config, 1, type: :string, json_name: "releaseConfig", deprecated: false
end

defmodule Google.Cloud.Dataform.Logging.V1.ActAsDryRunResultLogEntry.CreateWorkflowConfigContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :workflow_config, 1, type: :string, json_name: "workflowConfig", deprecated: false
end

defmodule Google.Cloud.Dataform.Logging.V1.ActAsDryRunResultLogEntry.UpdateWorkflowConfigContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :workflow_config, 1, type: :string, json_name: "workflowConfig", deprecated: false
end

defmodule Google.Cloud.Dataform.Logging.V1.ActAsDryRunResultLogEntry.CreateWorkflowInvocationContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :compilation_source, 0

  field :workflow_invocation, 1, type: :string, json_name: "workflowInvocation", deprecated: false

  field :compilation_result, 2,
    type: :string,
    json_name: "compilationResult",
    oneof: 0,
    deprecated: false

  field :workflow_config, 3,
    type: :string,
    json_name: "workflowConfig",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Dataform.Logging.V1.ActAsDryRunResultLogEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :api_method_context, 0

  field :api_method, 1, type: :string, json_name: "apiMethod", deprecated: false
  field :caller, 2, type: :string, deprecated: false
  field :service_account, 3, type: :string, json_name: "serviceAccount", deprecated: false
  field :dry_run_result, 4, type: :bool, json_name: "dryRunResult", deprecated: false

  field :create_workflow_invocation_context, 5,
    type:
      Google.Cloud.Dataform.Logging.V1.ActAsDryRunResultLogEntry.CreateWorkflowInvocationContext,
    json_name: "createWorkflowInvocationContext",
    oneof: 0,
    deprecated: false

  field :create_repository_context, 6,
    type: Google.Cloud.Dataform.Logging.V1.ActAsDryRunResultLogEntry.CreateRepositoryContext,
    json_name: "createRepositoryContext",
    oneof: 0,
    deprecated: false

  field :update_repository_context, 7,
    type: Google.Cloud.Dataform.Logging.V1.ActAsDryRunResultLogEntry.UpdateRepositoryContext,
    json_name: "updateRepositoryContext",
    oneof: 0,
    deprecated: false

  field :update_release_config_context, 8,
    type: Google.Cloud.Dataform.Logging.V1.ActAsDryRunResultLogEntry.UpdateReleaseConfigContext,
    json_name: "updateReleaseConfigContext",
    oneof: 0,
    deprecated: false

  field :update_workflow_config_context, 9,
    type: Google.Cloud.Dataform.Logging.V1.ActAsDryRunResultLogEntry.UpdateWorkflowConfigContext,
    json_name: "updateWorkflowConfigContext",
    oneof: 0,
    deprecated: false

  field :create_workflow_config_context, 10,
    type: Google.Cloud.Dataform.Logging.V1.ActAsDryRunResultLogEntry.CreateWorkflowConfigContext,
    json_name: "createWorkflowConfigContext",
    oneof: 0,
    deprecated: false
end
