FROM cloudkats/k8s-test-tools:v1.14.10 as tools
FROM lachlanevenson/k8s-helm:v3.1.0 as helm

FROM bash:5.0.16

LABEL vendor="cloud kats" \
  maintainer="cloudkats@gmail.com"

COPY --from=tools /usr/sbin/kubectl /usr/local/bin/kubectl
COPY --from=helm /usr/local/bin/helm /usr/local/bin/helm

ENTRYPOINT [ "/bin/sh", "-c"]
CMD ["/bin/sh"]