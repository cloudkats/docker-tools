FROM alpine:3.7

LABEL maintainer="Ivan Katliarchuk <cloudkats@gmail.com>"

RUN apk update
RUN apk upgrade
RUN apk add --no-cache --update \
	bash \
	python \
	py-pip \
	git \
	jq

RUN pip install --upgrade pip truffleHog