FROM node:16.13.0-alpine3.11

LABEL vendor="cloud kats" \
  maintainer="cloudkats@gmail.com" \
  org.opencontainers.image.title="cloudkats/artilleryio/artillery" \
  org.opencontainers.image.url="https://artillery.io/docs/" \
  org.opencontainers.image.source="https://github.com/cloudkats/docker-tools/artillery"

# renovate: datasource=github-releases depName=artilleryio/artillery
ARG ARTILLERY_VERSION=1.7.9

LABEL org.opencontainers.image.authors="cloudkats@gmail.com" \
  org.opencontainers.image.vendor="https://github.com/cloudkats" \
  org.opencontainers.image.title="cloudkats/artillery" \
  org.opencontainers.image.source="https://kubernetes.io/docs/reference/artillery/overview/" \
  org.opencontainers.image.documentation="https://github.com/cloudkats/docker-tools/artillery/readme.md" \
  org.opencontainers.image.licenses="https://github.com/cloudkats/docker-tools/LICENCE" \
  org.opencontainers.image.version="${ARTILLERY_VERSION}" \
  org.opencontainers.image.tools="artillery"

ENV PACKAGES "jq git bash"
# hadolint ignore=DL3018,DL3016
RUN apk add --no-cache --update ${PACKAGES} \
  && npm i npm@latest -g && npm i -g artillery@${ARTILLERY_VERSION} --allow-root --unsafe-perm=true \
  && ln -sv /usr/local/bin/artillery /usr/local/bin/art

WORKDIR /opt

ENTRYPOINT [ "/bin/bash", "-c" ]
CMD ["/bin/bash"]
