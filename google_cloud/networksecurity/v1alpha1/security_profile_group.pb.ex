defmodule Google.Cloud.Networksecurity.V1alpha1.SecurityProfile.ProfileType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PROFILE_TYPE_UNSPECIFIED, 0
  field :THREAT_PREVENTION, 1
  field :CUSTOM_MIRRORING, 2
  field :CUSTOM_INTERCEPT, 3
  field :URL_FILTERING, 5
end

defmodule Google.Cloud.Networksecurity.V1alpha1.SecurityProfileGroup.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Networksecurity.V1alpha1.SecurityProfileGroup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :description, 2, type: :string, deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :etag, 5, type: :string, deprecated: false
  field :data_path_id, 12, type: :uint64, json_name: "dataPathId", deprecated: false

  field :labels, 7,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1alpha1.SecurityProfileGroup.LabelsEntry,
    map: true,
    deprecated: false

  field :threat_prevention_profile, 6,
    type: :string,
    json_name: "threatPreventionProfile",
    deprecated: false

  field :custom_mirroring_profile, 8,
    type: :string,
    json_name: "customMirroringProfile",
    deprecated: false

  field :custom_intercept_profile, 9,
    type: :string,
    json_name: "customInterceptProfile",
    deprecated: false

  field :url_filtering_profile, 11,
    type: :string,
    json_name: "urlFilteringProfile",
    deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.SecurityProfile.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Networksecurity.V1alpha1.SecurityProfile do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :profile, 0

  field :threat_prevention_profile, 7,
    type: Google.Cloud.Networksecurity.V1alpha1.ThreatPreventionProfile,
    json_name: "threatPreventionProfile",
    oneof: 0

  field :custom_mirroring_profile, 9,
    type: Google.Cloud.Networksecurity.V1alpha1.CustomMirroringProfile,
    json_name: "customMirroringProfile",
    oneof: 0

  field :custom_intercept_profile, 10,
    type: Google.Cloud.Networksecurity.V1alpha1.CustomInterceptProfile,
    json_name: "customInterceptProfile",
    oneof: 0

  field :url_filtering_profile, 12,
    type: Google.Cloud.Networksecurity.V1alpha1.UrlFilteringProfile,
    json_name: "urlFilteringProfile",
    oneof: 0

  field :name, 1, type: :string, deprecated: false
  field :description, 2, type: :string, deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :etag, 5, type: :string, deprecated: false

  field :labels, 8,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1alpha1.SecurityProfile.LabelsEntry,
    map: true,
    deprecated: false

  field :type, 6,
    type: Google.Cloud.Networksecurity.V1alpha1.SecurityProfile.ProfileType,
    enum: true,
    deprecated: false
end
