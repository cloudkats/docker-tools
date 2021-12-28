# FROM python:3.8.7-alpine3.11
FROM python:3.10-slim

# renovate: datasource=github-releases depName=cloud-custodian/cloud-custodian
ARG PACKAGE_VERSION=0.9.1.0

LABEL org.opencontainers.image.authors="cloudkats@gmail.com" \
  org.opencontainers.image.vendor="https://github.com/cloudkats" \
  org.opencontainers.image.title="cloudkats/c7n-mailer" \
  org.opencontainers.image.source="https://github.com/cloud-custodian/cloud-custodian" \
  org.opencontainers.image.documentation="https://github.com/cloudkats/docker-tools/c7n-mailer/readme.md" \
  org.opencontainers.image.licenses="https://github.com/cloudkats/docker-tools/LICENCE" \
  org.opencontainers.image.version="${PACKAGE_VERSION}" \
  org.opencontainers.image.tools="cloudcustodian-c7n-mailer"

# hadolint ignore=DL3008,DL3013
RUN apt-get update -y --no-install-recommends \
  && apt-get install -y --no-install-recommends bash \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* \
  && pip3 install --no-cache-dir --upgrade yq pip c7n-mailer

ENTRYPOINT [ "/bin/bash", "-c" ]
CMD ["/bin/bash"]
