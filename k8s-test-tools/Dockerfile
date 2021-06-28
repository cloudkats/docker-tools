###
# Build:
# docker build . --tag test-image --build-arg VERSION=$(cat version)
# Run:
# docker run --rm -it test-image /bin/bash
###
ARG bashver=5.0.17

FROM alpine:3.14 as builder

ARG K8S_VERSION

# hadolint ignore=DL3018,DL3019
RUN apk add --no-cache git ca-certificates bash curl gettext \
	&& rm -rf /var/cache/apk/* \
  && curl -L -o /kubectl https://storage.googleapis.com/kubernetes-release/release/v${K8S_VERSION}/bin/linux/amd64/kubectl \
	&& chmod +x /kubectl

ENV KUBE_CTX_VERSION "0.9.1"
ENV GITHUB_RAW https://raw.githubusercontent.com

# hadolint ignore=DL3018,DL3019
RUN curl -L -o /usr/local/bin/kubectx ${GITHUB_RAW}/ahmetb/kubectx/v${KUBE_CTX_VERSION}/kubectx \
  && curl -L -o /usr/local/bin/kubens ${GITHUB_RAW}/ahmetb/kubectx/v${KUBE_CTX_VERSION}/kubens \
	&& chmod +x /usr/local/bin/kubectx \
	&& chmod +x /usr/local/bin/kubens \
  && git clone https://github.com/bats-core/bats-core.git /bats;

FROM bash:${bashver}

LABEL vendor="cloud kats" \
  maintainer="cloudkats@gmail.com" \
  org.opencontainers.image.title="cloudkats/k8s-test-tools" \
  org.opencontainers.image.source="https://github.com/cloudkats/docker-tools/k8s-test-tools" \
  org.opencontainers.image.tools="kubectl-1.17,bats-5,kubectx-0.9,kubens-0.9"

COPY --from=builder /kubectl /usr/sbin/kubectl
COPY --from=builder /bats /opt/bats/
COPY --from=builder /usr/local/bin/kubectx /usr/local/bin/kubectx
COPY --from=builder /usr/local/bin/kubens /usr/local/bin/kubens

RUN ln -s /opt/bats/bin/bats /usr/sbin/bats; \
	echo 'alias k=kubectl' >> ~/.bashrc; \
	echo 'alias ks=kubens' >> ~/.bashrc;
