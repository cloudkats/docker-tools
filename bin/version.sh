#!/bin/bash

set +e

DOCKERFILE_PATH="$PWD"

for _ in "$@"; do
    case $1 in
        -r|--regex-version) REGEX_VERSION="$2"; shift ;;
        -p|--path-dockerfile) DOCKERFILE_PATH="$2"; shift ;;
    esac
    shift
done

VERSION="$(sed -n "s/ENV ${REGEX_VERSION}=v\(.*\)/\1/p" "${DOCKERFILE_PATH}"/Dockerfile)"
echo "${VERSION}"
