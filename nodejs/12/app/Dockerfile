ARG VERSION
FROM node:${VERSION}

LABEL vendor="cloud kats" \
	maintainer="cloudkats@gmail.com" \
  host="app"

ENV PACKAGES "git bash"

USER root

RUN mkdir -p /app

WORKDIR /app

COPY entrypoint.sh .

RUN apk add --no-cache tini \
  && npm i npm@latest -g \
  && npm i -g env-cmd \
  && apk add  --update $PACKAGES \
  && rm -rf /var/lib/apt/lists/* \
  && rm -rf /var/cache/apk/*
