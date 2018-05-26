FROM node:8-alpine
# contains latest npm and global grun cli with newman
RUN npm i npm@latest -g \
	&& npm install -g grunt-cli \
	&& npm install newman --global \
	&& apk add --update zip