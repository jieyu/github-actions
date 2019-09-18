#!/usr/bin/env bash

pushd "${GITHUB_WORKSPACE}"
pre-commit run -a
popd
