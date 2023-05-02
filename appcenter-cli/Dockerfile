FROM node:20

# renovate: datasource=github-releases depName=microsoft/appcenter-cli
ARG APPCENTER_VERSION=2.13.7
# hadolint ignore=DL3016
RUN npm install -g appcenter-cli

LABEL org.opencontainers.image.authors="cloudkats@gmail.com" \
  org.opencontainers.image.vendor="https://github.com/cloudkats" \
  org.opencontainers.image.title="cloudkats/appcenter-cli" \
  org.opencontainers.image.url="https://hub.docker.com/repository/docker/cloudkats/appcenter-cli" \
  org.opencontainers.image.source="https://github.com/cloudkats/docker-tools/appcenter-cli" \
  org.opencontainers.image.documentation="https://github.com/cloudkats/docker-tools/appcenter-cli/readme.md" \
  org.opencontainers.image.licenses="https://github.com/cloudkats/docker-tools/LICENCE"
