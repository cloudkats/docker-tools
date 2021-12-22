#!/bin/bash

set -e

: "${IMAGE}"

docker build -t "${IMAGE}" .
