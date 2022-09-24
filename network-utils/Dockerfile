FROM python:3.10-slim

ENV BUILD_PACKAGES='build-essential autoconf automake libtool'
ENV ESSTENTIAL_PACKAGES='python3-tk jq git bash curl wget unzip'
ENV NETWORK_DEBUG_PACKAGES='dnsutils netcat telnet'
ENV PACKAGES "curl wget unzip"

# hadolint ignore=DL3013,DL3008
RUN apt-get update -y --no-install-recommends \
  && apt-get install -y --no-install-recommends ${BUILD_PACKAGES} \
  && apt-get install -y --no-install-recommends ${ESSTENTIAL_PACKAGES} \
  && apt-get install -y --no-install-recommends ${NETWORK_DEBUG_PACKAGES} \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* \
  && pip3 install --no-cache-dir --upgrade yq pip

RUN uname

ENTRYPOINT [ "/bin/bash", "-c" ]
CMD ["/bin/bash"]
