defmodule Google.Cloud.Vectorsearch.V1beta.CreateDataObjectRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :data_object_id, 2, type: :string, json_name: "dataObjectId", deprecated: false

  field :data_object, 3,
    type: Google.Cloud.Vectorsearch.V1beta.DataObject,
    json_name: "dataObject",
    deprecated: false
end

defmodule Google.Cloud.Vectorsearch.V1beta.BatchCreateDataObjectsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :requests, 2,
    repeated: true,
    type: Google.Cloud.Vectorsearch.V1beta.CreateDataObjectRequest,
    deprecated: false
end

defmodule Google.Cloud.Vectorsearch.V1beta.BatchCreateDataObjectsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :data_objects, 1,
    repeated: true,
    type: Google.Cloud.Vectorsearch.V1beta.DataObject,
    json_name: "dataObjects"
end

defmodule Google.Cloud.Vectorsearch.V1beta.GetDataObjectRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Vectorsearch.V1beta.UpdateDataObjectRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :data_object, 1,
    type: Google.Cloud.Vectorsearch.V1beta.DataObject,
    json_name: "dataObject",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Vectorsearch.V1beta.BatchUpdateDataObjectsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :requests, 2,
    repeated: true,
    type: Google.Cloud.Vectorsearch.V1beta.UpdateDataObjectRequest,
    deprecated: false
end

defmodule Google.Cloud.Vectorsearch.V1beta.BatchUpdateDataObjectsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Vectorsearch.V1beta.DeleteDataObjectRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Vectorsearch.V1beta.BatchDeleteDataObjectsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :requests, 3,
    repeated: true,
    type: Google.Cloud.Vectorsearch.V1beta.DeleteDataObjectRequest,
    deprecated: false
end

defmodule Google.Cloud.Vectorsearch.V1beta.DataObjectService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.vectorsearch.v1beta.DataObjectService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :CreateDataObject,
      Google.Cloud.Vectorsearch.V1beta.CreateDataObjectRequest,
      Google.Cloud.Vectorsearch.V1beta.DataObject

  rpc :BatchCreateDataObjects,
      Google.Cloud.Vectorsearch.V1beta.BatchCreateDataObjectsRequest,
      Google.Cloud.Vectorsearch.V1beta.BatchCreateDataObjectsResponse

  rpc :GetDataObject,
      Google.Cloud.Vectorsearch.V1beta.GetDataObjectRequest,
      Google.Cloud.Vectorsearch.V1beta.DataObject

  rpc :UpdateDataObject,
      Google.Cloud.Vectorsearch.V1beta.UpdateDataObjectRequest,
      Google.Cloud.Vectorsearch.V1beta.DataObject

  rpc :BatchUpdateDataObjects,
      Google.Cloud.Vectorsearch.V1beta.BatchUpdateDataObjectsRequest,
      Google.Cloud.Vectorsearch.V1beta.BatchUpdateDataObjectsResponse

  rpc :DeleteDataObject,
      Google.Cloud.Vectorsearch.V1beta.DeleteDataObjectRequest,
      Google.Protobuf.Empty

  rpc :BatchDeleteDataObjects,
      Google.Cloud.Vectorsearch.V1beta.BatchDeleteDataObjectsRequest,
      Google.Protobuf.Empty
end

defmodule Google.Cloud.Vectorsearch.V1beta.DataObjectService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Vectorsearch.V1beta.DataObjectService.Service
end
