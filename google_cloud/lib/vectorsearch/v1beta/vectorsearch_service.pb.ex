defmodule Google.Cloud.Vectorsearch.V1beta.Collection.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Vectorsearch.V1beta.Collection.VectorSchemaEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Vectorsearch.V1beta.VectorField
end

defmodule Google.Cloud.Vectorsearch.V1beta.Collection do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 8, type: :string, json_name: "displayName", deprecated: false
  field :description, 9, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Vectorsearch.V1beta.Collection.LabelsEntry,
    map: true,
    deprecated: false

  field :schema, 5, type: Google.Protobuf.Struct, deprecated: true

  field :vector_schema, 7,
    repeated: true,
    type: Google.Cloud.Vectorsearch.V1beta.Collection.VectorSchemaEntry,
    json_name: "vectorSchema",
    map: true,
    deprecated: false

  field :data_schema, 10, type: Google.Protobuf.Struct, json_name: "dataSchema", deprecated: false
end

defmodule Google.Cloud.Vectorsearch.V1beta.VectorField do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :vector_type_config, 0

  field :dense_vector, 3,
    type: Google.Cloud.Vectorsearch.V1beta.DenseVectorField,
    json_name: "denseVector",
    oneof: 0

  field :sparse_vector, 4,
    type: Google.Cloud.Vectorsearch.V1beta.SparseVectorField,
    json_name: "sparseVector",
    oneof: 0
end

defmodule Google.Cloud.Vectorsearch.V1beta.DenseVectorField do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :dimensions, 1, type: :int32

  field :vertex_embedding_config, 3,
    type: Google.Cloud.Vectorsearch.V1beta.VertexEmbeddingConfig,
    json_name: "vertexEmbeddingConfig",
    deprecated: false
end

defmodule Google.Cloud.Vectorsearch.V1beta.SparseVectorField do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Vectorsearch.V1beta.ListCollectionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Vectorsearch.V1beta.ListCollectionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :collections, 1, repeated: true, type: Google.Cloud.Vectorsearch.V1beta.Collection
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Vectorsearch.V1beta.GetCollectionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Vectorsearch.V1beta.CreateCollectionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :collection_id, 2, type: :string, json_name: "collectionId", deprecated: false
  field :collection, 3, type: Google.Cloud.Vectorsearch.V1beta.Collection, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Vectorsearch.V1beta.UpdateCollectionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :collection, 2, type: Google.Cloud.Vectorsearch.V1beta.Collection, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Vectorsearch.V1beta.DeleteCollectionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Vectorsearch.V1beta.Index.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Vectorsearch.V1beta.Index do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 8, type: :string, json_name: "displayName", deprecated: false
  field :description, 9, type: :string, deprecated: false

  field :labels, 10,
    repeated: true,
    type: Google.Cloud.Vectorsearch.V1beta.Index.LabelsEntry,
    map: true,
    deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :distance_metric, 4,
    type: Google.Cloud.Vectorsearch.V1beta.DistanceMetric,
    json_name: "distanceMetric",
    enum: true,
    deprecated: false

  field :index_field, 5, type: :string, json_name: "indexField", deprecated: false

  field :filter_fields, 6,
    repeated: true,
    type: :string,
    json_name: "filterFields",
    deprecated: false

  field :store_fields, 7,
    repeated: true,
    type: :string,
    json_name: "storeFields",
    deprecated: false
end

defmodule Google.Cloud.Vectorsearch.V1beta.CreateIndexRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :index_id, 2, type: :string, json_name: "indexId", deprecated: false
  field :index, 3, type: Google.Cloud.Vectorsearch.V1beta.Index, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Vectorsearch.V1beta.DeleteIndexRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Vectorsearch.V1beta.ListIndexesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Vectorsearch.V1beta.ListIndexesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :indexes, 1, repeated: true, type: Google.Cloud.Vectorsearch.V1beta.Index
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Vectorsearch.V1beta.GetIndexRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Vectorsearch.V1beta.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :target, 3, type: :string, deprecated: false
  field :verb, 4, type: :string, deprecated: false
  field :status_message, 5, type: :string, json_name: "statusMessage", deprecated: false

  field :requested_cancellation, 6,
    type: :bool,
    json_name: "requestedCancellation",
    deprecated: false

  field :api_version, 7, type: :string, json_name: "apiVersion", deprecated: false
end

defmodule Google.Cloud.Vectorsearch.V1beta.ImportDataObjectsRequest.GcsImportConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :contents_uri, 1, type: :string, json_name: "contentsUri", deprecated: false
  field :error_uri, 2, type: :string, json_name: "errorUri", deprecated: false
end

defmodule Google.Cloud.Vectorsearch.V1beta.ImportDataObjectsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :config, 0

  field :gcs_import, 2,
    type: Google.Cloud.Vectorsearch.V1beta.ImportDataObjectsRequest.GcsImportConfig,
    json_name: "gcsImport",
    oneof: 0

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Vectorsearch.V1beta.ImportDataObjectsMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :success_count, 3, type: :int64, json_name: "successCount"
  field :failure_count, 4, type: :int64, json_name: "failureCount"
end

defmodule Google.Cloud.Vectorsearch.V1beta.ImportDataObjectsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :status, 1, type: Google.Rpc.Status
end

defmodule Google.Cloud.Vectorsearch.V1beta.VectorSearchService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.vectorsearch.v1beta.VectorSearchService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ListCollections,
      Google.Cloud.Vectorsearch.V1beta.ListCollectionsRequest,
      Google.Cloud.Vectorsearch.V1beta.ListCollectionsResponse

  rpc :GetCollection,
      Google.Cloud.Vectorsearch.V1beta.GetCollectionRequest,
      Google.Cloud.Vectorsearch.V1beta.Collection

  rpc :CreateCollection,
      Google.Cloud.Vectorsearch.V1beta.CreateCollectionRequest,
      Google.Longrunning.Operation

  rpc :UpdateCollection,
      Google.Cloud.Vectorsearch.V1beta.UpdateCollectionRequest,
      Google.Longrunning.Operation

  rpc :DeleteCollection,
      Google.Cloud.Vectorsearch.V1beta.DeleteCollectionRequest,
      Google.Longrunning.Operation

  rpc :ListIndexes,
      Google.Cloud.Vectorsearch.V1beta.ListIndexesRequest,
      Google.Cloud.Vectorsearch.V1beta.ListIndexesResponse

  rpc :GetIndex,
      Google.Cloud.Vectorsearch.V1beta.GetIndexRequest,
      Google.Cloud.Vectorsearch.V1beta.Index

  rpc :CreateIndex,
      Google.Cloud.Vectorsearch.V1beta.CreateIndexRequest,
      Google.Longrunning.Operation

  rpc :DeleteIndex,
      Google.Cloud.Vectorsearch.V1beta.DeleteIndexRequest,
      Google.Longrunning.Operation

  rpc :ImportDataObjects,
      Google.Cloud.Vectorsearch.V1beta.ImportDataObjectsRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Vectorsearch.V1beta.VectorSearchService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Vectorsearch.V1beta.VectorSearchService.Service
end
