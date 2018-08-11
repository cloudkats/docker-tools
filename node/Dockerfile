FROM node:8-alpine

LABEL vendor="cloud kats" \
	maintainer="cloudkats@gmail.com"

ENV PACKAGES "zip jq git"

RUN npm i npm@latest -g \
	&& npm install -g grunt-cli \
	&& npm install newman --global \
	&& apk add  --update $PACKAGES \
	&& rm -rf /var/lib/apt/lists/* \
	&& rm -rf /var/cache/apk/*