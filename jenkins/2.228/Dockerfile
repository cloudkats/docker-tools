ARG VERSION
FROM jenkins/jenkins:${VERSION}


COPY plugins.lock.conf /tmp/plugins.lock.conf
COPY plugins.conf /tmp/plugins.conf

# # REF: directory with preinstalled plugins. Default: /usr/share/jenkins/ref/plugins
RUN rm -rf /usr/share/jenkins/ref/plugins/*.lock
# RUN /usr/local/bin/plugins.sh /tmp/plugins.conf

RUN /usr/local/bin/install-plugins.sh `echo $(cat /tmp/plugins.lock.conf)`
RUN rm -rf /usr/share/jenkins/ref/plugins/*.lock
RUN /usr/local/bin/install-plugins.sh `echo $(cat /tmp/plugins.conf)`

ENTRYPOINT ["/sbin/tini", "--", "/usr/local/bin/jenkins.sh"]
