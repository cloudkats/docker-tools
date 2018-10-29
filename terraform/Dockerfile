FROM alpine:3.7

LABEL vendor="cloud kats" \
	maintainer="cloudkats@gmail.com"

ARG tf_version="0.11.7"
RUN apk update
RUN apk upgrade
RUN apk add ca-certificates && update-ca-certificates
RUN apk add --no-cache --update \
	curl \
	unzip \
	bash \
	python \
	py-pip \
	git \
	openssh \
	make \
	libffi-dev \
	jq \
	tree

RUN apk add dos2unix --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/community/ --allow-untrusted
RUN apk add --update tzdata
RUN pip install --upgrade pip awscli
RUN pip install --upgrade awscli
RUN curl https://releases.hashicorp.com/terraform/${tf_version}/terraform_${tf_version}_linux_amd64.zip -o terraform_${tf_version}_linux_amd64.zip
RUN unzip terraform_${tf_version}_linux_amd64.zip -d /usr/local/bin
RUN mkdir -p /opt/workspace
RUN rm /var/cache/apk/*

# WORKDIR /opt/workspace

RUN terraform init
CMD terraform version
