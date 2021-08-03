FROM node:16.6.1-alpine3.11

LABEL vendor="cloud kats" \
  maintainer="cloudkats@gmail.com" \
  org.opencontainers.image.title="cloudkats/artilleryio/artillery" \
  org.opencontainers.image.url="https://artillery.io/docs/" \
  org.opencontainers.image.source="https://github.com/cloudkats/docker-tools/artillery"

ENV PACKAGES "jq git bash"

# hadolint ignore=DL3018,DL3016
RUN apk add --no-cache --update ${PACKAGES} \
  && npm i npm@latest -g && npm i -g artillery --allow-root --unsafe-perm=true \
  && ln -sv /usr/local/bin/artillery /usr/local/bin/art

WORKDIR /opt

ENTRYPOINT [ "/bin/bash", "-c" ]
CMD ["/bin/bash"]