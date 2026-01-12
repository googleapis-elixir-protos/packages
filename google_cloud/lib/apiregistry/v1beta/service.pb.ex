defmodule Google.Cloud.Apiregistry.V1beta.GetMcpServerRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apiregistry.V1beta.ListMcpServersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Apiregistry.V1beta.ListMcpServersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :mcp_servers, 1,
    repeated: true,
    type: Google.Cloud.Apiregistry.V1beta.McpServer,
    json_name: "mcpServers"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Apiregistry.V1beta.GetMcpToolRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apiregistry.V1beta.ListMcpToolsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Apiregistry.V1beta.ListMcpToolsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :mcp_tools, 1,
    repeated: true,
    type: Google.Cloud.Apiregistry.V1beta.McpTool,
    json_name: "mcpTools"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Apiregistry.V1beta.CloudApiRegistry.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.apiregistry.v1beta.CloudApiRegistry",
    protoc_gen_elixir_version: "0.15.0"

  rpc :GetMcpServer,
      Google.Cloud.Apiregistry.V1beta.GetMcpServerRequest,
      Google.Cloud.Apiregistry.V1beta.McpServer

  rpc :ListMcpServers,
      Google.Cloud.Apiregistry.V1beta.ListMcpServersRequest,
      Google.Cloud.Apiregistry.V1beta.ListMcpServersResponse

  rpc :GetMcpTool,
      Google.Cloud.Apiregistry.V1beta.GetMcpToolRequest,
      Google.Cloud.Apiregistry.V1beta.McpTool

  rpc :ListMcpTools,
      Google.Cloud.Apiregistry.V1beta.ListMcpToolsRequest,
      Google.Cloud.Apiregistry.V1beta.ListMcpToolsResponse
end

defmodule Google.Cloud.Apiregistry.V1beta.CloudApiRegistry.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Apiregistry.V1beta.CloudApiRegistry.Service
end
