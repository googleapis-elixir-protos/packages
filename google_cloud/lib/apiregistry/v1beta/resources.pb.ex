defmodule Google.Cloud.Apiregistry.V1beta.McpServer do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :description, 3, type: :string, deprecated: false
  field :urls, 4, repeated: true, type: :string
  field :capabilities, 6, type: Google.Protobuf.Struct
  field :state, 7, type: Google.Cloud.Apiregistry.V1beta.State, enum: true, deprecated: false
end

defmodule Google.Cloud.Apiregistry.V1beta.McpTool do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :description, 3, type: :string
  field :mcp_server_urls, 4, repeated: true, type: :string, json_name: "mcpServerUrls"
  field :input_schema, 5, type: Google.Protobuf.Struct, json_name: "inputSchema"
  field :output_schema, 6, type: Google.Protobuf.Struct, json_name: "outputSchema"
  field :annotations, 7, type: Google.Protobuf.Struct
end
