# renovate: datasource=github-releases depName=hashicorp/terraform
ARG TERRAFORM_VERSION=1.2.5

FROM hashicorp/terraform:${TERRAFORM_VERSION} as source
FROM alpine:3.16

LABEL org.opencontainers.image.authors="cloudkats@gmail.com" \
  org.opencontainers.image.vendor="https://github.com/cloudkats" \
  org.opencontainers.image.title="cloudkats/kubectl" \
  org.opencontainers.image.source="https://kubernetes.io/docs/reference/terraform/overview/" \
  org.opencontainers.image.documentation="https://github.com/cloudkats/docker-tools/terraform/readme.md" \
  org.opencontainers.image.licenses="https://github.com/cloudkats/docker-tools/LICENCE" \
  org.opencontainers.image.version="${TERRAFORM_VERSION}" \
  org.opencontainers.image.tools="terraform"

COPY --from=source /bin/terraform /bin/terraform

# hadolint ignore=DL3018,DL3013
RUN apk update && apk add --no-cache --update \
  curl unzip ca-certificates \
  bash python3 py3-pip \
  git openssh make \
  jq tree \
  tzdata dos2unix \
  && pip3 install --no-cache-dir --upgrade yq awscli pip \
  && ln -sv /usr/bin/python3 /usr/bin/python

ENTRYPOINT [ "/bin/bash", "-c" ]
CMD ["/bin/bash"]
