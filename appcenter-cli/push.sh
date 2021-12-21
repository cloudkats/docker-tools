#!/bin/bash

: "${IMAGE_ID}"
: "${image_version}"
: "${tag_date}"

docker tag image "${IMAGE_ID}:${image_version}.${tag_date}"
docker push "${IMAGE_ID}:${image_version}.${tag_date}"

docker tag image "${IMAGE_ID}:latest"
docker push "${IMAGE_ID}:latest"

if [ "$image_version" != "latest" ]; then
  docker tag image "${IMAGE_ID}:${image_version}"
  docker push "${IMAGE_ID}:${image_version}"
fi
