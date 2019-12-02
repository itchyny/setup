#!/bin/bash
set -euxo pipefail

# gopls
goget golang.org/x/tools/cmd/gopls

# typescript-language-server
npm install -g typescript-language-server

# solargraph
if command -v rbenv >/dev/null 2>&1; then
  eval "$(rbenv init -)"
fi
gem install solargraph
