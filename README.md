# Google Apis Elixir
Googleapis protobufs generated into Elixir.

This repo separates the the apis so the can be downloaded individually.

As such, it is not available on Hex.pm

These packages are only in Github where we can "sparse" clone the pieces we want and leave the rest.

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

That's it, now the generated `<file>.pb.ex` files are available in your project
