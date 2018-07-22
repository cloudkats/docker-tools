FROM node:8-alpine

LABEL vendor="cloud kats" \
	maintainer="cloudkats@gmail.com"

RUN npm i npm@latest -g \
	&& npm install -g grunt-cli \
	&& npm install newman --global \
	&& apk add --update zip \
	jq \
	&& rm -rf /var/lib/apt/lists/* \
	&& rm -rf /var/cache/apk/*