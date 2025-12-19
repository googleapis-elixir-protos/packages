defmodule Google.Shopping.Merchant.Accounts.V1beta.VerificationMailSettings.VerificationMailMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :VERIFICATION_MAIL_MODE_UNSPECIFIED, 0
  field :SEND_VERIFICATION_MAIL, 1
  field :SUPPRESS_VERIFICATION_MAIL, 2
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.VerificationMailSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :verification_mail_mode, 1,
    type: Google.Shopping.Merchant.Accounts.V1beta.VerificationMailSettings.VerificationMailMode,
    json_name: "verificationMailMode",
    enum: true,
    deprecated: false
end
