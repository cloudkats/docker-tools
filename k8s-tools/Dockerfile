###
# Build:
# docker build . --tag test-image --build-arg VERSION=$(cat version)
# Run:
# docker run --rm -it test-image /bin/bash
###
ARG VERSION
ARG ALPINE_VERSION=3.12
ARG HELM_VERSION=3.2.4

FROM cloudkats/k8s-test-tools:${VERSION} as tools
FROM cloudkats/helm:${HELM_VERSION} as helm
FROM alpine:${ALPINE_VERSION} as downloader

# hadolint ignore=DL3018,DL3019
RUN apk update && apk add --no-cache ca-certificates=20191127-r4 \
  git=2.26.2-r0 openssl=1.1.1g-r0 wget=1.20.3-r1 bash=5.0.17-r0
RUN update-ca-certificates 2>/dev/null || true

ARG SOPS_VERSION=v3.5.0
# hadolint ignore=DL4006
SHELL ["/bin/bash", "-o", "pipefail", "-c"]
RUN wget -q https://github.com/mozilla/sops/releases/download/${SOPS_VERSION}/sops-${SOPS_VERSION}.linux -O /usr/local/bin/sops \
  && chmod 0755 /usr/local/bin/sops \
  && chown root:root /usr/local/bin/sops

RUN wget -q -O /usr/bin/yq "$(wget -q -O - https://api.github.com/repos/mikefarah/yq/releases/latest | grep browser_download_url | grep linux_amd64 | cut -d '"' -f 4)" \
  && chmod +x /usr/bin/yq

FROM alpine:${ALPINE_VERSION}

LABEL vendor="cloud kats" \
  maintainer="cloudkats@gmail.com" \
  org.opencontainers.image.title="cloudkats/k8s-tools" \
  org.opencontainers.image.source="https://github.com/cloudkats/docker-tools/k8s-tools" \
  org.opencontainers.image.tools="kubectl,bats,helm,sops,python3,yq" \
  org.opencontainers.image.helmp-plugins="helm-secrets"

COPY --from=tools /usr/sbin/kubectl /usr/local/bin/kubectl
COPY --from=tools /opt/bats /opt/bats/
COPY --from=helm /usr/local/bin/helm /usr/local/bin/helm
COPY --from=downloader /usr/local/bin/sops /usr/local/bin/sops
COPY --from=downloader /usr/bin/yq /usr/local/bin/yq

RUN apk add --no-cache ca-certificates=20191127-r4 gettext=0.20.2-r0 \
  openssl=1.1.1g-r0 jq=1.6-r1 bash=5.0.17-r0 git=2.26.2-r0 \
  && apk add -Uuv --no-cache --update python3=3.8.5-r0 py3-pip=20.1.1-r0 \
  && pip3 install --upgrade pip==20.1.1

RUN helm plugin install https://github.com/futuresimple/helm-secrets

RUN ln -sfn /opt/bats/bin/bats /usr/sbin/bats \
  && ln -sfn /usr/local/bin/kubectl /usr/sbin/kubectl \
  && ln -sfn /usr/local/bin/helm /usr/sbin/helm \
  && ln -sfn /usr/local/bin/sops /usr/sbin/sops \
  && ln -sfn /usr/local/bin/yq /usr/sbin/yq

ENTRYPOINT ["/bin/bash", "-c"]
CMD ["/bin/bash"]
