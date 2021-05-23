# Docker Tools

[renovate-badge]: https://img.shields.io/badge/renovate-app-blue.svg
[![](https://img.shields.io/github/license/cloudkats/docker-tools)](https://github.com/cloudkats/docker-tools)
![](https://img.shields.io/github/v/tag/cloudkats/docker-tools)
[![](https://img.shields.io/github/repo-size/cloudkats/docker-tools)](https://github.com/cloudkats/docker-tools)
![](https://img.shields.io/github/languages/top/cloudkats/docker-tools?color=green&logo=docker&logoColor=blue)
![](https://img.shields.io/github/commit-activity/m/terraform-module/terraform-aws-lambda)
![](https://img.shields.io/github/last-commit/terraform-module/terraform-aws-lambda)

## Terraform

[![](https://github.com/cloudkats/docker-tools/workflows/Terraform/badge.svg)](https://github.com/cloudkats/docker-tools/actions?query=workflow%3ATerraform)
[![](https://img.shields.io/docker/pulls/cloudkats/terraform?color=green&logo=docker&logoColor=pink&style=flat-square)](https://hub.docker.com/r/cloudkats/terraform)

## NodeJS

[![](https://github.com/cloudkats/docker-tools/workflows/node.12.app/badge.svg)](https://github.com/cloudkats/docker-tools/actions?query=workflow%3Anode.12.app)
[![](https://img.shields.io/docker/pulls/cloudkats/node?color=green&logo=docker&logoColor=pink&style=flat-square)](https://hub.docker.com/r/cloudkats/node)

## Trufflehog

[![](https://github.com/cloudkats/docker-tools/workflows/Trufflehog/badge.svg)](https://github.com/cloudkats/docker-tools/actions?query=workflow%3ATrufflehog)
[![](https://img.shields.io/docker/pulls/cloudkats/trufflehog?color=green&logo=docker&logoColor=pink&style=flat-square)](https://hub.docker.com/r/cloudkats/trufflehog)

## CI TOOLS

[![](https://github.com/cloudkats/docker-tools/workflows/CiTools/badge.svg)](https://github.com/cloudkats/docker-tools/actions?query=workflow%3ACiTools)
[![](https://img.shields.io/docker/pulls/cloudkats/ci-tools?color=green&logo=docker&logoColor=pink&style=flat-square)](https://hub.docker.com/r/cloudkats/ci-tools)

## C7n Mailer

[![](https://github.com/cloudkats/docker-tools/workflows/C7nMailer/badge.svg)](https://github.com/cloudkats/docker-tools/actions?query=workflow%3AC7nMailer)
[![](https://img.shields.io/docker/pulls/cloudkats/c7n-mailer?color=green&logo=docker&logoColor=pink&style=flat-square)](https://hub.docker.com/r/cloudkats/c7n-mailer)

## GitHound

[![](https://github.com/cloudkats/docker-tools/workflows/GitHound/badge.svg)](https://github.com/cloudkats/docker-tools/actions?query=workflow%3AGitHound)
[![](https://img.shields.io/docker/pulls/cloudkats/githound?color=green&logo=docker&logoColor=pink&style=flat-square)](https://hub.docker.com/r/cloudkats/githound)

## Jenkins

[![](https://github.com/cloudkats/docker-tools/workflows/jenkins.2.228/badge.svg)](https://github.com/cloudkats/docker-tools/actions?query=workflow%3Ajenkins.2.228)
[![](https://img.shields.io/docker/pulls/cloudkats/jenkins?color=green&logo=docker&logoColor=pink&style=flat-square)](https://hub.docker.com/r/cloudkats/jenkins)

## Jo

- [Git Repo](https://github.com/jpmens/jo)

[![](https://github.com/cloudkats/docker-tools/workflows/jo/badge.svg)](https://github.com/cloudkats/docker-tools/actions?query=workflow%3Ajo)
[![](https://img.shields.io/docker/pulls/cloudkats/jo?color=green&logo=docker&logoColor=pink&style=flat-square)](https://hub.docker.com/r/cloudkats/jo)

## Terragrunt

- [Git Repo](https://github.com/gruntwork-io/terragrunt)

[![](https://github.com/cloudkats/docker-tools/workflows/terragrunt/badge.svg)](https://github.com/cloudkats/docker-tools/actions?query=workflow%3Aterragrunt)
[![](https://img.shields.io/docker/pulls/cloudkats/terragrunt?color=green&logo=docker&logoColor=pink&style=flat-square)](https://hub.docker.com/r/cloudkats/terragrunt)

<!-- performance -->

## Gatling

[![](https://github.com/cloudkats/docker-tools/workflows/gatling/badge.svg)](https://github.com/cloudkats/docker-tools/actions?query=workflow%3Agatling)
[![](https://img.shields.io/docker/pulls/cloudkats/gatling?color=green&logo=docker&logoColor=pink&style=flat-square)](https://hub.docker.com/r/cloudkats/gatling)

## Artillery

- [Git Repo](https://github.com/artilleryio/artillery)

[![](https://github.com/cloudkats/docker-tools/workflows/artillery/badge.svg)](https://github.com/cloudkats/docker-tools/actions?query=workflow%3Aartillery)
[![](https://img.shields.io/docker/pulls/cloudkats/artillery?color=green&logo=docker&logoColor=pink&style=flat-square)](https://hub.docker.com/r/cloudkats/artillery)

<!-- kubernetes -->

## Kubernetes Test Tools

[![](https://github.com/cloudkats/docker-tools/workflows/k8sTestTools/badge.svg)](https://github.com/cloudkats/docker-tools/actions?query=workflow%3Ak8sTestTools)
[![](https://img.shields.io/docker/pulls/cloudkats/k8s-test-tools?color=green&logo=docker&logoColor=pink&style=flat-square)](https://hub.docker.com/r/cloudkats/k8s-test-tools)

## Kubernetes Tools

[![](https://github.com/cloudkats/docker-tools/workflows/k8sTools/badge.svg)](https://github.com/cloudkats/docker-tools/actions?query=workflow%3Ak8sTools)
[![](https://img.shields.io/docker/pulls/cloudkats/k8s-tools?color=green&logo=docker&logoColor=pink&style=flat-square)](https://hub.docker.com/r/cloudkats/k8s-tools)

## Helm

[![](https://github.com/cloudkats/docker-tools/workflows/Helm/badge.svg)](https://github.com/cloudkats/docker-tools/actions?query=workflow%3AHelm)
[![](https://img.shields.io/docker/pulls/cloudkats/helm?color=green&logo=docker&logoColor=pink&style=flat-square)](https://hub.docker.com/r/cloudkats/helm)

## Create Locally
```
$ cd <Folder>

$ ARG DOCKER_REGISTRY
$ ARG ARCH
$ ARG OS
$ ARG OS_RELEASE
$ ARG TIMESTAMP

$ FROM ${DOCKER_REGISTRY:-none}/{ARCH:-amd64}/{OS:-ubuntu}/${RELEASE:-bionic}:${TIMESTAMP:-latest}
```

## Image Hardening

```Dockerfile
FROM <your repo>/<your project>/<your image>:<your tag>
ARG user=testuser
ARG group=testuser
ARG uid=2000
ARG gid=2000
ENV TEST_HOME /home/testuser
RUN groupadd -g ${gid} ${group} \
&& useradd -d "$TEST_HOME" -u ${uid} -g ${gid} -m -s /bin/bash ${user}
RUN chown -R ${user} "$TEST_HOME"
RUN chown -R ${user} "/usr/src"
USER ${user}
```

## Trial

- https://github.com/reviewdog/action-hadolint

## How to Contribute

Submit a pull request

## TODO

- add user to every container (# RUN adduser --system --home /ci --disabled-password --group ci)

## Commands

```sh
docker build .  --tag image \
  --build-arg VERSION=$(cat version)
```

## TODO

- [] Fix Renovate
