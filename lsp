#!/bin/bash
set -euxo pipefail

# gopls
if ! command -v gopls >/dev/null; then
  export GOPATH=$XDG_DATA_HOME/go
  goget golang.org/x/tools/cmd/gopls
fi

# typescript-language-server
if ! command -v typescript-language-server >/dev/null; then
  export NPM_CONFIG_CACHE=$XDG_CACHE_HOME/npm
  npm install -g typescript-language-server
fi

# solargraph
if ! command -v solargraph >/dev/null; then
  export RBENV_ROOT=$XDG_CACHE_HOME/rbenv
  export GEM_HOME=$XDG_CACHE_HOME/gem
  export GEM_SPEC_CACHE=$GEM_HOME/specs
  if command -v rbenv >/dev/null 2>&1; then
    eval "$(rbenv init -)"
  fi
  gem install solargraph
fi
