###
# Build:
# docker build . --tag test
# Run:
# docker run --rm -it test /bin/bash
###
FROM python:3.10-slim

ENV APT_PACKAGES="bash curl zip jq tree git make ca-certificates netcat"
ENV PYTHON_PACKAGES="yq pip python-nmap pyyaml boto3 awscli"

LABEL org.opencontainers.image.authors="cloudkats@gmail.com" \
  org.opencontainers.image.vendor="https://github.com/cloudkats" \
  org.opencontainers.image.title="cloudkats/ci-tools" \
  org.opencontainers.image.source="https://github.com/cloudkats/docker-tools/citools" \
  org.opencontainers.image.documentation="https://github.com/cloudkats/docker-tools/citools/readme.md" \
  org.opencontainers.image.licenses="https://github.com/cloudkats/docker-tools/LICENCE" \
  org.opencontainers.image.version="${PYTHON_VERSION}" \
  org.opencontainers.image.tools="${PYTHON_PACKAGES} ${APT_PACKAGES}"

# hadolint ignore=DL3008,DL3013
RUN apt-get update -y --no-install-recommends \
  && apt-get install -y --no-install-recommends ${APT_PACKAGES} \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* \
  && pip3 install --no-cache-dir --upgrade ${PYTHON_PACKAGES}

ENTRYPOINT [ "/bin/bash", "-c" ]
CMD ["/bin/bash"]
