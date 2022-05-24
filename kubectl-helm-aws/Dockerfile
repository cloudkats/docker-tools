# Update versions as needed.
FROM lachlanevenson/k8s-helm:v3.8.2
FROM lachlanevenson/k8s-kubectl:v1.23.6


FROM alpine:3.16
ENV AWSCLI_VERSION 1.17.10
RUN apk add -U --no-cache python3 ca-certificates \
  && pip3 install --no-cache-dir --upgrade pip \
  && pip3 --no-cache-dir install awscli==${AWSCLI_VERSION}

COPY --from=0 /usr/local/bin/helm /usr/local/bin/helm
COPY --from=1 /usr/local/bin/kubectl /usr/local/bin/kubectl