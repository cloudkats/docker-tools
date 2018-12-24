FROM jenkins/jenkins:2.156-alpine

LABEL maintainer="Ivan Katliarchuk <cloudkats@gmail.com>"
LABEL Description="This is the Jenkins image with ECS Fargate agent/slave support."

ENV JENKINS_REF /usr/share/jenkins/ref

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

# COPY jenkins-home/jobs $JENKINS_REF/jobs/
# COPY jenkins-home/init.groovy.d $JENKINS_REF/init.groovy.d/
# COPY jenkins-home/dsl $JENKINS_REF/dsl/