# COMMANDS
# docker build . -t local-fastly-falco
# docker run -it --rm local-fastly-falco

# ==========================
# Stage 1: Build Falco
# ==========================
FROM golang:1.21-alpine AS builder

RUN apk add --no-cache git

# working directory for gatling
WORKDIR /opt

# renovate: datasource=github-releases depName=ysugimoto/falco
ENV FALCO_VERSION=v1.20.0
ENV CGO_ENABLED=0
# Install falco (no need to clone)
RUN go install github.com/ysugimoto/falco/cmd/falco@${FALCO_VERSION}

# ==========================
# Stage 2: Minimal runtime
# ==========================
FROM alpine:3.20

# renovate: datasource=github-releases depName=ysugimoto/falco
ENV FALCO_VERSION=1.20.0

# Only extra tool requested
RUN apk add --no-cache --progress bash \
  && rm -rf /var/lib/apt/lists/* \
  && rm -rf /tmp/*

COPY --from=builder /go/bin/falco /usr/local/bin/falco
COPY entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/entrypoint.sh

# Metadata
LABEL org.opencontainers.image.authors="cloudkats@gmail.com" \
  org.opencontainers.image.vendor="https://github.com/cloudkats" \
  org.opencontainers.image.title="cloudkats/fastly-falco" \
  org.opencontainers.image.source="https://github.com/ysugimoto/falco" \
  org.opencontainers.image.documentation="https://github.com/cloudkats/docker-tools/fastly-falco/readme.md" \
  org.opencontainers.image.licenses="https://github.com/cloudkats/docker-tools/LICENCE" \
  org.opencontainers.image.version="${FALCO_VERSION}" \
  org.opencontainers.image.tools="fastly-falco"

# change context to opt directory
WORKDIR  /opt

ENTRYPOINT ["entrypoint.sh"]
CMD ["bash"]
