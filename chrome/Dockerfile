# hadolint ignore=DL3006
FROM selenium/standalone-chrome:103.0

# hadolint ignore=DL3002
USER root

ENV PACKAGES "git curl gnupg bash g++ build-essential wget unzip"

# hadolint ignore=DL3008,DL3018,DL3015
RUN apt-get update && \
	apt-get install -yq $PACKAGES && \
	rm -rf /var/lib/apt/lists/* /var/cache/apt/*

SHELL ["/bin/bash", "-eo", "pipefail", "-c"]
# hadolint ignore=DL3004,DL3016
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - && \
	sudo apt-get install -y nodejs && \
	npm install -g yarn

RUN curl -sL https://www.browserstack.com/browserstack-local/BrowserStackLocal-linux-x64.zip -o bs.zip && \
	unzip bs.zip && \
	rm bs.zip && \
	chmod +x /BrowserStackLocal
