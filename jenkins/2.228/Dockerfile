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

# ARG user=jenkins
# ARG group=jenkins
# ARG uid=1000
# ARG gid=1000

# RUN groupadd -g ${gid} ${group}
# RUN useradd -c "jenkins user" -d /home/${user} -u ${uid} -g ${gid} -m ${user}

ENTRYPOINT ["/sbin/tini", "--", "/usr/local/bin/jenkins.sh"]
