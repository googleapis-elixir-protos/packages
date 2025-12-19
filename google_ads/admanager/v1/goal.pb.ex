defmodule Google.Ads.Admanager.V1.Goal do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :goal_type, 1,
    proto3_optional: true,
    type: Google.Ads.Admanager.V1.GoalTypeEnum.GoalType,
    json_name: "goalType",
    enum: true

  field :unit_type, 2,
    proto3_optional: true,
    type: Google.Ads.Admanager.V1.UnitTypeEnum.UnitType,
    json_name: "unitType",
    enum: true

  field :units, 3, proto3_optional: true, type: :int64
end
