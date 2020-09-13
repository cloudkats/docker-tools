###
# Build:
# docker build . --tag test-image
# Run:
# docker run --rm -it test-image /bin/bash
###
FROM alpine:3.12

# renovate: datasource=github-releases depName=kubernetes/kubectl
ENV VERSION=v0.19.0

# hadolint ignore=DL3018,DL3013
RUN apk add --no-cache ca-certificates bash \
  && apk add --no-cache -t deps curl \
  && curl -L https://storage.googleapis.com/kubernetes-release/release/${VERSION}/bin/linux/amd64/kubectl -o /usr/sbin/kubectl \
  && chmod +x /usr/sbin/kubectl \
  && apk del --purge deps \
  && rm -rf /var/cache/apk/*

# Metadata
LABEL vendor="cloudkats" \
  maintainer="cloudkats@gmail.com" \
  org.opencontainers.image.title="cloudkats/kubectl" \
  org.opencontainers.image.url="https://kubernetes.io/docs/reference/kubectl/overview/" \
  org.opencontainers.image.source="https://github.com/cloudkats/docker-tools/kubectl" \
  org.opencontainers.image.version="${VERSION}"

ENTRYPOINT [ "/bin/bash", "-c"]
CMD ["/bin/bash"]
