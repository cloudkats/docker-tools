#!/bin/bash

set -ex

: "${IMAGE}"
: "${CREATED}"
: "${CREATED}"
: "${BUILD_URL}"

docker build -t "${IMAGE}" . \
  --label "org.opencontainers.image.created=${CREATED}" \
  --label "org.opencontainers.image.build-url=${BUILD_URL}"
