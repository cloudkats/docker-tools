#
# The recommended shebang is #!/usr/bin/env bash, not #!/bin/bash
#
###
# Build:
# docker build . --tag test-image
# Run:
# docker run --rm -it test-image /bin/bash
###
FROM hashicorp/terraform:1.0.2 as terraform

FROM alpine:3.14

LABEL vendor="cloud kats" \
  maintainer="cloudkats@gmail.com" \
  org.opencontainers.image.title="cloudkats/terragrunt" \
  org.opencontainers.image.url="https://terragrunt.gruntwork.io/docs/" \
  org.opencontainers.image.source="https://github.com/cloudkats/docker-tools/terragrunt" \
  org.opencontainers.image.licenses="MIT-only"

COPY --from=terraform /bin/terraform /bin/terraform

# hadolint ignore=DL3018,DL3013
RUN apk update && apk add -Uuv --no-cache --update \
  curl unzip ca-certificates \
  bash python3 \
  git openssh make \
  jq tree \
  && pip3 install --upgrade awscli yq \
  && ln -sv /usr/bin/python3 /usr/bin/python

# renovate: datasource=github-releases depName=gruntwork-io/terragrunt
ENV TERRAGRUNT_VERSION=v0.31.1

ADD https://github.com/gruntwork-io/terragrunt/releases/download/${TERRAGRUNT_VERSION}/terragrunt_linux_amd64 /usr/bin/terragrunt

RUN chmod +x /usr/bin/terragrunt

# RUN curl -SL https://github.com/gruntwork-io/terragrunt/releases/download/v${TERRAGRUNT_VERSION}/terragrunt_linux_amd64 \
#   -o /usr/bin/terragrunt \
#   && chmod +x /usr/bin/terragrunt

ENTRYPOINT [ "/bin/bash", "-c" ]
CMD ["/bin/bash"]
