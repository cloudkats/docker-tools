###
# Build:
# docker build . --tag test-image --build-arg VERSION=$(cat version)
# Run:
# docker run --rm -it test-image /bin/bash
###
FROM alpine:3.14

LABEL vendor="cloud kats" \
  maintainer="cloudkats@gmail.com"

ARG AWSCLI_VERSION=1.18.112
ARG BOTO_VERSION=1.14.35
ARG PYYAML_VERSION=5.3.1
ARG PIP_VERSION=20.2.1
ARG PYTHON3_VERSION=3.8.5-r0
ARG ZIP_VERSION=3.0-r8

# hadolint ignore=DL3018
RUN apk add --no-cache --update \
	curl \
  zip=${ZIP_VERSION} \
	bash \
  python3=${PYTHON3_VERSION} \
	py-pip \
	git \
	openssh \
	make \
	libffi-dev \
	jq \
	tree \
	netcat-openbsd \
	nmap \
	bind-tools \
  ca-certificates \
  && pip install --upgrade pip==${PIP_VERSION} \
    awscli==${AWSCLI_VERSION} boto3==${BOTO_VERSION} \
    pyyaml==${PYYAML_VERSION} \
  && rm -rf /var/cache/apk/*

ENTRYPOINT [ "/bin/bash", "-c" ]
CMD ["/bin/bash"]
