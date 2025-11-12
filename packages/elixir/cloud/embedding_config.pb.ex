defmodule Google.Cloud.Vectorsearch.V1beta.EmbeddingTaskType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :EMBEDDING_TASK_TYPE_UNSPECIFIED, 0
  field :RETRIEVAL_QUERY, 1
  field :RETRIEVAL_DOCUMENT, 2
  field :SEMANTIC_SIMILARITY, 3
  field :CLASSIFICATION, 4
  field :CLUSTERING, 5
  field :QUESTION_ANSWERING, 6
  field :FACT_VERIFICATION, 7
  field :CODE_RETRIEVAL_QUERY, 8
end

defmodule Google.Cloud.Vectorsearch.V1beta.VertexEmbeddingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :model_id, 1, type: :string, json_name: "modelId", deprecated: false
  field :text_template, 2, type: :string, json_name: "textTemplate", deprecated: false

  field :task_type, 3,
    type: Google.Cloud.Vectorsearch.V1beta.EmbeddingTaskType,
    json_name: "taskType",
    enum: true,
    deprecated: false
end
