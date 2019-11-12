#!/bin/bash
set -ux

# gopls
goget golang.org/x/tools/cmd/gopls

# typescript-language-server
npm install -g typescript-language-server

# solargraph
gem install solargraph
