#!/usr/bin/env bash

set -e

# Ruby
if ! [ -d "$HOME/.rbenv" ]; then
  git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
  git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
fi

# Node
if ! [ -d "$HOME/.nodenv" ]; then
  git clone https://github.com/OiNutter/nodenv.git ~/.nodenv
  git clone https://github.com/OiNutter/node-build.git ~/.nodenv/plugins/node-build
fi

# Elixir
if ! [ -d "$HOME/.exenv" ]; then
  git clone git://github.com/mururu/exenv.git ~/.exenv
  git clone git://github.com/mururu/elixir-build.git ~/.exenv/plugins/elixir-build
fi
