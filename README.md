# Google Apis Elixir
Googleapis protobufs generated into Elixir modules.

This repo separates the apis so the can be downloaded individually.

As such, it is not available on Hex.pm

These packages are only on Github where we can "sparse" clone the pieces we want and leave the rest.
Otherwise, it's like way too big to ship it all around.

## Installation
```elixir
def deps do
  [
    {:google_pubsub, 
        github: "googleapis-elixir-protos/packages",
        depth: 1, 
        sparse: "google_pubsub" 
    },
    {:google_maps, 
        github: "googleapis-elixir-protos/packages",
        depth: 1, 
        sparse: "google_maps" 
    },
    {:google_spanner, 
        github: "googleapis-elixir-protos/packages",
        depth: 1, 
        sparse: "google_spanner" 
    },
  ]
end
```

That's it, now the generated `<file>.pb.ex` files are available in your project.

For example, adding `google_spanner` will add all of Google Spanner's proto files like
`mutation.pb.ex` which has the `Google.Spanner.V1.Mutation` module(s)
