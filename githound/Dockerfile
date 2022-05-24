# renovate: datasource=github-releases depName=ezekg/git-hound
ARG PACKAGE_VERSION=1.0.0

FROM golang:1.18 as builder

ARG PACKAGE_VERSION

RUN wget -q -O "/go/bin/git-hound" \
  "https://github.com/ezekg/git-hound/releases/download/${PACKAGE_VERSION}/git-hound_linux_amd64" \
  && chmod +x /go/bin/git-hound

FROM alpine:3.16

ENV APT_PACKAGES="git bash"

ARG PACKAGE_VERSION

LABEL org.opencontainers.image.authors="cloudkats@gmail.com" \
  org.opencontainers.image.vendor="https://github.com/cloudkats" \
  org.opencontainers.image.title="cloudkats/githound" \
  org.opencontainers.image.source="https://github.com/ezekg/git-hound" \
  org.opencontainers.image.documentation="https://github.com/cloudkats/docker-tools/githound/readme.md" \
  org.opencontainers.image.licenses="https://github.com/cloudkats/docker-tools/LICENCE" \
  org.opencontainers.image.version="${PACKAGE_VERSION}" \
  org.opencontainers.image.tools="${APT_PACKAGES}"

COPY --from=builder /go/bin/git-hound /usr/bin/git-hound
COPY .githound.yml /opt/.githound.yml
# hadolint ignore=DL3018
RUN apk update \
  && apk add --no-cache --update ${APT_PACKAGES} \
	&& chmod +x /usr/bin/git-hound

RUN echo 'alias gh=git-hound' >> ~/.bashrc; \
  echo 'alias githound=git-hound' >> ~/.bashrc;

WORKDIR /opt

ENTRYPOINT ["/bin/bash", "-c"]
CMD ["/bin/bash"]
