defmodule Google.Ads.Admanager.V1.LineItem do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :order, 2, proto3_optional: true, type: :string, deprecated: false

  field :display_name, 3,
    proto3_optional: true,
    type: :string,
    json_name: "displayName",
    deprecated: false

  field :start_time, 6,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "startTime",
    deprecated: false

  field :end_time, 7,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "endTime",
    deprecated: false

  field :line_item_type, 17,
    proto3_optional: true,
    type: Google.Ads.Admanager.V1.LineItemTypeEnum.LineItemType,
    json_name: "lineItemType",
    enum: true,
    deprecated: false

  field :rate, 20, proto3_optional: true, type: Google.Type.Money, deprecated: false
  field :budget, 35, proto3_optional: true, type: Google.Type.Money, deprecated: false

  field :custom_field_values, 59,
    repeated: true,
    type: Google.Ads.Admanager.V1.CustomFieldValue,
    json_name: "customFieldValues",
    deprecated: false

  field :goal, 76, proto3_optional: true, type: Google.Ads.Admanager.V1.Goal, deprecated: false
end
