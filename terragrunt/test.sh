#!/bin/bash

set -e

: "${IMAGE}"

docker run --rm --entrypoint="/bin/sh" "${IMAGE}" -c "terraform version"
docker run --rm --entrypoint="/bin/sh" "${IMAGE}" -c "terragrunt --version"
docker run --rm --entrypoint="/bin/sh" "${IMAGE}" -c "aws --version"
docker run --rm --entrypoint="/bin/sh" "${IMAGE}" -c "bash --version"
docker run --rm --entrypoint="/bin/sh" "${IMAGE}" -c "python --version"
docker run --rm --entrypoint="/bin/sh" "${IMAGE}" -c "yq --version"
docker run --rm --entrypoint="/bin/sh" "${IMAGE}" -c "jq --version"
docker run --rm --entrypoint="/bin/sh" "${IMAGE}" -c "git --version"
docker run --rm --entrypoint="/bin/sh" "${IMAGE}" -c "curl --version"
