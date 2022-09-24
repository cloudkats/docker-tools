#!/bin/bash

set -e

: "${IMAGE}"

docker run --rm --entrypoint="/bin/sh" "${IMAGE}" -c "python --version"
docker run --rm --entrypoint="/bin/sh" "${IMAGE}" -c "yq --version"
docker run --rm --entrypoint="/bin/sh" "${IMAGE}" -c "jq --version"
docker run --rm --entrypoint="/bin/sh" "${IMAGE}" -c "git --version"
docker run --rm --entrypoint="/bin/sh" "${IMAGE}" -c "curl --version | grep 'curl'"
docker run --rm --entrypoint="/bin/sh" "${IMAGE}" -c "wget --version | grep 'GNU Wget'"

docker run --rm --entrypoint="/bin/sh" "${IMAGE}" -c "host -V"
docker run --rm --entrypoint="/bin/sh" "${IMAGE}" -c "dig -v"
docker run --rm --entrypoint="/bin/sh" "${IMAGE}" -c "dpkg -l | grep netcat"
docker run --rm --entrypoint="/bin/sh" "${IMAGE}" -c "dpkg -l | grep telnet"

echo 'test commands'
set -x
docker run --rm --entrypoint="/bin/sh" "${IMAGE}" -c "host google.com"
docker run --rm --entrypoint="/bin/sh" "${IMAGE}" -c "dig google.com"
docker run --rm --entrypoint="/bin/sh" "${IMAGE}" -c "nslookup wikipedia.org"
docker run --rm --entrypoint="/bin/sh" "${IMAGE}" -c "nc -vz google.com 443"
docker run --rm --entrypoint="/bin/sh" "${IMAGE}" -c "nc -vz -w 5 yahoo.com 443"
