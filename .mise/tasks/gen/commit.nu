#!/usr/bin/env nu

#MISE description="Commit and push package changes back to repo"
#USAGE flag "--branch <branch>" help="Commit Branch"

git fetch --all
let package_dir: path = './packages/elixir'
let current_branch: string = $env.usage_branch? | default (git branch --show-current)

git checkout $current_branch

if (git status --porcelain $package_dir | is-empty) {
  print 'Elixir proto packages have not changed'
  exit 0
}

if ((git config get user.email) | is-empty) {
  git config set user.email (git log -n 1 --pretty=format:%ae)
}

if ((git config get user.name) | is-empty) {
  git config set user.name (git log -n 1 --pretty=format:%an)
}

git add $package_dir
git commit -m $"Auto-update ($package_dir) ((date now) | format date '%s')"
git push origin $current_branch
