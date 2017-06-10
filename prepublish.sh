#!/usr/bin/env sh

cd `dirname $0`
tsc -p ./

# Ensure submodule is in sync and clean
git submodule update --init
cd elixir-ls
git clean -f
mix deps.clean --unused
