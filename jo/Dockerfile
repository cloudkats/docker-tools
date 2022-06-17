# docker build --no-cache -t test .
# docker run --rm -it test /bin/bash
FROM ubuntu:22.04@sha256:b6b83d3c331794420340093eb706a6f152d9c1fa51b262d9bf34594887c2c7ac

# renovate: datasource=github-releases depName=jpmens/jo
ARG JO_VERSION=1.4
# hadolint ignore=DL3008
RUN apt-get -qq update \
  && apt-get install -qqy --no-install-recommends jo \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* /var/cache/apt/*

LABEL org.opencontainers.image.authors="cloudkats@gmail.com" \
  org.opencontainers.image.vendor="https://github.com/cloudkats" \
  org.opencontainers.image.title="cloudkats/jo" \
  org.opencontainers.image.source="https://jpmens.net/2016/03/05/a-shell-command-to-create-json-jo" \
  org.opencontainers.image.demo="https://github.com/jpmens/jo/tree/master/tests" \
  org.opencontainers.image.documentation="https://github.com/cloudkats/docker-tools/jo/readme.md" \
  org.opencontainers.image.licenses="https://github.com/cloudkats/docker-tools/LICENCE" \
  org.opencontainers.image.version="${JO_VERSION}" \
  org.opencontainers.image.tools="jo"

ENTRYPOINT [ "/bin/bash", "-c"]
CMD ["/bin/bash"]
