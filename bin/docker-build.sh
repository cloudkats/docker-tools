#!/bin/bash

set -euo

PROJECT="$1"
TAG=${2:-latest}

DOCKER=$(command -v docker)
docker_image="cloudkats/$PROJECT"
tag="$TAG"

build_docker() {
    echo "> Build docker with Node"

    if [ -z "$DOCKER" ];then
        echo Could not find the 'docker' executable
        exit 1
    fi
    "${DOCKER}" build -t "${docker_image}":"${tag}" "${PROJECT}"
    echo "${docker_image} ready"
}

push() {
    docker push "${docker_image}":"${tag}"
}

build_docker
push
