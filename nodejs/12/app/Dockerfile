###
# Build:
# docker build . --tag test-image --build-arg VERSION=$(cat version)
# Run:
# docker run --rm -it test-image /bin/bash
###
ARG VERSION
FROM node:${VERSION}-alpine3.11

LABEL vendor="cloud kats" \
	maintainer="cloudkats@gmail.com" \
  org.opencontainers.image.source="https://github.com/cloudkats/docker-tools/node" \
  org.opencontainers.image.tools="node=12.16.3" \
  org.opencontainers.image.context="app"

ENV PACKAGES "git bash tini zip"
RUN whoami

RUN mkdir -p /app

WORKDIR /app

COPY entrypoint.sh .

# hadolint ignore=DL3018
RUN apk add --no-cache $PACKAGES \
  && npm i npm@latest -g \
  && npm i -g env-cmd \
  && rm -rf /var/lib/apt/lists/* \
  && rm -rf /var/cache/apk/*

USER node

RUN mkdir /home/node/workspace

WORKDIR /home/node/workspace
