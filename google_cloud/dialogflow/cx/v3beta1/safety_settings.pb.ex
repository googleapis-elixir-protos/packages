defmodule Google.Cloud.Dialogflow.Cx.V3beta1.SafetySettings.PhraseMatchStrategy do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PHRASE_MATCH_STRATEGY_UNSPECIFIED, 0
  field :PARTIAL_MATCH, 1
  field :WORD_MATCH, 2
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.SafetySettings.RaiSettings.SafetyFilterLevel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SAFETY_FILTER_LEVEL_UNSPECIFIED, 0
  field :BLOCK_NONE, 1
  field :BLOCK_FEW, 2
  field :BLOCK_SOME, 3
  field :BLOCK_MOST, 4
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.SafetySettings.RaiSettings.SafetyCategory do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SAFETY_CATEGORY_UNSPECIFIED, 0
  field :DANGEROUS_CONTENT, 1
  field :HATE_SPEECH, 2
  field :HARASSMENT, 3
  field :SEXUALLY_EXPLICIT_CONTENT, 4
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.SafetySettings.Phrase do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :text, 1, type: :string, deprecated: false
  field :language_code, 2, type: :string, json_name: "languageCode", deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.SafetySettings.RaiSettings.CategoryFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :category, 1,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.SafetySettings.RaiSettings.SafetyCategory,
    enum: true

  field :filter_level, 2,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.SafetySettings.RaiSettings.SafetyFilterLevel,
    json_name: "filterLevel",
    enum: true
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.SafetySettings.RaiSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :category_filters, 3,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.SafetySettings.RaiSettings.CategoryFilter,
    json_name: "categoryFilters",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.SafetySettings.PromptSecuritySettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enable_prompt_security, 1,
    type: :bool,
    json_name: "enablePromptSecurity",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.SafetySettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :default_banned_phrase_match_strategy, 4,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.SafetySettings.PhraseMatchStrategy,
    json_name: "defaultBannedPhraseMatchStrategy",
    enum: true,
    deprecated: false

  field :banned_phrases, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.SafetySettings.Phrase,
    json_name: "bannedPhrases"

  field :rai_settings, 2,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.SafetySettings.RaiSettings,
    json_name: "raiSettings",
    deprecated: false

  field :default_rai_settings, 3,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.SafetySettings.RaiSettings,
    json_name: "defaultRaiSettings",
    deprecated: false

  field :prompt_security_settings, 8,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.SafetySettings.PromptSecuritySettings,
    json_name: "promptSecuritySettings",
    deprecated: false
end
