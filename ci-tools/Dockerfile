FROM alpine:3.7

LABEL maintainer="Ivan Katliarchuk <cloudkats@gmail.com>"

RUN apk update;apk upgrade;apk add ca-certificates && update-ca-certificates
RUN apk add --no-cache --update \
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
	bind-tools

RUN pip install --upgrade pip awscli boto3 pyyaml && rm -rf /var/cache/apk/*

