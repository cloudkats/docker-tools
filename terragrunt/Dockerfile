#
# The recommended shebang is #!/usr/bin/env bash, not #!/bin/bash
#
FROM hashicorp/terraform:0.12.25 as terraform

FROM alpine:3.11

LABEL vendor="cloud kats" \
  maintainer="cloudkats@gmail.com" \
  org.opencontainers.image.title="cloudkats/terragrunt" \
  org.opencontainers.image.url="https://terragrunt.gruntwork.io/docs/" \
  org.opencontainers.image.source="https://github.com/cloudkats/docker-tools/terragrunt"

COPY --from=terraform /bin/terraform /bin/terraform

# hadolint ignore=DL3018,DL3013
RUN apk update && apk add -Uuv --no-cache --update \
  curl unzip ca-certificates \
  bash python3 \
  git openssh make \
  jq tree \
  && pip3 install --upgrade awscli yq \
  && ln -sv /usr/bin/python3 /usr/bin/python

ARG VERSION
ENV TERRAGRUNT_VERSION $VERSION

RUN curl -SL https://github.com/gruntwork-io/terragrunt/releases/download/v${TERRAGRUNT_VERSION}/terragrunt_linux_amd64 \
  -o /usr/bin/terragrunt \
  && chmod +x /usr/bin/terragrunt

ENTRYPOINT [ "/bin/bash", "-c" ]
CMD ["/bin/bash"]
