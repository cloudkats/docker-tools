ARG NJS_VERSION=16.13.0-alpine3.11
FROM node:${NJS_VERSION}

LABEL vendor="cloud kats" \
  maintainer="cloudkats@gmail.com" \
  org.opencontainers.image.source="https://github.com/cloudkats/docker-tools/node" \
  org.opencontainers.image.tools="node=$NODE_VERSION"


ENV PACKAGES "zip jq git"

# hadolint ignore=DL3016,DL3018
RUN npm i npm@latest -g \
	&& npm install -g grunt-cli \
	&& npm i -g env-cmd \
	&& npm i -g newman \
	&& apk add --no-cache $PACKAGES \
	&& rm -rf /var/lib/apt/lists/* \
	&& rm -rf /var/cache/apk/*

USER node

RUN mkdir /home/node/workspace

WORKDIR /home/node/workspace
