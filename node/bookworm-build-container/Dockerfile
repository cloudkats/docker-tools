#image from https://snyk.io/blog/choosing-the-best-node-js-docker-image/
# notes from https://snyk.io/blog/10-best-practices-to-containerize-nodejs-web-applications-with-docker/

# --------------> The build image
FROM node:20.19.0-bookworm-slim AS build
RUN apt-get update && apt-get install -y --no-install-recommends dumb-init

ARG APP_VERSION
ENV APP_VERSION=$APP_VERSION
ENV APP_USER 999
ENV APP_GROUP node
ENV WORKDIR /usr/src/app
#ENV NODE_ENV production #not needed in this stage

# difficult to change /.npm to a different non-root path
#ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
## optionally if you want to run npm global bin without specifying path
#ENV PATH=$PATH:/home/node/.npm-global/bin

RUN echo "APP_VERSION: $APP_VERSION"
RUN echo "USER: $APP_USER"
RUN echo "GROUP: $APP_GROUP"
RUN echo "WORKDIR: $WORKDIR"

# wont work without changing /.npm to non-root
#ARG USER=$APP_USER:$APP_GROUP
#USER ${APP_USER}

WORKDIR $WORKDIR

COPY package*.json ./

# copy npmrc securely
# and run npm ci to install node deps
RUN --mount=type=secret,mode=0644,id=npmrc,target=/usr/src/app/.npmrc npm ci --only=production

# --------------> The production image__
FROM node:20.19.0-bookworm-slim AS production

ENV APP_VERSION=$APP_VERSION
ENV APP_USER 999
ENV APP_GROUP node
ENV WORKDIR /usr/src/app
ENV NODE_ENV production

WORKDIR $WORKDIR

RUN echo "NODE_ENV: $NODE_ENV"
RUN echo "WORKDIR: $WORKDIR"

COPY --from=build /usr/bin/dumb-init /usr/bin/dumb-init
COPY --chown=$APP_USER:$APP_GROUP --from=build /usr/src/app/node_modules /usr/src/app/node_modules

COPY --chown=$APP_USER:$APP_GROUP . /usr/src/app

ENV PORT 5000
EXPOSE $PORT

ARG USER=$APP_USER:$APP_GROUP
USER ${APP_USER}

CMD ["dumb-init", "node", "src/index.js"]
