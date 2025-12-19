defmodule Google.Cloud.Vectorsearch.V1beta.AggregationMethod do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :AGGREGATION_METHOD_UNSPECIFIED, 0
  field :COUNT, 1
end

defmodule Google.Cloud.Vectorsearch.V1beta.OutputFields do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :data_fields, 1, repeated: true, type: :string, json_name: "dataFields", deprecated: false

  field :vector_fields, 2,
    repeated: true,
    type: :string,
    json_name: "vectorFields",
    deprecated: false

  field :metadata_fields, 3,
    repeated: true,
    type: :string,
    json_name: "metadataFields",
    deprecated: false
end

defmodule Google.Cloud.Vectorsearch.V1beta.SearchHint.IndexHint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Vectorsearch.V1beta.SearchHint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :index_type, 0

  field :use_index, 1,
    type: Google.Cloud.Vectorsearch.V1beta.SearchHint.IndexHint,
    json_name: "useIndex",
    oneof: 0

  field :use_knn, 2, type: :bool, json_name: "useKnn", oneof: 0
end

defmodule Google.Cloud.Vectorsearch.V1beta.Search do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :search_type, 0

  field :vector_search, 1,
    type: Google.Cloud.Vectorsearch.V1beta.VectorSearch,
    json_name: "vectorSearch",
    oneof: 0

  field :semantic_search, 2,
    type: Google.Cloud.Vectorsearch.V1beta.SemanticSearch,
    json_name: "semanticSearch",
    oneof: 0

  field :text_search, 3,
    type: Google.Cloud.Vectorsearch.V1beta.TextSearch,
    json_name: "textSearch",
    oneof: 0
end

defmodule Google.Cloud.Vectorsearch.V1beta.VectorSearch do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :vector_type, 0

  field :vector, 1, type: Google.Cloud.Vectorsearch.V1beta.DenseVector, oneof: 0

  field :sparse_vector, 2,
    type: Google.Cloud.Vectorsearch.V1beta.SparseVector,
    json_name: "sparseVector",
    oneof: 0

  field :search_field, 8, type: :string, json_name: "searchField", deprecated: false
  field :filter, 4, type: Google.Protobuf.Struct, deprecated: false
  field :top_k, 5, proto3_optional: true, type: :int32, json_name: "topK", deprecated: false

  field :output_fields, 7,
    type: Google.Cloud.Vectorsearch.V1beta.OutputFields,
    json_name: "outputFields",
    deprecated: false

  field :search_hint, 9,
    type: Google.Cloud.Vectorsearch.V1beta.SearchHint,
    json_name: "searchHint",
    deprecated: false

  field :distance_metric, 11,
    type: Google.Cloud.Vectorsearch.V1beta.DistanceMetric,
    json_name: "distanceMetric",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Vectorsearch.V1beta.SemanticSearch do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :search_text, 1, type: :string, json_name: "searchText", deprecated: false
  field :search_field, 2, type: :string, json_name: "searchField", deprecated: false

  field :task_type, 5,
    type: Google.Cloud.Vectorsearch.V1beta.EmbeddingTaskType,
    json_name: "taskType",
    enum: true,
    deprecated: false

  field :output_fields, 3,
    type: Google.Cloud.Vectorsearch.V1beta.OutputFields,
    json_name: "outputFields",
    deprecated: false

  field :filter, 6, type: Google.Protobuf.Struct, deprecated: false
  field :top_k, 4, proto3_optional: true, type: :int32, json_name: "topK", deprecated: false
end

defmodule Google.Cloud.Vectorsearch.V1beta.TextSearch do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :search_text, 1, type: :string, json_name: "searchText", deprecated: false

  field :data_field_names, 2,
    repeated: true,
    type: :string,
    json_name: "dataFieldNames",
    deprecated: false

  field :output_fields, 3,
    type: Google.Cloud.Vectorsearch.V1beta.OutputFields,
    json_name: "outputFields",
    deprecated: false

  field :top_k, 4, proto3_optional: true, type: :int32, json_name: "topK", deprecated: false
end

defmodule Google.Cloud.Vectorsearch.V1beta.SearchDataObjectsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :search_type, 0

  field :vector_search, 2,
    type: Google.Cloud.Vectorsearch.V1beta.VectorSearch,
    json_name: "vectorSearch",
    oneof: 0

  field :semantic_search, 4,
    type: Google.Cloud.Vectorsearch.V1beta.SemanticSearch,
    json_name: "semanticSearch",
    oneof: 0

  field :text_search, 7,
    type: Google.Cloud.Vectorsearch.V1beta.TextSearch,
    json_name: "textSearch",
    oneof: 0,
    deprecated: false

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 5, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 6, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Vectorsearch.V1beta.SearchResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :data_object, 1,
    type: Google.Cloud.Vectorsearch.V1beta.DataObject,
    json_name: "dataObject",
    deprecated: false

  field :distance, 2, proto3_optional: true, type: :double, deprecated: false
end

defmodule Google.Cloud.Vectorsearch.V1beta.SearchResponseMetadata.IndexInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Vectorsearch.V1beta.SearchResponseMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :index_type, 0

  field :used_index, 1,
    type: Google.Cloud.Vectorsearch.V1beta.SearchResponseMetadata.IndexInfo,
    json_name: "usedIndex",
    oneof: 0

  field :used_knn, 2, type: :bool, json_name: "usedKnn", oneof: 0, deprecated: false
end

defmodule Google.Cloud.Vectorsearch.V1beta.SearchDataObjectsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :results, 1,
    repeated: true,
    type: Google.Cloud.Vectorsearch.V1beta.SearchResult,
    deprecated: false

  field :next_page_token, 2, type: :string, json_name: "nextPageToken", deprecated: false

  field :search_response_metadata, 3,
    type: Google.Cloud.Vectorsearch.V1beta.SearchResponseMetadata,
    json_name: "searchResponseMetadata",
    deprecated: false
end

defmodule Google.Cloud.Vectorsearch.V1beta.AggregateDataObjectsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: Google.Protobuf.Struct, deprecated: false

  field :aggregate, 3,
    type: Google.Cloud.Vectorsearch.V1beta.AggregationMethod,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Vectorsearch.V1beta.AggregateDataObjectsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :aggregate_results, 1,
    repeated: true,
    type: Google.Protobuf.Struct,
    json_name: "aggregateResults"
end

defmodule Google.Cloud.Vectorsearch.V1beta.QueryDataObjectsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: Google.Protobuf.Struct, deprecated: false

  field :output_fields, 7,
    type: Google.Cloud.Vectorsearch.V1beta.OutputFields,
    json_name: "outputFields",
    deprecated: false

  field :page_size, 5, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 6, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Vectorsearch.V1beta.QueryDataObjectsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :data_objects, 4,
    repeated: true,
    type: Google.Cloud.Vectorsearch.V1beta.DataObject,
    json_name: "dataObjects"

  field :next_page_token, 3, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Vectorsearch.V1beta.BatchSearchDataObjectsRequest.CombineResultsOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ranker, 1, type: Google.Cloud.Vectorsearch.V1beta.Ranker, deprecated: false

  field :output_fields, 2,
    type: Google.Cloud.Vectorsearch.V1beta.OutputFields,
    json_name: "outputFields",
    deprecated: false

  field :top_k, 3, type: :int32, json_name: "topK", deprecated: false
end

defmodule Google.Cloud.Vectorsearch.V1beta.BatchSearchDataObjectsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :searches, 2,
    repeated: true,
    type: Google.Cloud.Vectorsearch.V1beta.Search,
    deprecated: false

  field :combine, 3,
    type: Google.Cloud.Vectorsearch.V1beta.BatchSearchDataObjectsRequest.CombineResultsOptions,
    deprecated: false
end

defmodule Google.Cloud.Vectorsearch.V1beta.Ranker do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :ranker, 0

  field :rrf, 1, type: Google.Cloud.Vectorsearch.V1beta.ReciprocalRankFusion, oneof: 0
  field :vertex, 2, type: Google.Cloud.Vectorsearch.V1beta.VertexRanker, oneof: 0
end

defmodule Google.Cloud.Vectorsearch.V1beta.ReciprocalRankFusion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :weights, 1, repeated: true, type: :double, deprecated: false
end

defmodule Google.Cloud.Vectorsearch.V1beta.VertexRanker do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :query, 1, type: :string, deprecated: false
  field :title_template, 2, type: :string, json_name: "titleTemplate", deprecated: false
  field :content_template, 3, type: :string, json_name: "contentTemplate", deprecated: false
  field :model, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Vectorsearch.V1beta.BatchSearchDataObjectsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :results, 1,
    repeated: true,
    type: Google.Cloud.Vectorsearch.V1beta.SearchDataObjectsResponse,
    deprecated: false
end

defmodule Google.Cloud.Vectorsearch.V1beta.DataObjectSearchService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.vectorsearch.v1beta.DataObjectSearchService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :SearchDataObjects,
      Google.Cloud.Vectorsearch.V1beta.SearchDataObjectsRequest,
      Google.Cloud.Vectorsearch.V1beta.SearchDataObjectsResponse

  rpc :QueryDataObjects,
      Google.Cloud.Vectorsearch.V1beta.QueryDataObjectsRequest,
      Google.Cloud.Vectorsearch.V1beta.QueryDataObjectsResponse

  rpc :AggregateDataObjects,
      Google.Cloud.Vectorsearch.V1beta.AggregateDataObjectsRequest,
      Google.Cloud.Vectorsearch.V1beta.AggregateDataObjectsResponse

  rpc :BatchSearchDataObjects,
      Google.Cloud.Vectorsearch.V1beta.BatchSearchDataObjectsRequest,
      Google.Cloud.Vectorsearch.V1beta.BatchSearchDataObjectsResponse
end

defmodule Google.Cloud.Vectorsearch.V1beta.DataObjectSearchService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Vectorsearch.V1beta.DataObjectSearchService.Service
end
