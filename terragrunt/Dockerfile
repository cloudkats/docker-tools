#
# The recommended shebang is #!/usr/bin/env bash, not #!/bin/bash
#
###
# Build:
# docker build . --tag test-image
# Run:
# docker run --rm -it test-image /bin/bash
###
FROM hashicorp/terraform:1.2.5 as terraform

FROM alpine:3.16

LABEL org.opencontainers.image.authors="cloudkats@gmail.com" \
  org.opencontainers.image.vendor="https://github.com/cloudkats" \
  org.opencontainers.image.title="cloudkats/terragrunt" \
  org.opencontainers.image.source="https://kubernetes.io/docs/reference/terragrunt/overview/" \
  org.opencontainers.image.demo="https://github.com/gruntwork-io/terragrunt-infrastructure-live-example" \
  org.opencontainers.image.documentation="https://github.com/cloudkats/docker-tools/terragrunt/readme.md" \
  org.opencontainers.image.licenses="https://github.com/cloudkats/docker-tools/LICENCE" \
  org.opencontainers.image.version="${TERRAFORM_VERSION}" \
  org.opencontainers.image.tools="terragrunt"

COPY --from=terraform /bin/terraform /bin/terraform

# hadolint ignore=DL3018,DL3013
RUN apk update && apk add -Uuv --no-cache --update \
  curl unzip ca-certificates \
  bash python3 py3-pip \
  git openssh make \
  jq tree \
  && pip3 install --no-cache-dir --upgrade awscli yq \
  && ln -sv /usr/bin/python3 /usr/bin/python

# renovate: datasource=github-releases depName=gruntwork-io/terragrunt
ENV TERRAGRUNT_VERSION=0.38.5

ADD https://github.com/gruntwork-io/terragrunt/releases/download/v${TERRAGRUNT_VERSION}/terragrunt_linux_amd64 /usr/bin/terragrunt

RUN chmod +x /usr/bin/terragrunt

ENTRYPOINT [ "/bin/bash", "-c" ]
CMD ["/bin/bash"]
