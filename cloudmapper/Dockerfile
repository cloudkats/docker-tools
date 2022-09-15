# https://github.com/duo-labs/cloudmapper
FROM python:3.10-slim as cloudmapper

# renovate: datasource=github-releases depName=duo-labs/cloudmapper
ARG CLOUDMAPPER_VERSION=2.10.0
ENV BUILD_PACKAGES='build-essential autoconf automake libtool'
ENV ESSTENTIAL_PACKAGES='python3-tk jq awscli git'
ENV GIT_CLONE_CMD="--branch ${CLOUDMAPPER_VERSION} --depth 1 https://github.com/duo-labs/cloudmapper.git"
WORKDIR /opt/cloudmapper
# hadolint ignore=DL3008,DL3013
RUN apt-get update -y --no-install-recommends \
  && apt-get install -y --no-install-recommends ${BUILD_PACKAGES} \
  && apt-get install -y --no-install-recommends ${ESSTENTIAL_PACKAGES} \
  && apt-get install -y --no-install-recommends bash \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* \
  && git clone ${GIT_CLONE_CMD} /opt/cloudmapper \
  && pip3 install --no-cache-dir -r requirements.txt \
  && pip3 install --no-cache-dir --upgrade yq awscli pip

EXPOSE 8000

LABEL org.opencontainers.image.authors="cloudkats@gmail.com" \
  org.opencontainers.image.vendor="https://github.com/cloudkats" \
  org.opencontainers.image.title="cloudkats/cloudmapper" \
  org.opencontainers.image.source="https://github.com/duo-labs/cloudmapper" \
  org.opencontainers.image.demo="https://duo-labs.github.io/cloudmapper/" \
  org.opencontainers.image.documentation="https://github.com/cloudkats/docker-tools/cloudmapper/readme.md" \
  org.opencontainers.image.licenses="https://github.com/cloudkats/docker-tools/LICENCE" \
  org.opencontainers.image.version="${CLOUDMAPPER_VERSION}" \
  org.opencontainers.image.tools="cloudmapper"

ENTRYPOINT ["python", "cloudmapper.py", "webserver", "--public"]
