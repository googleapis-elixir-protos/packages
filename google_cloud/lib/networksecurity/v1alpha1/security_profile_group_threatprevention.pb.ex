defmodule Google.Cloud.Networksecurity.V1alpha1.Severity do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SEVERITY_UNSPECIFIED, 0
  field :INFORMATIONAL, 1
  field :LOW, 2
  field :MEDIUM, 3
  field :HIGH, 4
  field :CRITICAL, 5
end

defmodule Google.Cloud.Networksecurity.V1alpha1.ThreatType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :THREAT_TYPE_UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :VULNERABILITY, 2
  field :ANTIVIRUS, 3
  field :SPYWARE, 4
  field :DNS, 5
end

defmodule Google.Cloud.Networksecurity.V1alpha1.ThreatAction do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :THREAT_ACTION_UNSPECIFIED, 0
  field :DEFAULT_ACTION, 4
  field :ALLOW, 1
  field :ALERT, 2
  field :DENY, 3
end

defmodule Google.Cloud.Networksecurity.V1alpha1.Protocol do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PROTOCOL_UNSPECIFIED, 0
  field :SMTP, 1
  field :SMB, 2
  field :POP3, 3
  field :IMAP, 4
  field :HTTP2, 5
  field :HTTP, 6
  field :FTP, 7
end

defmodule Google.Cloud.Networksecurity.V1alpha1.ThreatPreventionProfile do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :severity_overrides, 1,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1alpha1.SeverityOverride,
    json_name: "severityOverrides",
    deprecated: false

  field :threat_overrides, 2,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1alpha1.ThreatOverride,
    json_name: "threatOverrides",
    deprecated: false

  field :antivirus_overrides, 4,
    repeated: true,
    type: Google.Cloud.Networksecurity.V1alpha1.AntivirusOverride,
    json_name: "antivirusOverrides",
    deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.SeverityOverride do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :severity, 1,
    type: Google.Cloud.Networksecurity.V1alpha1.Severity,
    enum: true,
    deprecated: false

  field :action, 2,
    type: Google.Cloud.Networksecurity.V1alpha1.ThreatAction,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.ThreatOverride do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :threat_id, 1, type: :string, json_name: "threatId", deprecated: false

  field :type, 2,
    type: Google.Cloud.Networksecurity.V1alpha1.ThreatType,
    enum: true,
    deprecated: false

  field :action, 3,
    type: Google.Cloud.Networksecurity.V1alpha1.ThreatAction,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Networksecurity.V1alpha1.AntivirusOverride do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :protocol, 1,
    type: Google.Cloud.Networksecurity.V1alpha1.Protocol,
    enum: true,
    deprecated: false

  field :action, 2,
    type: Google.Cloud.Networksecurity.V1alpha1.ThreatAction,
    enum: true,
    deprecated: false
end
