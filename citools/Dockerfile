FROM alpine:3.11

LABEL vendor="cloud kats" \
  maintainer="cloudkats@gmail.com"

RUN apk update;apk upgrade; apk add --no-cache --update \
	curl \
	zip \
	bash \
	python \
	py-pip \
	git \
	openssh \
	make \
	libffi-dev \
	jq \
	tree \
	netcat-openbsd \
	nmap \
	bind-tools \
  ca-certificates \
  && pip install --upgrade pip awscli==1.17.3 boto3==1.11.2 pyyaml==5.2 \
  && rm -rf /var/cache/apk/*

ENTRYPOINT [ "/bin/bash", "-c" ]
CMD ["/bin/bash"]
