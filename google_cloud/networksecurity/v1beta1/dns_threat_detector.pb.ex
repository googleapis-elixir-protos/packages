defmodule Google.Cloud.Networksecurity.V1beta1.DnsThreatDetector.Provider do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PROVIDER_UNSPECIFIED, 0
  field :INFOBLOX, 1
end

defmodule Google.Cloud.Networksecurity.V1beta1.DnsThreatDetector.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Networksecurity.V1beta1.DnsThreatDetector do
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

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1beta1.DnsThreatDetector.LabelsEntry,
    map: true,
    deprecated: false

  field :excluded_networks, 5,
    repeated: true,
    type: :string,
    json_name: "excludedNetworks",
    deprecated: false

  field :provider, 6,
    type: Google.Cloud.Networksecurity.V1beta1.DnsThreatDetector.Provider,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1beta1.ListDnsThreatDetectorsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1beta1.ListDnsThreatDetectorsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :dns_threat_detectors, 1,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1beta1.DnsThreatDetector,
    json_name: "dnsThreatDetectors"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1beta1.GetDnsThreatDetectorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1beta1.CreateDnsThreatDetectorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :dns_threat_detector_id, 2,
    type: :string,
    json_name: "dnsThreatDetectorId",
    deprecated: false

  field :dns_threat_detector, 3,
    type: Google.Cloud.Networksecurity.V1beta1.DnsThreatDetector,
    json_name: "dnsThreatDetector",
    deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1beta1.UpdateDnsThreatDetectorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :dns_threat_detector, 2,
    type: Google.Cloud.Networksecurity.V1beta1.DnsThreatDetector,
    json_name: "dnsThreatDetector",
    deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1beta1.DeleteDnsThreatDetectorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1beta1.DnsThreatDetectorService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.networksecurity.v1beta1.DnsThreatDetectorService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ListDnsThreatDetectors,
      Google.Cloud.Networksecurity.V1beta1.ListDnsThreatDetectorsRequest,
      Google.Cloud.Networksecurity.V1beta1.ListDnsThreatDetectorsResponse

  rpc :GetDnsThreatDetector,
      Google.Cloud.Networksecurity.V1beta1.GetDnsThreatDetectorRequest,
      Google.Cloud.Networksecurity.V1beta1.DnsThreatDetector

  rpc :CreateDnsThreatDetector,
      Google.Cloud.Networksecurity.V1beta1.CreateDnsThreatDetectorRequest,
      Google.Cloud.Networksecurity.V1beta1.DnsThreatDetector

  rpc :UpdateDnsThreatDetector,
      Google.Cloud.Networksecurity.V1beta1.UpdateDnsThreatDetectorRequest,
      Google.Cloud.Networksecurity.V1beta1.DnsThreatDetector

  rpc :DeleteDnsThreatDetector,
      Google.Cloud.Networksecurity.V1beta1.DeleteDnsThreatDetectorRequest,
      Google.Protobuf.Empty
end

defmodule Google.Cloud.Networksecurity.V1beta1.DnsThreatDetectorService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Networksecurity.V1beta1.DnsThreatDetectorService.Service
end
