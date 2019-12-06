#!/bin/bash
set -euxo pipefail

# gopls
export GOPATH=$XDG_DATA_HOME/go
goget golang.org/x/tools/cmd/gopls

# typescript-language-server
export NPM_CONFIG_CACHE=$XDG_CACHE_HOME/npm
npm install -g typescript-language-server

# solargraph
export RBENV_ROOT=$XDG_CACHE_HOME/rbenv
export GEM_HOME=$XDG_CACHE_HOME/gem
export GEM_SPEC_CACHE=$GEM_HOME/specs
if command -v rbenv >/dev/null 2>&1; then
  eval "$(rbenv init -)"
fi
gem install solargraph
