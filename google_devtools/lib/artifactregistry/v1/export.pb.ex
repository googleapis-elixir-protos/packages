defmodule Google.Devtools.Artifactregistry.V1.ExportArtifactRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :source_artifact, 0

  oneof :destination, 1

  field :source_version, 2, type: :string, json_name: "sourceVersion", oneof: 0, deprecated: false
  field :source_tag, 4, type: :string, json_name: "sourceTag", oneof: 0, deprecated: false
  field :gcs_path, 3, type: :string, json_name: "gcsPath", oneof: 1
  field :repository, 1, type: :string, deprecated: false
end

defmodule Google.Devtools.Artifactregistry.V1.ExportArtifactResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :exported_version, 1,
    type: Google.Devtools.Artifactregistry.V1.Version,
    json_name: "exportedVersion"
end

defmodule Google.Devtools.Artifactregistry.V1.ExportArtifactMetadata.ExportedFile do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :destination, 0

  field :gcs_object_path, 2, type: :string, json_name: "gcsObjectPath", oneof: 0
  field :name, 1, type: :string, deprecated: false
  field :hashes, 3, repeated: true, type: Google.Devtools.Artifactregistry.V1.Hash
end

defmodule Google.Devtools.Artifactregistry.V1.ExportArtifactMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :exported_files, 1,
    repeated: true,
    type: Google.Devtools.Artifactregistry.V1.ExportArtifactMetadata.ExportedFile,
    json_name: "exportedFiles"
end
