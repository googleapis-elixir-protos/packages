defmodule Google.Cloud.Databasecenter.V1beta.Engine do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ENGINE_UNSPECIFIED, 0
  field :ENGINE_MYSQL, 1
  field :ENGINE_POSTGRES, 2
  field :ENGINE_SQL_SERVER, 3
  field :ENGINE_NATIVE, 4
  field :ENGINE_MEMORYSTORE_FOR_REDIS, 8
  field :ENGINE_MEMORYSTORE_FOR_REDIS_CLUSTER, 9
  field :ENGINE_FIRESTORE_WITH_NATIVE_MODE, 10
  field :ENGINE_FIRESTORE_WITH_DATASTORE_MODE, 11
  field :ENGINE_EXADATA_ORACLE, 12
  field :ENGINE_ADB_SERVERLESS_ORACLE, 13
  field :ENGINE_FIRESTORE_WITH_MONGODB_COMPATIBILITY_MODE, 14
  field :ENGINE_OTHER, 6
end

defmodule Google.Cloud.Databasecenter.V1beta.ProductType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PRODUCT_TYPE_UNSPECIFIED, 0
  field :PRODUCT_TYPE_CLOUD_SQL, 1
  field :PRODUCT_TYPE_ALLOYDB, 2
  field :PRODUCT_TYPE_SPANNER, 3
  field :PRODUCT_TYPE_BIGTABLE, 6
  field :PRODUCT_TYPE_MEMORYSTORE, 7
  field :PRODUCT_TYPE_FIRESTORE, 8
  field :PRODUCT_TYPE_COMPUTE_ENGINE, 9
  field :PRODUCT_TYPE_ORACLE_ON_GCP, 10
  field :PRODUCT_TYPE_BIGQUERY, 11
  field :PRODUCT_TYPE_OTHER, 5
end

defmodule Google.Cloud.Databasecenter.V1beta.Product do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :type, 1,
    type: Google.Cloud.Databasecenter.V1beta.ProductType,
    enum: true,
    deprecated: false

  field :engine, 2, type: Google.Cloud.Databasecenter.V1beta.Engine, enum: true, deprecated: false
  field :version, 3, type: :string, deprecated: false
  field :minor_version, 4, type: :string, json_name: "minorVersion", deprecated: false
end
