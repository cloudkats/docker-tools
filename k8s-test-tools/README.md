<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
### Table of Contents

- [Kubernetes test tooling](#kubernetes-test-tooling)
  - [Tools installed](#tools-installed)
  - [Run Locally](#run-locally)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

# Kubernetes test tooling

## Tools installed

- [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/)
- [bats](https://github.com/bats-core/bats-core#building-a-docker-image)
- [kubectx](https://github.com/ahmetb/kubectx)
- [curl](https://github.com/curl/curl)

## Run Locally

```
docker run --rm --entrypoint="" -it cloudkats/k8s-tools:v1.13.10 /bin/sh
```
