FROM python:3.10-slim

# renovate: datasource=github-releases depName=trufflesecurity/truffleHog
ARG PACKAGE_VERSION=3.6.9

ENV APT_PACKAGES="bash jq git"
ENV PYTHON_PACKAGES="yq pip truffleHog"

LABEL org.opencontainers.image.authors="cloudkats@gmail.com" \
  org.opencontainers.image.vendor="https://github.com/cloudkats" \
  org.opencontainers.image.title="cloudkats/trafflehog" \
  org.opencontainers.image.source="https://github.com/trufflesecurity/truffleHog" \
  org.opencontainers.image.documentation="https://github.com/cloudkats/docker-tools/trafflehog/readme.md" \
  org.opencontainers.image.licenses="https://github.com/cloudkats/docker-tools/LICENCE" \
  org.opencontainers.image.version="${PACKAGE_VERSION}" \
  org.opencontainers.image.tools="${PYTHON_PACKAGES} ${APT_PACKAGES}"

# hadolint ignore=DL3008,DL3013
RUN apt-get update -y --no-install-recommends \
  && apt-get install -y --no-install-recommends ${APT_PACKAGES} \
  && pip3 install --no-cache-dir --upgrade yq pip truffleHog==${PACKAGE_VERSION} \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

ENTRYPOINT [ "/bin/bash", "-c" ]
CMD ["/bin/bash"]
