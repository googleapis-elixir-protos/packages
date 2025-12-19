defmodule Google.Cloud.Geminidataanalytics.V1alpha.DataAgentContext.ContextVersion do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :CONTEXT_VERSION_UNSPECIFIED, 0
  field :STAGING, 1
  field :PUBLISHED, 2
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.TextMessage.TextType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TEXT_TYPE_UNSPECIFIED, 0
  field :FINAL_RESPONSE, 1
  field :THOUGHT, 2
  field :PROGRESS, 3
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.QueryDataRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :prompt, 2, type: :string, deprecated: false

  field :context, 3,
    type: Google.Cloud.Geminidataanalytics.V1alpha.QueryDataContext,
    deprecated: false

  field :generation_options, 4,
    type: Google.Cloud.Geminidataanalytics.V1alpha.GenerationOptions,
    json_name: "generationOptions",
    deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.GenerationOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :generate_query_result, 1,
    type: :bool,
    json_name: "generateQueryResult",
    deprecated: false

  field :generate_natural_language_answer, 2,
    type: :bool,
    json_name: "generateNaturalLanguageAnswer",
    deprecated: false

  field :generate_explanation, 3, type: :bool, json_name: "generateExplanation", deprecated: false

  field :generate_disambiguation_question, 4,
    type: :bool,
    json_name: "generateDisambiguationQuestion",
    deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.QueryDataContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :datasource_references, 1,
    type: Google.Cloud.Geminidataanalytics.V1alpha.DatasourceReferences,
    json_name: "datasourceReferences",
    deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.QueryDataResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :generated_query, 1, type: :string, json_name: "generatedQuery"
  field :intent_explanation, 2, type: :string, json_name: "intentExplanation"

  field :query_result, 3,
    type: Google.Cloud.Geminidataanalytics.V1alpha.ExecutedQueryResult,
    json_name: "queryResult"

  field :natural_language_answer, 4, type: :string, json_name: "naturalLanguageAnswer"

  field :disambiguation_question, 5,
    repeated: true,
    type: :string,
    json_name: "disambiguationQuestion"
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.ExecutedQueryResult.Column do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
  field :type, 2, type: :string
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.ExecutedQueryResult.Value do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :value, 1, type: :string
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.ExecutedQueryResult.Row do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :values, 1,
    repeated: true,
    type: Google.Cloud.Geminidataanalytics.V1alpha.ExecutedQueryResult.Value
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.ExecutedQueryResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :columns, 1,
    repeated: true,
    type: Google.Cloud.Geminidataanalytics.V1alpha.ExecutedQueryResult.Column

  field :rows, 2,
    repeated: true,
    type: Google.Cloud.Geminidataanalytics.V1alpha.ExecutedQueryResult.Row

  field :total_row_count, 3, type: :int64, json_name: "totalRowCount"
  field :partial_result, 4, type: :bool, json_name: "partialResult"
  field :query_execution_error, 5, type: :string, json_name: "queryExecutionError"
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.ListMessagesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 5, type: :string, deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.ListMessagesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :messages, 1,
    repeated: true,
    type: Google.Cloud.Geminidataanalytics.V1alpha.StorageMessage

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.StorageMessage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :message_id, 1, type: :string, json_name: "messageId"
  field :message, 2, type: Google.Cloud.Geminidataanalytics.V1alpha.Message
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.ChatRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :context_provider, 0

  field :inline_context, 101,
    type: Google.Cloud.Geminidataanalytics.V1alpha.Context,
    json_name: "inlineContext",
    oneof: 0,
    deprecated: false

  field :conversation_reference, 103,
    type: Google.Cloud.Geminidataanalytics.V1alpha.ConversationReference,
    json_name: "conversationReference",
    oneof: 0,
    deprecated: false

  field :data_agent_context, 104,
    type: Google.Cloud.Geminidataanalytics.V1alpha.DataAgentContext,
    json_name: "dataAgentContext",
    oneof: 0,
    deprecated: false

  field :client_managed_resource_context, 105,
    type: Google.Cloud.Geminidataanalytics.V1alpha.ClientManagedResourceContext,
    json_name: "clientManagedResourceContext",
    oneof: 0,
    deprecated: false

  field :project, 1, type: :string, deprecated: true
  field :parent, 3, type: :string, deprecated: false

  field :messages, 2,
    repeated: true,
    type: Google.Cloud.Geminidataanalytics.V1alpha.Message,
    deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.DataAgentContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :data_agent, 1, type: :string, json_name: "dataAgent", deprecated: false

  field :credentials, 2,
    type: Google.Cloud.Geminidataanalytics.V1alpha.Credentials,
    deprecated: false

  field :context_version, 3,
    type: Google.Cloud.Geminidataanalytics.V1alpha.DataAgentContext.ContextVersion,
    json_name: "contextVersion",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.ConversationReference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :conversation, 1, type: :string, deprecated: false

  field :data_agent_context, 3,
    type: Google.Cloud.Geminidataanalytics.V1alpha.DataAgentContext,
    json_name: "dataAgentContext",
    deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.ClientManagedResourceContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :inline_context, 1,
    type: Google.Cloud.Geminidataanalytics.V1alpha.Context,
    json_name: "inlineContext",
    deprecated: false

  field :conversation_id, 2, type: :string, json_name: "conversationId", deprecated: false
  field :agent_id, 3, type: :string, json_name: "agentId", deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.Message do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :kind, 0

  field :user_message, 2,
    type: Google.Cloud.Geminidataanalytics.V1alpha.UserMessage,
    json_name: "userMessage",
    oneof: 0

  field :system_message, 3,
    type: Google.Cloud.Geminidataanalytics.V1alpha.SystemMessage,
    json_name: "systemMessage",
    oneof: 0

  field :timestamp, 1, type: Google.Protobuf.Timestamp, deprecated: false
  field :message_id, 4, type: :string, json_name: "messageId", deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.UserMessage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :kind, 0

  field :text, 1, type: :string, oneof: 0
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.SystemMessage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :kind, 0

  field :text, 1, type: Google.Cloud.Geminidataanalytics.V1alpha.TextMessage, oneof: 0
  field :schema, 2, type: Google.Cloud.Geminidataanalytics.V1alpha.SchemaMessage, oneof: 0
  field :data, 3, type: Google.Cloud.Geminidataanalytics.V1alpha.DataMessage, oneof: 0
  field :analysis, 4, type: Google.Cloud.Geminidataanalytics.V1alpha.AnalysisMessage, oneof: 0
  field :chart, 5, type: Google.Cloud.Geminidataanalytics.V1alpha.ChartMessage, oneof: 0
  field :error, 6, type: Google.Cloud.Geminidataanalytics.V1alpha.ErrorMessage, oneof: 0

  field :example_queries, 13,
    type: Google.Cloud.Geminidataanalytics.V1alpha.ExampleQueries,
    json_name: "exampleQueries",
    oneof: 0,
    deprecated: false

  field :group_id, 12, proto3_optional: true, type: :int32, json_name: "groupId"
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.TextMessage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parts, 1, repeated: true, type: :string, deprecated: false

  field :text_type, 2,
    type: Google.Cloud.Geminidataanalytics.V1alpha.TextMessage.TextType,
    json_name: "textType",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.SchemaMessage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :kind, 0

  field :query, 1, type: Google.Cloud.Geminidataanalytics.V1alpha.SchemaQuery, oneof: 0
  field :result, 2, type: Google.Cloud.Geminidataanalytics.V1alpha.SchemaResult, oneof: 0
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.SchemaQuery do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :question, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.SchemaResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :datasources, 1,
    repeated: true,
    type: Google.Cloud.Geminidataanalytics.V1alpha.Datasource,
    deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.DataMessage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :kind, 0

  field :query, 1, type: Google.Cloud.Geminidataanalytics.V1alpha.DataQuery, oneof: 0
  field :generated_sql, 2, type: :string, json_name: "generatedSql", oneof: 0
  field :result, 3, type: Google.Cloud.Geminidataanalytics.V1alpha.DataResult, oneof: 0

  field :generated_looker_query, 4,
    type: Google.Cloud.Geminidataanalytics.V1alpha.LookerQuery,
    json_name: "generatedLookerQuery",
    oneof: 0,
    deprecated: true

  field :big_query_job, 5,
    type: Google.Cloud.Geminidataanalytics.V1alpha.BigQueryJob,
    json_name: "bigQueryJob",
    oneof: 0
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.DataQuery do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :query_type, 0

  field :looker, 4,
    type: Google.Cloud.Geminidataanalytics.V1alpha.LookerQuery,
    oneof: 0,
    deprecated: false

  field :question, 1, type: :string, deprecated: false
  field :name, 3, type: :string, deprecated: false

  field :datasources, 2,
    repeated: true,
    type: Google.Cloud.Geminidataanalytics.V1alpha.Datasource,
    deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.DataResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 3, type: :string, deprecated: false
  field :schema, 5, type: Google.Cloud.Geminidataanalytics.V1alpha.Schema, deprecated: false
  field :data, 2, repeated: true, type: Google.Protobuf.Struct, deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.BigQueryJob do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false
  field :job_id, 2, type: :string, json_name: "jobId", deprecated: false
  field :location, 5, type: :string, deprecated: false

  field :destination_table, 3,
    type: Google.Cloud.Geminidataanalytics.V1alpha.BigQueryTableReference,
    json_name: "destinationTable",
    deprecated: false

  field :schema, 7, type: Google.Cloud.Geminidataanalytics.V1alpha.Schema, deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.AnalysisMessage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :kind, 0

  field :query, 1, type: Google.Cloud.Geminidataanalytics.V1alpha.AnalysisQuery, oneof: 0

  field :progress_event, 2,
    type: Google.Cloud.Geminidataanalytics.V1alpha.AnalysisEvent,
    json_name: "progressEvent",
    oneof: 0
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.AnalysisQuery do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :question, 1, type: :string, deprecated: false

  field :data_result_names, 2,
    repeated: true,
    type: :string,
    json_name: "dataResultNames",
    deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.AnalysisEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :kind, 0

  field :planner_reasoning, 2, type: :string, json_name: "plannerReasoning", oneof: 0
  field :coder_instruction, 3, type: :string, json_name: "coderInstruction", oneof: 0
  field :code, 4, type: :string, oneof: 0
  field :execution_output, 5, type: :string, json_name: "executionOutput", oneof: 0
  field :execution_error, 6, type: :string, json_name: "executionError", oneof: 0
  field :result_vega_chart_json, 7, type: :string, json_name: "resultVegaChartJson", oneof: 0
  field :result_natural_language, 8, type: :string, json_name: "resultNaturalLanguage", oneof: 0
  field :result_csv_data, 9, type: :string, json_name: "resultCsvData", oneof: 0
  field :result_reference_data, 10, type: :string, json_name: "resultReferenceData", oneof: 0
  field :error, 11, type: :string, oneof: 0
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.ChartMessage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :kind, 0

  field :query, 1, type: Google.Cloud.Geminidataanalytics.V1alpha.ChartQuery, oneof: 0
  field :result, 2, type: Google.Cloud.Geminidataanalytics.V1alpha.ChartResult, oneof: 0
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.ChartQuery do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :instructions, 1, type: :string, deprecated: false
  field :data_result_name, 2, type: :string, json_name: "dataResultName", deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.ChartResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :vega_config, 2, type: Google.Protobuf.Struct, json_name: "vegaConfig", deprecated: false
  field :image, 3, type: Google.Cloud.Geminidataanalytics.V1alpha.Blob, deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.ErrorMessage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :text, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.ExampleQueries do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :example_queries, 1,
    repeated: true,
    type: Google.Cloud.Geminidataanalytics.V1alpha.ExampleQuery,
    json_name: "exampleQueries",
    deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.Blob do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :mime_type, 1, type: :string, json_name: "mimeType", deprecated: false
  field :data, 2, type: :bytes, deprecated: false
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.DataChatService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.geminidataanalytics.v1alpha.DataChatService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :Chat,
      Google.Cloud.Geminidataanalytics.V1alpha.ChatRequest,
      stream(Google.Cloud.Geminidataanalytics.V1alpha.Message)

  rpc :CreateConversation,
      Google.Cloud.Geminidataanalytics.V1alpha.CreateConversationRequest,
      Google.Cloud.Geminidataanalytics.V1alpha.Conversation

  rpc :DeleteConversation,
      Google.Cloud.Geminidataanalytics.V1alpha.DeleteConversationRequest,
      Google.Protobuf.Empty

  rpc :GetConversation,
      Google.Cloud.Geminidataanalytics.V1alpha.GetConversationRequest,
      Google.Cloud.Geminidataanalytics.V1alpha.Conversation

  rpc :ListConversations,
      Google.Cloud.Geminidataanalytics.V1alpha.ListConversationsRequest,
      Google.Cloud.Geminidataanalytics.V1alpha.ListConversationsResponse

  rpc :ListMessages,
      Google.Cloud.Geminidataanalytics.V1alpha.ListMessagesRequest,
      Google.Cloud.Geminidataanalytics.V1alpha.ListMessagesResponse

  rpc :QueryData,
      Google.Cloud.Geminidataanalytics.V1alpha.QueryDataRequest,
      Google.Cloud.Geminidataanalytics.V1alpha.QueryDataResponse
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.DataChatService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Geminidataanalytics.V1alpha.DataChatService.Service
end
