# docker build --no-cache -t test .
# docker run --rm -it test /bin/bash
FROM ubuntu:22.04@sha256:f154feaf13b51d16e2b4b5575d69abc808da40c4b80e3a5055aaa4bcc5099d5b

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
