#!/usr/bin/env nu

mix do local.hex --force + local.rebar --force

if ((which protoc-gen-elixir) | is-empty) {
  mix escript.install hex protobuf $env.ELIXIR_PROTOBUF_VERSION --force
  exit 0
}

if ($env.ELIXIR_PROTOBUF_VERSION != $"(protoc-gen-elixir --version)") {
  mix escript.install hex protobuf $env.ELIXIR_PROTOBUF_VERSION --force
}
