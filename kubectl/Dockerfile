###
# Build:
# docker build kubectl --file kubectl/Dockerfile --tag test
# Run:
# docker run --rm -it kubectl /bin/bash
###
FROM alpine:3.16

# renovate: datasource=github-tags depName=kubernetes/kubectl
ENV KUBECTL_VERSION=v0.24.3

# hadolint ignore=DL3018,DL3013
RUN apk add --no-cache ca-certificates bash \
  && apk add --no-cache -t deps curl \
  && curl -L https://storage.googleapis.com/kubernetes-release/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl -o /usr/sbin/kubectl \
  && chmod +x /usr/sbin/kubectl \
  && apk del --purge deps \
  && rm -rf /var/cache/apk/*

# Metadata
LABEL org.opencontainers.image.authors="cloudkats@gmail.com" \
  org.opencontainers.image.vendor="https://github.com/cloudkats" \
  org.opencontainers.image.title="cloudkats/kubectl" \
  org.opencontainers.image.source="https://kubernetes.io/docs/reference/kubectl/overview/" \
  org.opencontainers.image.documentation="https://github.com/cloudkats/docker-tools/kubectl/readme.md" \
  org.opencontainers.image.licenses="https://github.com/cloudkats/docker-tools/LICENCE" \
  org.opencontainers.image.version="${KUBECTL_VERSION}" \
  org.opencontainers.image.tools="kubectl"

ENTRYPOINT [ "/bin/bash", "-c"]
CMD ["/bin/bash"]
