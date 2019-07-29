FROM jenkins/jenkins:2.156-alpine

LABEL maintainer="Ivan Katliarchuk <cloudkats@gmail.com>"
LABEL Description="This is the Jenkins image with ECS Fargate agent/slave support."

ARG GOSU_VERSION=1.10
ARG JENKINS_HOME=/var/jenkins_home

ENV JENKINS_HOME $JENKINS_HOME
ENV JENKINS_REF /usr/share/jenkins/ref

ENV CASC_JENKINS_CONFIG $JENKINS_HOME/casc_configs

# install jenkins plugins
COPY jenkins-home/plugins.txt $JENKINS_REF/
RUN /usr/local/bin/plugins.sh $JENKINS_REF/plugins.txt

ENV JAVA_OPTS -Dorg.eclipse.jetty.server.Request.maxFormContentSize=100000000 \
	-Dorg.apache.commons.jelly.tags.fmt.timeZone=America/Los_Angeles \
	-Dhudson.diyChunking=false \
	-Djenkins.install.runSetupWizard=false

COPY jenkins-home/*.* $JENKINS_REF/
COPY jenkins-home/userContent $JENKINS_REF/userContent
COPY jenkins-home/init.groovy.d/* /usr/share/jenkins/ref/init.groovy.d/
COPY jenkins-home/casc $JENKINS_HOME/casc_configs/

USER root

COPY bin/* /usr/bin/
# Ability to use usermod + install awscli in order to be able to watch s3 if needed
RUN apk add --no-cache shadow py-setuptools less outils-md5 && \
	easy_install-2.7 pip && \
	pip install --no-cache-dir awscli PyYAML==3.12 six requests botocore boto3

RUN curl -SsL https://releases.hashicorp.com/envconsul/0.7.3/envconsul_0.7.3_linux_amd64.tgz | tar -C /usr/bin -xvzf - && \
	chmod +x /usr/bin/envconsul

RUN curl -SsLo /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64 && \
	chmod +x /usr/bin/gosu

RUN mkdir -p /jenkins-workspace-home && \
	chown -R jenkins:jenkins /jenkins-workspace-home

####################################################################################
# JNLP Tunnel Variables
####################################################################################
# Default port for http
ENV JENKINS_HTTP_PORT_FOR_SLAVES=8080

ENV JENKINS_ENV_HOST_IP_CMD='curl http://169.254.169.254/latest/meta-data/local-ipv4'

ENTRYPOINT ["/sbin/tini", "--", "/usr/bin/entrypoint.sh"]