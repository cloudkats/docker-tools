###
# Build:
# docker build . --tag test-image --build-arg VERSION=$(cat version)
# Run:
# docker run --rm -it test /bin/bash
###
FROM cloudkats/k8s-test-tools:1.17.9 as tools
FROM cloudkats/helm:3.9.1 as helm
FROM alpine:3.16 as downloader

# hadolint ignore=DL3018,DL3019
RUN apk update && apk add --no-cache ca-certificates \
  git openssl wget bash
RUN update-ca-certificates 2>/dev/null || true

# renovate: datasource=github-releases depName=mozilla/sops
ARG SOPS_VERSION=3.7.3
# hadolint ignore=DL4006
SHELL ["/bin/bash", "-o", "pipefail", "-c"]
RUN wget -q https://github.com/mozilla/sops/releases/download/v${SOPS_VERSION}/sops-v${SOPS_VERSION}.linux -O /usr/local/bin/sops \
  && chmod 0755 /usr/local/bin/sops \
  && chown root:root /usr/local/bin/sops

# renovate: datasource=github-releases depName=mikefarah/yq
ARG YQ_VERSION=4.26.1
ARG YQ_BINARY=yq_linux_amd64

RUN wget --progress=dot:giga https://github.com/mikefarah/yq/releases/download/v${YQ_VERSION}/${YQ_BINARY} -O /usr/bin/yq &&\
  chmod +x /usr/bin/yq

FROM alpine:3.16

LABEL org.opencontainers.image.authors="cloudkats@gmail.com" \
  org.opencontainers.image.vendor="https://github.com/cloudkats" \
  org.opencontainers.image.title="cloudkats/k8s-tools" \
  org.opencontainers.image.source="https://github.com/cloudkats/docker-tools/k8s-tools" \
  org.opencontainers.image.documentation="https://github.com/cloudkats/docker-tools/k8s-tools/readme.md" \
  org.opencontainers.image.licenses="https://github.com/cloudkats/docker-tools/LICENCE" \
  org.opencontainers.image.tools="kubectl bats helm sops python3 yq" \
  org.opencontainers.image.helmp-plugins="helm-secrets"

# hadolint ignore=DL3018,DL3016
COPY --from=tools /usr/sbin/kubectl /usr/local/bin/kubectl
COPY --from=tools /opt/bats /opt/bats/
COPY --from=helm /usr/local/bin/helm /usr/local/bin/helm
COPY --from=downloader /usr/local/bin/sops /usr/local/bin/sops
COPY --from=downloader /usr/bin/yq /usr/local/bin/yq

# hadolint ignore=DL3018,DL3013
RUN apk add --no-cache ca-certificates gettext \
  openssl jq bash git \
  && apk add -Uuv --no-cache --update python3 py3-pip \
  && pip3 install --no-cache-dir --upgrade pip

RUN helm plugin install https://github.com/futuresimple/helm-secrets

RUN ln -sfn /opt/bats/bin/bats /usr/sbin/bats \
  && ln -sfn /usr/local/bin/kubectl /usr/sbin/kubectl \
  && ln -sfn /usr/local/bin/helm /usr/sbin/helm \
  && ln -sfn /usr/local/bin/sops /usr/sbin/sops \
  && ln -sfn /usr/local/bin/yq /usr/sbin/yq

ENTRYPOINT ["/bin/bash", "-c"]
CMD ["/bin/bash"]
