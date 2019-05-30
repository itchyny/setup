#!/bin/bash
set -ux

# gopls
GO111MODULE=off go get -u golang.org/x/tools/cmd/gopls

# metals-vim
trap 'rm -rf /tmp/coursier' EXIT SIGHUP SIGINT SIGQUIT SIGTERM
curl -L -o /tmp/coursier https://git.io/coursier
chmod +x /tmp/coursier
/tmp/coursier bootstrap --java-opt -Xss4m --java-opt -Xms100m --java-opt \
  -Dmetals.client=vim-lsp org.scalameta:metals_2.12:0.5.2 \
  -r bintray:scalacenter/releases -r sonatype:snapshots -o ~/.bin/metals-vim -f

# typescript-language-server
npm install -g typescript-language-server

# solargraph
gem install solargraph
