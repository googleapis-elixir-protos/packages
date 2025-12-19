defmodule Google.Ads.Admanager.V1.GoalTypeEnum.GoalType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :GOAL_TYPE_UNSPECIFIED, 0
  field :NONE, 1
  field :LIFETIME, 2
  field :DAILY, 3
end

defmodule Google.Ads.Admanager.V1.UnitTypeEnum.UnitType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UNIT_TYPE_UNSPECIFIED, 0
  field :IMPRESSIONS, 1
  field :CLICKS, 2
  field :CLICK_THROUGH_CPA_CONVERSIONS, 3
  field :VIEW_THROUGH_CPA_CONVERSIONS, 4
  field :TOTAL_CPA_CONVERSIONS, 5
  field :VIEWABLE_IMPRESSIONS, 6
  field :IN_TARGET_IMPRESSIONS, 7
end

defmodule Google.Ads.Admanager.V1.GoalTypeEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Ads.Admanager.V1.UnitTypeEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end
