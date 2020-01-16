ARG NODE_VERSION
FROM node:${NODE_VERSION}

LABEL vendor="cloud kats" \
	maintainer="cloudkats@gmail.com"

ENV PACKAGES "zip jq git"

RUN npm i npm@latest -g \
	&& npm install -g grunt-cli \
	&& npm i -g env-cmd \
	&& npm i -g newman \
	&& apk add  --update $PACKAGES \
	&& rm -rf /var/lib/apt/lists/* \
	&& rm -rf /var/cache/apk/*

USER node

RUN mkdir /home/node/workspace

WORKDIR /home/node/workspace
