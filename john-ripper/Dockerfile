FROM kalilinux/kali-linux-docker


LABEL vendor="cloud kats" \
  maintainer="cloudkats@gmail.com" \
  org.opencontainers.image.title="cloudkats/john-ripper" \
  org.opencontainers.image.url="https://www.openwall.com/john/doc/EXAMPLES.shtml" \
  org.opencontainers.image.source="https://github.com/cloudkats/docker-tools/john-ripper"

# hadolint ignore=DL3008,DL3013
RUN apt-get install --no-install-recommends  \
  wordlists john coreutils -y \
  && gunzip /usr/share/wordlists/rockyou.txt.gz

# USER john

WORKDIR /home/john

ENTRYPOINT ["/bin/bash"]

