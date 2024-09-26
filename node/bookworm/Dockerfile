# docker build -t node-local .
# docker run --rm -it --entrypoint /bin/sh node-local
FROM node:20-bookworm-slim

# Setting working directory. All the path will be relative to WORKDIR
WORKDIR /usr/src/app

# ARG CI_JOB_TOKEN
ENV HUSKY 0
# ENV CI_JOB_TOKEN=$CI_JOB_TOKEN

ENV APP_USER 999
ENV APP_GROUP appuser

COPY --chown=$APP_USER:$APP_GROUP ./build ./build
COPY --chown=$APP_USER:$APP_GROUP ./public ./public

WORKDIR /usr/src/app

# Copying source files
COPY --chown=$APP_USER:$APP_GROUP ./server ./server

WORKDIR /usr/src/app/server

# Remove files not needed
RUN rm -f package-lock.json \
	&& rm -f nodemon.json \
	&& rm -f tsconfig.json \
	&& rm -rf src \
	&& ls

EXPOSE 3003

RUN echo "USER: $APP_USER" && echo "GROUP: $APP_GROUP"

# create user and add to node group
RUN useradd -l --system -s /bin/false -g node -u $APP_USER --badname $APP_USER

USER $APP_USER

#CMD ["node", "server/index.js"]
CMD ["npm","run", "start"]
