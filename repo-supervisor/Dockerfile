FROM alpine:3.16

LABEL maintainer="Ivan Katliarchuk <cloudkats@gmail.com>"

RUN apk update
RUN apk upgrade
RUN apk add --no-cache --update \
	bash \
	python \
	py-pip \
	git \
	jq \
	curl

# Install node version manager
RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
RUN /bin/bash -c "source ~/.bashrc && nvm install 7"
