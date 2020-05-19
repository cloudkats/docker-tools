FROM python:3.8.1-alpine3.11

LABEL vendor="cloud kats" \
  maintainer="cloudkats@gmail.com"

# hadolint ignore=DL3018,DL3003
RUN apk add --no-cache --update git \
    && git clone https://github.com/capitalone/cloud-custodian --depth=1 && \
    cd cloud-custodian && \
    pip install -e .

ARG PACKAGE_VERSION

# hadolint ignore=DL3018,DL3003
RUN cd cloud-custodian && git fetch --tags && git checkout tags/${PACKAGE_VERSION} && \
    cd tools/c7n_mailer && \
    pip install --upgrade -r ./requirements.txt && \
    python setup.py develop && \
    pip install -e . # && \
    rm -rf /var/cache/apk/*
