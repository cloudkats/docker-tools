# hadolint ignore=DL3006
FROM ubuntu:22.04

ARG user=jenkins
ARG group=jenkins
ARG uid=1000
ARG gid=1000

RUN groupadd -g ${gid} ${group}
RUN useradd -c "jenkins user" -d /home/${user} -u ${uid} -g ${gid} -m ${user}

# hadolint ignore=DL3002
USER root

# hadolint ignore=DL3002
ENV PACKAGES "git curl gnupg bash g++ build-essential wget unzip zip locales openjdk-8-jdk"
ENV DEBIAN_FRONTEND noninteractive

# hadolint ignore=DL3008,DL3018,DL3015
RUN apt-get -qq update && \
	apt-get install -qqy --no-install-recommends $PACKAGES && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/* /var/cache/apt/*

ENV JAVA_HOME /usr/lib/jvm/java-1.8.0-openjdk-amd64

SHELL ["/bin/bash", "-eo", "pipefail", "-c"]
# hadolint ignore=DL3004,DL3008,DL3016
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - && \
	apt-get install --no-install-recommends -y nodejs && \
	npm install -g yarn

RUN curl -sL https://www.browserstack.com/browserstack-local/BrowserStackLocal-linux-x64.zip -o bs.zip && \
	unzip bs.zip && \
	rm bs.zip && \
	chmod +x /BrowserStackLocal

USER ${user}
RUN mkdir /home/${user}/src

ENTRYPOINT ["/bin/bash", "-c"]
CMD ["/bin/bash"]
