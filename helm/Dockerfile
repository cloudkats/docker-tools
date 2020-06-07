#
# The recommended shebang is #!/usr/bin/env bash, not #!/bin/bash
#
ARG ALPINE_VERSION=3.12

FROM alpine:${ALPINE_VERSION} as first

ARG VERSION

# hadolint ignore=DL3018
RUN apk add --no-cache ca-certificates=20191127-r3 \
  && apk add --no-cache -t deps wget=1.20.3-r1 \
  git openssl=1.1.1g-r0 bash=5.0.17-r0 \
  && wget -q https://get.helm.sh/helm-v${VERSION}-linux-amd64.tar.gz \
  && tar -xf helm-v${VERSION}-linux-amd64.tar.gz \
  && mv linux-amd64/helm /usr/local/bin \
  && apk del --purge deps \
  && rm -f /helm-v${VERSION}-linux-amd64.tar.gz

FROM alpine:${ALPINE_VERSION}

# Metadata
LABEL vendor="cloudkats" \
  maintainer="cloudkats@gmail.com" \
  org.opencontainers.image.title="cloudkats/helm" \
  org.opencontainers.image.url="https://helm.sh/docs/" \
  org.opencontainers.image.source="https://github.com/cloudkats/docker-tools/helm" \
  org.opencontainers.image.tools="helm"

COPY --from=first /usr/local/bin/helm /usr/local/bin/helm

RUN apk add --no-cache ca-certificates=20191127-r3 \
  openssl=1.1.1g-r0 bash=5.0.17-r0 \
  && ln -sfn /usr/local/bin/helm /usr/sbin/helm

COPY docker-entrypoint.sh /usr/local/bin/

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["bash"]
