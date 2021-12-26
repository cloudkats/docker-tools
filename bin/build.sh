#!/bin/bash

set -ex

: "${IMAGE}"
: "${CREATED}"
: "${CREATED}"
: "${BUILD_URL}"

docker build -t "${IMAGE}" . \
  --label "org.opencontainers.image.created=${CREATED}" \
  --label "org.opencontainers.image.build-url=${BUILD_URL}"

# Revisit all label
# org.opencontainers.image.created=${{ steps.prep.outputs.created }}
# org.opencontainers.image.source=${{ github.repositoryUrl }}
# org.opencontainers.image.version=${{ steps.prep.outputs.version }}
# org.opencontainers.image.revision=${{ github.sha }}
# org.opencontainers.image.licenses=${{ github.event.repository.license.name }}
# org.label-schema.vcs-ref=${{ github.ref }}
# org.label-schema.vcs-url="https://github.com/cloudkats/docker-tools/kubectl"
# org.label-schema.build-date=${{ steps.prep.outputs.created }}
# org.label-schema.description="Kubectl docker image"
# org.label-schema.vendor=${{ env.VENDOR }}
