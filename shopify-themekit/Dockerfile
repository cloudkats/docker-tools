FROM alpine

LABEL vendor="cloudkats" \
	maintainer="cloudkats@gmail.com"

RUN apk add --update curl sudo python; \
	apk add --no-cache bash ca-certificates; \
	curl -s https://shopify.github.io/themekit/scripts/install.py | sudo python; \
	apk del curl sudo && rm -rf /var/cache/apk/* && mkdir /theme

WORKDIR /theme