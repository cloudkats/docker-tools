FROM alpine:3.15

LABEL vendor="cloud kats" \
  maintainer="cloudkats@gmail.com"

ARG PACKAGE_VERSION

RUN apk update && apk upgrade && apk add --no-cache --update \
	bash \
	python \
	py-pip \
	git \
	jq \
  && pip install --upgrade pip truffleHog==${PACKAGE_VERSION} \
  && rm -rf /var/lib/apt/lists/* \
  && rm -rf /var/cache/apk/*

ENTRYPOINT [ "/bin/bash", "-c" ]
CMD ["/bin/bash"]