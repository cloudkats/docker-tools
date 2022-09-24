#!/bin/bash

set -ex

: "${IMAGE}"

docker run --rm --entrypoint="/bin/sh" "${IMAGE}" -c "python cloudmapper.py access_check -h"
docker run --rm --entrypoint="/bin/sh" "${IMAGE}" -c "python --version"
docker run --rm --entrypoint="/bin/sh" "${IMAGE}" -c "aws --version"
docker run --rm --entrypoint="/bin/sh" "${IMAGE}" -c "yq --version"
docker run --rm --entrypoint="/bin/sh" "${IMAGE}" -c "jq --version"
docker run --rm --entrypoint="/bin/sh" "${IMAGE}" -c "git --version"
