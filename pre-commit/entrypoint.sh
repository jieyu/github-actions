#!/usr/bin/env bash

set -e

pushd "${GITHUB_WORKSPACE}"
pre-commit run -a
popd
