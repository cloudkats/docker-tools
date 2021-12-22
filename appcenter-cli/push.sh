#!/bin/bash

set -ex

: "${IMAGE_ID}"
: "${TAG_VERSION_DATE}"
: "${TAG_VERSION_SHA}"

docker tag image "${IMAGE_ID}:latest"
docker push "${IMAGE_ID}:latest"

docker tag image "${IMAGE_ID}:${TAG_VERSION_DATE}"
docker push "${IMAGE_ID}:${TAG_VERSION_DATE}"

docker tag image "${IMAGE_ID}:${TAG_VERSION_SHA}"
docker push "${IMAGE_ID}:${TAG_VERSION_SHA}"
