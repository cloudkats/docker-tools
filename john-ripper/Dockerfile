FROM kalilinux/kali-linux-docker
LABEL maintainer="Ivan Katliarchuk<cloudkats@gmail.com>"
RUN apt-get install wordlists john -y && gunzip /usr/share/wordlists/rockyou.txt.gz

# USER john

WORKDIR /home/john

ENTRYPOINT ["/bin/bash"]

