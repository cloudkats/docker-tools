ARG bashver=latest

FROM alpine:3.11 as builder

ARG K8S_VERSION

RUN apk add --no-cache git;apk --update upgrade    && \
	apk add ca-certificates && \
	apk add --no-cache git  && \
	rm -rf /var/cache/apk/* && \
	wget -O /kubectl https://storage.googleapis.com/kubernetes-release/release/v${K8S_VERSION}/bin/linux/amd64/kubectl \
	&& chmod +x /kubectl

ENV KUBE_CTX_VERSION "0.7.1"

RUN apk --no-cache add bash curl &&\
	curl -L -o /usr/local/bin/kubectx https://raw.githubusercontent.com/ahmetb/kubectx/v${KUBE_CTX_VERSION}/kubectx &&\
	curl -L -o /usr/local/bin/kubens https://raw.githubusercontent.com/ahmetb/kubectx/v${KUBE_CTX_VERSION}/kubens &&\
	chmod +x /usr/local/bin/kubectx &&\
	chmod +x /usr/local/bin/kubens \
  && git clone https://github.com/bats-core/bats-core.git /bats;

FROM bash:${bashver}

RUN apk --no-cache add curl

COPY --from=builder /kubectl /usr/sbin/kubectl
COPY --from=builder /bats /opt/bats/
COPY --from=builder /usr/local/bin/kubectx /usr/local/bin/kubectx
COPY --from=builder /usr/local/bin/kubens /usr/local/bin/kubens

RUN ln -s /opt/bats/bin/bats /usr/sbin/bats; \
	echo 'alias k=kubectl' >> ~/.bashrc; \
	echo 'alias ks=kubens' >> ~/.bashrc;
