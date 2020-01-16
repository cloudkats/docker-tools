ARG TERRAFORM_VERSION

FROM hashicorp/terraform:${TERRAFORM_VERSION} as source

FROM alpine:3.11

LABEL vendor="cloud kats" \
	maintainer="cloudkats@gmail.com"

COPY --from=source /bin/terraform /bin/terraform

RUN apk update && apk upgrade && apk add --no-cache --update \
  curl \
  unzip \
  ca-certificates \
  bash \
  python \
  py-pip \
  git \
  openssh \
  make \
  libffi-dev \
  jq \
  tree \
  tzdata \
  dos2unix \
  && mkdir -p /opt/workspace \
  && pip install --upgrade pip awscli \
  && rm /var/cache/apk/*

# WORKDIR /opt/workspace
ENTRYPOINT [ "/bin/bash", "-c" ]
CMD ["/bin/bash"]
