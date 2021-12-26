#!/bin/bash

set -e

docker inspect test --format '{{ json .Config.Labels }}' | sed 's/,/\n/g'
