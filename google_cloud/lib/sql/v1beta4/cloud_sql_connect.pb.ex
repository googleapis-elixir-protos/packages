defmodule Google.Cloud.Sql.V1beta4.ConnectSettings.CaMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :CA_MODE_UNSPECIFIED, 0
  field :GOOGLE_MANAGED_INTERNAL_CA, 1
  field :GOOGLE_MANAGED_CAS_CA, 2
  field :CUSTOMER_MANAGED_CAS_CA, 3
end

defmodule Google.Cloud.Sql.V1beta4.ConnectSettings.MdxProtocolSupport do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :MDX_PROTOCOL_SUPPORT_UNSPECIFIED, 0
  field :CLIENT_PROTOCOL_TYPE, 1
end

defmodule Google.Cloud.Sql.V1beta4.GetConnectSettingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :read_time, 7, type: Google.Protobuf.Timestamp, json_name: "readTime", deprecated: false
end

defmodule Google.Cloud.Sql.V1beta4.ConnectSettings.ConnectPoolNodeConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, proto3_optional: true, type: :string, deprecated: false

  field :ip_addresses, 2,
    repeated: true,
    type: Google.Cloud.Sql.V1beta4.IpMapping,
    json_name: "ipAddresses",
    deprecated: false

  field :dns_name, 3,
    proto3_optional: true,
    type: :string,
    json_name: "dnsName",
    deprecated: false

  field :dns_names, 4,
    repeated: true,
    type: Google.Cloud.Sql.V1beta4.DnsNameMapping,
    json_name: "dnsNames",
    deprecated: false
end

defmodule Google.Cloud.Sql.V1beta4.ConnectSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :kind, 1, type: :string
  field :server_ca_cert, 2, type: Google.Cloud.Sql.V1beta4.SslCert, json_name: "serverCaCert"

  field :ip_addresses, 3,
    repeated: true,
    type: Google.Cloud.Sql.V1beta4.IpMapping,
    json_name: "ipAddresses"

  field :region, 4, type: :string

  field :database_version, 31,
    type: Google.Cloud.Sql.V1beta4.SqlDatabaseVersion,
    json_name: "databaseVersion",
    enum: true

  field :backend_type, 32,
    type: Google.Cloud.Sql.V1beta4.SqlBackendType,
    json_name: "backendType",
    enum: true

  field :psc_enabled, 33, type: :bool, json_name: "pscEnabled"
  field :dns_name, 34, type: :string, json_name: "dnsName"

  field :server_ca_mode, 35,
    type: Google.Cloud.Sql.V1beta4.ConnectSettings.CaMode,
    json_name: "serverCaMode",
    enum: true

  field :custom_subject_alternative_names, 37,
    repeated: true,
    type: :string,
    json_name: "customSubjectAlternativeNames"

  field :dns_names, 38,
    repeated: true,
    type: Google.Cloud.Sql.V1beta4.DnsNameMapping,
    json_name: "dnsNames",
    deprecated: false

  field :node_count, 63, proto3_optional: true, type: :int32, json_name: "nodeCount"

  field :nodes, 64,
    repeated: true,
    type: Google.Cloud.Sql.V1beta4.ConnectSettings.ConnectPoolNodeConfig,
    deprecated: false

  field :mdx_protocol_support, 39,
    repeated: true,
    type: Google.Cloud.Sql.V1beta4.ConnectSettings.MdxProtocolSupport,
    json_name: "mdxProtocolSupport",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Sql.V1beta4.GenerateEphemeralCertRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :public_key, 3, type: :string
  field :access_token, 4, type: :string, deprecated: false
  field :read_time, 7, type: Google.Protobuf.Timestamp, json_name: "readTime", deprecated: false

  field :valid_duration, 12,
    type: Google.Protobuf.Duration,
    json_name: "validDuration",
    deprecated: false
end

defmodule Google.Cloud.Sql.V1beta4.GenerateEphemeralCertResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ephemeral_cert, 1, type: Google.Cloud.Sql.V1beta4.SslCert, json_name: "ephemeralCert"
end

defmodule Google.Cloud.Sql.V1beta4.SqlConnectService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.sql.v1beta4.SqlConnectService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :GetConnectSettings,
      Google.Cloud.Sql.V1beta4.GetConnectSettingsRequest,
      Google.Cloud.Sql.V1beta4.ConnectSettings

  rpc :GenerateEphemeralCert,
      Google.Cloud.Sql.V1beta4.GenerateEphemeralCertRequest,
      Google.Cloud.Sql.V1beta4.GenerateEphemeralCertResponse
end

defmodule Google.Cloud.Sql.V1beta4.SqlConnectService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Sql.V1beta4.SqlConnectService.Service
end
