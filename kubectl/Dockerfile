FROM alpine:3.11

ARG VERSION

RUN apk add --no-cache ca-certificates=20191127-r1 bash=5.0.11-r1 \
  && apk add --no-cache -t deps curl=7.67.0-r0 \
  && curl -L https://storage.googleapis.com/kubernetes-release/release/${VERSION}/bin/linux/amd64/kubectl -o /usr/sbin/kubectl \
  && chmod +x /usr/sbin/kubectl \
  && apk del --purge deps \
  && rm -rf /var/cache/apk/*

# Metadata
LABEL vendor="cloudkats" \
  maintainer="cloudkats@gmail.com" \
  org.opencontainers.image.title="cloudkats/kubectl" \
  org.opencontainers.image.url="https://kubernetes.io/docs/reference/kubectl/overview/" \
  org.opencontainers.image.source="https://github.com/cloudkats/docker-tools/kubectl"

ENTRYPOINT [ "/bin/bash", "-c"]
CMD ["/bin/bash"]