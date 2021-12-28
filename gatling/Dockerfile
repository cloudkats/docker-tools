FROM adoptopenjdk/openjdk11:jdk-11.0.7_10-alpine-slim

# working directory for gatling
WORKDIR /opt

# renovate: datasource=github-releases depName=gatling/gatling
ENV GATLING_VERSION=3.3.1
# Metadata
LABEL org.opencontainers.image.authors="cloudkats@gmail.com" \
  org.opencontainers.image.vendor="https://github.com/cloudkats" \
  org.opencontainers.image.title="cloudkats/gatling" \
  org.opencontainers.image.source="https://gatling.io/docs" \
  org.opencontainers.image.documentation="https://github.com/cloudkats/docker-tools/gatling/readme.md" \
  org.opencontainers.image.licenses="https://github.com/cloudkats/docker-tools/LICENCE" \
  org.opencontainers.image.version="${GATLING_VERSION}" \
  org.opencontainers.image.tools="gatling"

# create directory for gatling install
RUN mkdir -p gatling

# install gatling
ENV DEBIAN_FRONTEND=noninteractive
ENV BUILD_PACKAGES='unzip wget bash'
ENV UTILITY_PACKAGES='ca-certificates net-tools wget tree'
ENV DOWNLOAD_URL="https://repo1.maven.org/maven2/io/gatling/highcharts/gatling-charts-highcharts-bundle/$GATLING_VERSION/gatling-charts-highcharts-bundle-$GATLING_VERSION-bundle.zip"

# hadolint ignore=DL3003,DL3018
RUN apk add --no-cache ${BUILD_PACKAGES} ${UTILITY_PACKAGES} --progress \
  && rm -rf /var/lib/apt/lists/* \
  && mkdir -p /tmp/downloads \
  && wget -q -O /tmp/downloads/gatling-${GATLING_VERSION}.zip ${DOWNLOAD_URL} \
  && mkdir -p /tmp/archive && cd /tmp/archive \
  && unzip /tmp/downloads/gatling-$GATLING_VERSION.zip \
  && mv /tmp/archive/gatling-charts-highcharts-bundle-$GATLING_VERSION/* /opt/gatling/ \
  && rm -rf /tmp/*

# change context to gatling directory
WORKDIR  /opt/gatling

# set directories below to be mountable from host
VOLUME ["/opt/gatling/conf", "/opt/gatling/results", "/opt/gatling/user-files"]

# set environment variables
ENV PATH /opt/gatling/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
ENV GATLING_HOME /opt/gatling

COPY entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]
CMD ["bash"]
