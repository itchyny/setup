#!/bin/bash
set -euxo pipefail

export RBENV_ROOT=$XDG_CACHE_HOME/rbenv
export GEM_HOME=$XDG_CACHE_HOME/gem
export GEM_SPEC_CACHE=$GEM_HOME/specs
VERSION=$(rbenv install -l | grep -v '-' | tail -n1)
rbenv install -s "$VERSION"
rbenv global "$VERSION"
rbenv versions
