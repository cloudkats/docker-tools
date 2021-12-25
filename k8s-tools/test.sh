#!/bin/bash
# shellcheck disable=SC2046
# Build image, run test commands, remove container
docker run --rm $(docker build -q .) \
  /bin/sh -c \
  " \
  kubectl version \
  "

# docker inspect <IMAGE_ID> --format '{{ json .Config.Labels }}' | sed 's/,/\n/g'
