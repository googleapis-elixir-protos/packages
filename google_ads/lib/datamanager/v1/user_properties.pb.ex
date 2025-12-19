defmodule Google.Ads.Datamanager.V1.CustomerType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :CUSTOMER_TYPE_UNSPECIFIED, 0
  field :NEW, 1
  field :RETURNING, 2
  field :REENGAGED, 3
end

defmodule Google.Ads.Datamanager.V1.CustomerValueBucket do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :CUSTOMER_VALUE_BUCKET_UNSPECIFIED, 0
  field :LOW, 1
  field :MEDIUM, 2
  field :HIGH, 3
end

defmodule Google.Ads.Datamanager.V1.UserProperties do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :customer_type, 1,
    type: Google.Ads.Datamanager.V1.CustomerType,
    json_name: "customerType",
    enum: true,
    deprecated: false

  field :customer_value_bucket, 2,
    type: Google.Ads.Datamanager.V1.CustomerValueBucket,
    json_name: "customerValueBucket",
    enum: true,
    deprecated: false

  field :additional_user_properties, 3,
    repeated: true,
    type: Google.Ads.Datamanager.V1.UserProperty,
    json_name: "additionalUserProperties",
    deprecated: false
end

defmodule Google.Ads.Datamanager.V1.UserProperty do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :property_name, 1, type: :string, json_name: "propertyName", deprecated: false
  field :value, 2, type: :string, deprecated: false
end
