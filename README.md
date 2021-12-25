<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
### Table of Contents

- [Docker Tools](#docker-tools)
  - [Terraform](#terraform)
  - [NodeJS](#nodejs)
  - [Trufflehog](#trufflehog)
  - [CI TOOLS](#ci-tools)
  - [C7n Mailer](#c7n-mailer)
  - [GitHound](#githound)
  - [Jenkins](#jenkins)
  - [Jo](#jo)
  - [Terragrunt](#terragrunt)
  - [Gatling](#gatling)
  - [Artillery](#artillery)
  - [Kubernetes Test Tools](#kubernetes-test-tools)
  - [AppCenter CLI](#appcenter-cli)
  - [Images](#images)
    - [IaC](#iac)
    - [Kubernets](#kubernets)
  - [Create Locally](#create-locally)
  - [Image Hardening](#image-hardening)
  - [Trial](#trial)
  - [How to Contribute](#how-to-contribute)
  - [TODO](#todo)
  - [Commands](#commands)
  - [Resources](#resources)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

- [Open Containers](https://github.com/opencontainers/image-spec/blob/main/annotations.md)
- [Container Label Schema](http://label-schema.org/rc1/)

# Docker Tools

[![Renovate](https://img.shields.io/badge/renovate-enabled-brightgreen.svg)](https://renovatebot.com)
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

## [AppCenter CLI](https://github.com/microsoft/appcenter-cli)

[![](https://github.com/cloudkats/docker-tools/workflows/appcenter-cli/badge.svg)](https://github.com/cloudkats/docker-tools/actions?query=workflow%3Aappcenter-cli)
[![](https://img.shields.io/docker/pulls/cloudkats/appcenter-cli?color=green&logo=docker&logoColor=pink&style=flat-square)](https://hub.docker.com/r/cloudkats/appcenter-cli)

## Images

|   |   |
|---|---|
|   |   |
|   |   |
|   |   |

### IaC

|   |   |
|---|---|
|   |   |
|   |   |
|   |   |

### Kubernets

| Name  | Badges   |
|:--------------------------|:----------------|
|[Helm](https://helm.sh/)   |  [![](https://github.com/cloudkats/docker-tools/workflows/Helm/badge.svg)](https://github.com/cloudkats/docker-tools/actions?query=workflow%3AHelm) [![](https://img.shields.io/docker/pulls/cloudkats/helm?color=green&logo=docker&logoColor=pink&style=flat-square)](https://hub.docker.com/r/cloudkats/helm) |
| [Kubernetes Tools](./k8s-tools/Dockerfile)  |  [![](https://github.com/cloudkats/docker-tools/actions/workflows/ks8.tools.yaml/badge.svg)](https://github.com/cloudkats/docker-tools/actions?query=workflow%3Ak8s.tools) [![](https://img.shields.io/docker/pulls/cloudkats/k8s-tools?color=green&logo=docker&logoColor=pink&style=flat-square)](https://hub.docker.com/r/cloudkats/k8s-tools)|
|   |   |

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

- [] add user to every container (# RUN adduser --system --home /ci --disabled-password --group ci)
- [] Fix broken links
- [] Unify container labels

## Commands

```sh
docker build .  --tag image \
  --build-arg VERSION=$(cat version)
```

## Resources

- [Hardened images](https://repo1.dso.mil/dsop?page=2)

```
docker tag local-image:tagname new-repo:tagname
docker push new-repo:tagname
docker push cloudkats/appcenter-cli:tagname
```
