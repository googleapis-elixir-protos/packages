#!/usr/bin/env nu

#MISE description="Download googleapis protos files"

use std/assert

const repo: string = "https://github.com/googleapis/googleapis.git"
const gitignore: path = ".gitignore"

let is_ignored = (
  $gitignore
  | open
  | lines
  | compact --empty 
  | where {|x| $x == $env.GOOGLE_PROTOS_DIR}
)

if ($is_ignored | is-empty) {
  $"($env.GOOGLE_PROTOS_DIR)\n" | save --append $gitignore
}

if ($env.GOOGLE_PROTOS_DIR | path exists) {
  print "Protos exist"
} else {
  git clone --filter=blob:none --no-checkout $repo $env.GOOGLE_PROTOS_DIR
}

cd $env.GOOGLE_PROTOS_DIR

git sparse-checkout init --no-cone
git sparse-checkout set '**/*.proto'
git checkout master -q
