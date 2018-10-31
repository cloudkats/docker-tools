FROM python:3.6-alpine

LABEL maintainer="Ivan Katliarchuk <cloudkats@gmail.com>"

RUN apk add --no-cache git
RUN git clone https://github.com/capitalone/cloud-custodian --depth=1 && \
    cd cloud-custodian && \
    pip install -e .
RUN cd cloud-custodian && git fetch --tags && git checkout tags/0.8.31.2 && \
    cd tools/c7n_mailer && \
    pip install --upgrade -r ./requirements.txt && \
    python setup.py develop && \
    pip install -e . # && \
    rm -rf /var/cache/apk/*
