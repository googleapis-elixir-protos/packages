defmodule Google.Cloud.Networksecurity.V1alpha1.UrlList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :description, 4, type: :string, deprecated: false
  field :values, 5, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.ListUrlListsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Networksecurity.V1alpha1.ListUrlListsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :url_lists, 1,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1alpha1.UrlList,
    json_name: "urlLists"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Networksecurity.V1alpha1.GetUrlListRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.CreateUrlListRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :url_list_id, 2, type: :string, json_name: "urlListId", deprecated: false

  field :url_list, 3,
    type: Google.Cloud.Networksecurity.V1alpha1.UrlList,
    json_name: "urlList",
    deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.UpdateUrlListRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :url_list, 2,
    type: Google.Cloud.Networksecurity.V1alpha1.UrlList,
    json_name: "urlList",
    deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.DeleteUrlListRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
