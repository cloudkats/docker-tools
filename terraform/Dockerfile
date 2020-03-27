ARG TERRAFORM_VERSION

FROM hashicorp/terraform:${TERRAFORM_VERSION} as source

FROM alpine:3.11

LABEL vendor="cloud kats" \
	maintainer="cloudkats@gmail.com"

COPY --from=source /bin/terraform /bin/terraform

RUN apk update && apk add --no-cache --update \
  curl=7.67.0-r0 \
  unzip=6.0-r4 \
  ca-certificates=20191127-r1 \
  bash=5.0.11-r1 \
  python=2.7.16-r3 \
  py-pip=18.1-r0 \
  git=2.24.1-r0 \
  openssh=8.1_p1-r0 \
  make=4.2.1-r2 \
  libffi-dev=3.2.1-r6 \
  jq=1.6-r0 \
  tree=1.8.0-r0 \
  tzdata=2019c-r0 \
  dos2unix=7.4.1-r0 \
  && mkdir -p /opt/workspace \
  && pip install --upgrade pip==20.0.2 awscli==1.17.10 \
  && rm /var/cache/apk/*

# WORKDIR /opt/workspace
ENTRYPOINT [ "/bin/bash", "-c" ]
CMD ["/bin/bash"]
