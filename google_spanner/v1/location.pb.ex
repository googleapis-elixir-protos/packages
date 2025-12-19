defmodule Google.Spanner.V1.Tablet.Role do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ROLE_UNSPECIFIED, 0
  field :READ_WRITE, 1
  field :READ_ONLY, 2
end

defmodule Google.Spanner.V1.KeyRecipe.Part.Order do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ORDER_UNSPECIFIED, 0
  field :ASCENDING, 1
  field :DESCENDING, 2
end

defmodule Google.Spanner.V1.KeyRecipe.Part.NullOrder do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :NULL_ORDER_UNSPECIFIED, 0
  field :NULLS_FIRST, 1
  field :NULLS_LAST, 2
  field :NOT_NULL, 3
end

defmodule Google.Spanner.V1.Range do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :start_key, 1, type: :bytes, json_name: "startKey"
  field :limit_key, 2, type: :bytes, json_name: "limitKey"
  field :group_uid, 3, type: :uint64, json_name: "groupUid"
  field :split_id, 4, type: :uint64, json_name: "splitId"
  field :generation, 5, type: :bytes
end

defmodule Google.Spanner.V1.Tablet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :tablet_uid, 1, type: :uint64, json_name: "tabletUid"
  field :server_address, 2, type: :string, json_name: "serverAddress"
  field :location, 3, type: :string
  field :role, 4, type: Google.Spanner.V1.Tablet.Role, enum: true
  field :incarnation, 5, type: :bytes
  field :distance, 6, type: :uint32
  field :skip, 7, type: :bool
end

defmodule Google.Spanner.V1.Group do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :group_uid, 1, type: :uint64, json_name: "groupUid"
  field :tablets, 2, repeated: true, type: Google.Spanner.V1.Tablet
  field :leader_index, 3, type: :int32, json_name: "leaderIndex"
  field :generation, 4, type: :bytes
end

defmodule Google.Spanner.V1.KeyRecipe.Part do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :value_type, 0

  field :tag, 1, type: :uint32
  field :order, 2, type: Google.Spanner.V1.KeyRecipe.Part.Order, enum: true

  field :null_order, 3,
    type: Google.Spanner.V1.KeyRecipe.Part.NullOrder,
    json_name: "nullOrder",
    enum: true

  field :type, 4, type: Google.Spanner.V1.Type
  field :identifier, 5, type: :string, oneof: 0
  field :value, 6, type: Google.Protobuf.Value, oneof: 0
  field :random, 8, type: :bool, oneof: 0
  field :struct_identifiers, 7, repeated: true, type: :int32, json_name: "structIdentifiers"
end

defmodule Google.Spanner.V1.KeyRecipe do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :target, 0

  field :table_name, 1, type: :string, json_name: "tableName", oneof: 0
  field :index_name, 2, type: :string, json_name: "indexName", oneof: 0
  field :operation_uid, 3, type: :uint64, json_name: "operationUid", oneof: 0
  field :part, 4, repeated: true, type: Google.Spanner.V1.KeyRecipe.Part
end

defmodule Google.Spanner.V1.RecipeList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :schema_generation, 1, type: :bytes, json_name: "schemaGeneration"
  field :recipe, 3, repeated: true, type: Google.Spanner.V1.KeyRecipe
end

defmodule Google.Spanner.V1.CacheUpdate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :database_id, 1, type: :uint64, json_name: "databaseId"
  field :range, 2, repeated: true, type: Google.Spanner.V1.Range
  field :group, 3, repeated: true, type: Google.Spanner.V1.Group
  field :key_recipes, 5, type: Google.Spanner.V1.RecipeList, json_name: "keyRecipes"
end

defmodule Google.Spanner.V1.RoutingHint.SkippedTablet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :tablet_uid, 1, type: :uint64, json_name: "tabletUid"
  field :incarnation, 2, type: :bytes
end

defmodule Google.Spanner.V1.RoutingHint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :operation_uid, 1, type: :uint64, json_name: "operationUid"
  field :database_id, 2, type: :uint64, json_name: "databaseId"
  field :schema_generation, 3, type: :bytes, json_name: "schemaGeneration"
  field :key, 4, type: :bytes
  field :limit_key, 5, type: :bytes, json_name: "limitKey"
  field :group_uid, 6, type: :uint64, json_name: "groupUid"
  field :split_id, 7, type: :uint64, json_name: "splitId"
  field :tablet_uid, 8, type: :uint64, json_name: "tabletUid"

  field :skipped_tablet_uid, 9,
    repeated: true,
    type: Google.Spanner.V1.RoutingHint.SkippedTablet,
    json_name: "skippedTabletUid"

  field :client_location, 10, type: :string, json_name: "clientLocation"
end
