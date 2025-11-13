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
      git: "https://github.com/mrmicahcooper/googleapis_elixir"
      tag: 0.15.0,
      depth: 1,
      sparse: "google_pubsub"
    },
    {:google_maps, 
      git: "https://github.com/mrmicahcooper/googleapis_elixir"
      tag: 0.15.0,
      depth: 1,
      sparse: "google_maps"
    }
  ]
end
```

That's it, now the generated `<file>.pb.ex` files are available in your project
