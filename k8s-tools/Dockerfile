ARG VERSION
ARG ALPINE_VERSION=3.12

FROM cloudkats/k8s-test-tools:${VERSION} as tools
FROM lachlanevenson/k8s-helm:v3.1.0 as helm
FROM alpine:${ALPINE_VERSION} as downloader

ARG SOPS_VERSION=v3.5.0

# hadolint ignore=DL3018,DL3019
RUN apk update && apk add --no-cache ca-certificates=20191127-r3 git=2.26.2-r0 openssl=1.1.1g-r0 wget=1.20.3-r1
RUN update-ca-certificates 2>/dev/null || true
RUN wget -q https://github.com/mozilla/sops/releases/download/${SOPS_VERSION}/sops-${SOPS_VERSION}.linux -O /usr/local/bin/sops \
  && chmod 0755 /usr/local/bin/sops \
  && chown root:root /usr/local/bin/sops

FROM alpine:${ALPINE_VERSION}

LABEL vendor="cloud kats" \
  maintainer="cloudkats@gmail.com" \
  org.opencontainers.image.title="cloudkats/k8s-tools" \
  org.opencontainers.image.source="https://github.com/cloudkats/docker-tools/k8s-tools" \
  org.opencontainers.image.tools="kubectl,bats,helm,sops,python3,yq"

COPY --from=tools /usr/sbin/kubectl /usr/local/bin/kubectl
COPY --from=tools /opt/bats /opt/bats/
COPY --from=helm /usr/local/bin/helm /usr/local/bin/helm
COPY --from=downloader /usr/local/bin/sops /usr/local/bin/sops

RUN apk add --no-cache ca-certificates=20191127-r3 \
  openssl=1.1.1g-r0 jq=1.6-r1 bash=5.0.17-r0 \
  && apk add -Uuv --no-cache --update python3=3.8.3-r0 py3-pip=20.1.1-r0 \
  && pip3 install --upgrade yq==2.10.1

RUN ln -sfn /opt/bats/bin/bats /usr/sbin/bats \
  && ln -sfn /usr/local/bin/kubectl /usr/sbin/kubectl \
  && ln -sfn /usr/local/bin/helm /usr/sbin/helm \
  && ln -sfn /usr/local/bin/sops /usr/sbin/sops

ENTRYPOINT ["/bin/bash", "-c"]
CMD ["/bin/bash"]
