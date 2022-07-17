FROM cloudkats/terragrunt:0.38.5

# renovate: datasource=github-releases depName=open-policy-agent/opa
ARG OPA_VERSION=0.42.2

LABEL org.opencontainers.image.authors="cloudkats@gmail.com" \
  org.opencontainers.image.vendor="https://github.com/cloudkats" \
  org.opencontainers.image.title="cloudkats/opa" \
  org.opencontainers.image.source="https://www.openpolicyagent.org/docs/latest/" \
  org.opencontainers.image.demo="https://play.openpolicyagent.org/" \
  org.opencontainers.image.documentation="https://github.com/cloudkats/docker-tools/opa/readme.md" \
  org.opencontainers.image.licenses="https://github.com/cloudkats/docker-tools/LICENCE" \
  org.opencontainers.image.version="${OPA_VERSION}" \
  org.opencontainers.image.tools="opa,terraform,terragrunt"

RUN curl -L -o /usr/local/bin/opa https://github.com/open-policy-agent/opa/releases/download/v${OPA_VERSION}/opa_linux_amd64_static \
  && chmod +x /usr/local/bin/opa
