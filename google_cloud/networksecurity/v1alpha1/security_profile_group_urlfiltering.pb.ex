defmodule Google.Cloud.Networksecurity.V1alpha1.UrlFilter.UrlFilteringAction do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :URL_FILTERING_ACTION_UNSPECIFIED, 0
  field :ALLOW, 1
  field :DENY, 2
end

defmodule Google.Cloud.Networksecurity.V1alpha1.UrlFilteringProfile do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :url_filters, 1,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1alpha1.UrlFilter,
    json_name: "urlFilters",
    deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.UrlFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :filtering_action, 1,
    type: Google.Cloud.Networksecurity.V1alpha1.UrlFilter.UrlFilteringAction,
    json_name: "filteringAction",
    enum: true,
    deprecated: false

  field :urls, 2, repeated: true, type: :string, deprecated: false
  field :priority, 3, proto3_optional: true, type: :int32, deprecated: false
end
