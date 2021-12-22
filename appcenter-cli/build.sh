#!/bin/bash

set -ex

: "${IMAGE}"

docker build -t "${IMAGE}" .
