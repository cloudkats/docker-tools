#!/bin/bash

set +e

# delete dead containers
docker container prune -f

docker rmi "$(docker images -a | grep "^<none>" | awk '{print $3}')" -f
docker rmi "$(docker images -f "dangling=true" -q)" -f

docker image prune --force --filter "repository=none"
docker image prune --force --filter "repository=<none>"

# keep last 2 builds for each image from the repository
for diru in $(docker images --format "{{.Repository}}" | sort | uniq); do
    for dimr in $(docker images --format "{{.ID}};{{.Repository}}:{{.Tag}};'{{.CreatedAt}}'" --filter reference="$diru" | sed "s/\s+/~/g" | tail -n+3); do
        img_tag=$(echo "${dimr}" | cut -d";" -f2);
        docker rmi "$img_tag";
    done;
done

# clean dangling images if any
docker image prune -f
