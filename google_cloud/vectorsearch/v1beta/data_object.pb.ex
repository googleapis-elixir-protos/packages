defmodule Google.Cloud.Vectorsearch.V1beta.DataObject.VectorsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Vectorsearch.V1beta.Vector
end

defmodule Google.Cloud.Vectorsearch.V1beta.DataObject do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :data_object_id, 2, type: :string, json_name: "dataObjectId", deprecated: true

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :data, 6, type: Google.Protobuf.Struct, deprecated: false

  field :vectors, 7,
    repeated: true,
    type: Google.Cloud.Vectorsearch.V1beta.DataObject.VectorsEntry,
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Vectorsearch.V1beta.Vector do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :vector_type, 0

  field :dense, 2, type: Google.Cloud.Vectorsearch.V1beta.DenseVector, oneof: 0
  field :sparse, 3, type: Google.Cloud.Vectorsearch.V1beta.SparseVector, oneof: 0
  field :values, 1, repeated: true, type: :float, deprecated: true
end

defmodule Google.Cloud.Vectorsearch.V1beta.DenseVector do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :values, 1, repeated: true, type: :float, deprecated: false
end

defmodule Google.Cloud.Vectorsearch.V1beta.SparseVector do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :values, 1, repeated: true, type: :float, deprecated: false
  field :indices, 2, repeated: true, type: :int32, deprecated: false
end
