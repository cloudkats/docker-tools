#!/bin/bash

set -e

PROJECT=$1
TAG=${2:-latest}

DOCKER=$(command -v docker)
docker_image="cloudkats/$PROJECT"
tag="$TAG"

run_docker() {
    if [ -z "$DOCKER" ];then
        echo Could not find the 'docker' executable
        exit 1
    fi
    $DOCKER run -it --rm -p 8080:8080 \
        -e ADMIN_PASSWORD='admin' \
        -e JENKINS_EMAIL=test@gmail.com \
        -e CLI_ENABLED=false \
        -e JENKINS_URL="http://localhost:8080" \
        -p 50000:50000 "${docker_image}":"${tag}"
    # $DOCKER run -it --rm $docker_image:$tag "/bin/sh"
}

run_docker