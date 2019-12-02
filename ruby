#!/bin/bash
set -euxo pipefail

VERSION=$(rbenv install -l | grep -v '-' | tail -n1)
rbenv install -s "$VERSION"
rbenv global "$VERSION"
rbenv versions
