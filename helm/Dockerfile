#
# The recommended shebang is #!/usr/bin/env bash, not #!/bin/bash
#
FROM alpine:3.16 as first

# renovate: datasource=github-releases depName=helm/helm
ARG HELM_VERSION=3.9.2

# hadolint ignore=DL3018
RUN apk add --no-cache ca-certificates \
  && apk add --no-cache -t deps wget \
  git openssl bash \
  && wget -q https://get.helm.sh/helm-v${HELM_VERSION}-linux-amd64.tar.gz \
  && tar -xf helm-v${HELM_VERSION}-linux-amd64.tar.gz \
  && mv linux-amd64/helm /usr/local/bin \
  && apk del --purge deps \
  && rm -f /helm-v${HELM_VERSION}-linux-amd64.tar.gz

FROM alpine:3.16

# Metadata
LABEL org.opencontainers.image.authors="cloudkats@gmail.com" \
  org.opencontainers.image.vendor="https://github.com/cloudkats" \
  org.opencontainers.image.title="cloudkats/helm" \
  org.opencontainers.image.source="https://github.com/cloudkats/docker-tools/helm" \
  org.opencontainers.image.documentation="https://github.com/cloudkats/docker-tools/helm/readme.md" \
  org.opencontainers.image.licenses="https://github.com/cloudkats/docker-tools/LICENCE" \
  org.opencontainers.image.tools="helm" \
  org.opencontainers.image.helmp-plugins="helm-secrets"

COPY --from=first /usr/local/bin/helm /usr/local/bin/helm

# hadolint ignore=DL3018
RUN apk add --no-cache ca-certificates \
  openssl bash \
  && ln -sfn /usr/local/bin/helm /usr/sbin/helm

ENTRYPOINT ["/bin/bash", "-c"]
CMD ["/bin/bash"]
