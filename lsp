#!/bin/bash
set -ux

# gopls
GO111MODULE=off go get -u golang.org/x/tools/cmd/gopls

# typescript-language-server
npm install -g typescript-language-server

# solargraph
gem install solargraph
