###
# Build:
# docker build kubectl --file kubectl/Dockerfile --tag test
# Run:
# docker run --rm -it test-image /bin/bash
###
FROM alpine:3.12

# renovate: datasource=github-releases depName=kubernetes/kubectl
ENV KUBECTL_VERSION=v0.19.0

# hadolint ignore=DL3018,DL3013
RUN apk add --no-cache ca-certificates bash \
  && apk add --no-cache -t deps curl \
  && curl -L https://storage.googleapis.com/kubernetes-release/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl -o /usr/sbin/kubectl \
  && chmod +x /usr/sbin/kubectl \
  && apk del --purge deps \
  && rm -rf /var/cache/apk/*

# Metadata
LABEL maintainer="cloudkats@gmail.com" \
  org.opencontainers.image.title="kubectl" \
  org.opencontainers.image.source="https://kubernetes.io/docs/reference/kubectl/overview/" \
  org.opencontainers.image.url="https://github.com/cloudkats/docker-tools/kubectl" \
  org.opencontainers.image.version="${KUBECTL_VERSION}" \
  app.tag="kubectl:$KUBECTL_VERSION"

ENTRYPOINT [ "/bin/bash", "-c"]
CMD ["/bin/bash"]
