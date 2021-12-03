ARG TERRAFORM_VERSION

FROM hashicorp/terraform:${TERRAFORM_VERSION} as source

FROM alpine:3.15

LABEL vendor="cloud kats" \
	maintainer="cloudkats@gmail.com"

COPY --from=source /bin/terraform /bin/terraform

# hadolint ignore=DL3018,DL3013
RUN apk update && apk add --no-cache --update \
  curl unzip ca-certificates \
  bash python3 \
  git openssh make \
  jq tree \
  tzdata dos2unix \
  && pip3 install --upgrade yq awscli \
  && ln -sv /usr/bin/python3 /usr/bin/python

ENTRYPOINT [ "/bin/bash", "-c" ]
CMD ["/bin/bash"]
