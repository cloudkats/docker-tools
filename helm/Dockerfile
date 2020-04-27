#
# The recommended shebang is #!/usr/bin/env bash, not #!/bin/bash
#

FROM alpine:3.11 as first

ARG VERSION

RUN apk add --no-cache ca-certificates=20191127-r1 \
  && apk add --no-cache -t deps wget=1.20.3-r0 \
  git=2.24.3-r0 openssl=1.1.1g-r0 bash=5.0.11-r1 \
  && wget -q https://get.helm.sh/helm-v${VERSION}-linux-amd64.tar.gz \
  && tar -xf helm-v${VERSION}-linux-amd64.tar.gz \
  && mv linux-amd64/helm /usr/local/bin \
  && apk del --purge deps \
  && rm -f /helm-v${VERSION}-linux-amd64.tar.gz

FROM bash:5.0.16

# Metadata
LABEL vendor="cloudkats" \
  maintainer="cloudkats@gmail.com" \
  org.opencontainers.image.title="cloudkats/helm" \
  org.opencontainers.image.url="https://helm.sh/docs/" \
  org.opencontainers.image.source="https://github.com/cloudkats/docker-tools/helm"

COPY --from=first /usr/local/bin/helm /usr/local/bin/helm

COPY docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["bash"]
