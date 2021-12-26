<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
### Table of Contents

- [Docker Tools](#docker-tools)
  - [NodeJS](#nodejs)
  - [Trufflehog](#trufflehog)
  - [GitHound](#githound)
  - [Jenkins](#jenkins)
  - [Jo](#jo)
  - [AppCenter CLI](#appcenter-cli)
  - [Docker Images](#docker-images)
    - [IaC](#iac)
    - [Kubernets](#kubernets)
  - [Load Testing](#load-testing)
  - [CI Automation](#ci-automation)
  - [Cloud Security](#cloud-security)
  - [Cyber Security](#cyber-security)
  - [Languages](#languages)
  - [Create Locally](#create-locally)
  - [Image Hardening](#image-hardening)
  - [Trial](#trial)
  - [How to Contribute](#how-to-contribute)
  - [TODO](#todo)
  - [Commands](#commands)
  - [Resources](#resources)
  - [Example commands](#example-commands)

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

## NodeJS

[![](https://github.com/cloudkats/docker-tools/workflows/node.12.app/badge.svg)](https://github.com/cloudkats/docker-tools/actions?query=workflow%3Anode.12.app)
[![](https://img.shields.io/docker/pulls/cloudkats/node?color=green&logo=docker&logoColor=pink&style=flat-square)](https://hub.docker.com/r/cloudkats/node)

## Trufflehog

[![](https://github.com/cloudkats/docker-tools/workflows/Trufflehog/badge.svg)](https://github.com/cloudkats/docker-tools/actions?query=workflow%3ATrufflehog)
[![](https://img.shields.io/docker/pulls/cloudkats/trufflehog?color=green&logo=docker&logoColor=pink&style=flat-square)](https://hub.docker.com/r/cloudkats/trufflehog)

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

## [AppCenter CLI](https://github.com/microsoft/appcenter-cli)

[![](https://github.com/cloudkats/docker-tools/workflows/appcenter-cli/badge.svg)](https://github.com/cloudkats/docker-tools/actions?query=workflow%3Aappcenter-cli)
[![](https://img.shields.io/docker/pulls/cloudkats/appcenter-cli?color=green&logo=docker&logoColor=pink&style=flat-square)](https://hub.docker.com/r/cloudkats/appcenter-cli)

## Docker Images

### [IaC](https://en.wikipedia.org/wiki/Infrastructure_as_code)

|  Name    | Badges  | Version |
|:---------|:----------|:-----------|
| [Terraform](./terraform/Dockerfile)  | [![](https://github.com/cloudkats/docker-tools/workflows/iac.terraform/badge.svg)](https://github.com/cloudkats/docker-tools/actions?query=workflow%3Aiac.terraform) [![](https://img.shields.io/docker/pulls/cloudkats/terraform?color=green&logo=docker&logoColor=pink&style=flat-square)](https://hub.docker.com/r/cloudkats/terraform)  | [![](https://img.shields.io/docker/v/cloudkats/terraform?color=green&logo=docker&logoColor=pink&style=flat-square)](https://hub.docker.com/r/cloudkats/terraform) |
| [Terragrunt](./terragrunt/Dockerfile)  | [![](https://github.com/cloudkats/docker-tools/workflows/iac.terragrunt/badge.svg)](https://github.com/cloudkats/docker-tools/actions?query=workflow%3Aiac.terragrunt) [![](https://img.shields.io/docker/pulls/cloudkats/terragrunt?color=green&logo=docker&logoColor=pink&style=flat-square)](https://hub.docker.com/r/cloudkats/terragrunt)  | [![](https://img.shields.io/docker/v/cloudkats/terragrunt?color=green&logo=docker&logoColor=pink&style=flat-square)](https://hub.docker.com/r/cloudkats/terragrunt) |

### [Kubernets](https://kubernetes.io/)

| Name  | Badges   | Version |
|:--------------------------|:----------------|:--------------|
|[Helm](./helm/Dockerfile)   |  [![](https://github.com/cloudkats/docker-tools/workflows/k8s.helm/badge.svg)](https://github.com/cloudkats/docker-tools/actions?query=workflow%3Ak8s.helm) [![](https://img.shields.io/docker/pulls/cloudkats/helm?color=green&logo=docker&logoColor=pink&style=flat-square)](https://hub.docker.com/r/cloudkats/helm) | [![](https://img.shields.io/docker/v/cloudkats/helm?color=green&logo=docker&logoColor=pink&style=flat-square)](https://hub.docker.com/r/cloudkats/helm) |
| [Kubernetes Tools](./k8s-tools/Dockerfile)  |  [![](https://github.com/cloudkats/docker-tools/actions/workflows/k8s.tools.yaml/badge.svg)](https://github.com/cloudkats/docker-tools/actions?query=workflow%3Ak8s.tools) [![](https://img.shields.io/docker/pulls/cloudkats/k8s-tools?color=green&logo=docker&logoColor=pink&style=flat-square)](https://hub.docker.com/r/cloudkats/k8s-tools)| [![](https://img.shields.io/docker/v/cloudkats/k8s-tools?color=green&logo=docker&logoColor=pink&style=flat-square)](https://hub.docker.com/r/cloudkats/k8s-tools) |
| [Kubernetes Test Tools](./k8s-test-tools/Dockerfile) |  [![](https://github.com/cloudkats/docker-tools/workflows/k8s.test-tools/badge.svg)](https://github.com/cloudkats/docker-tools/actions?query=workflow%3Ak8s.test-tools) [![](https://img.shields.io/docker/pulls/cloudkats/k8s-test-tools?color=green&logo=docker&logoColor=pink&style=flat-square)](https://hub.docker.com/r/cloudkats/k8s-test-tools) | [![](https://img.shields.io/docker/v/cloudkats/k8s-test-tools?color=green&logo=docker&logoColor=pink&style=flat-square)](https://hub.docker.com/r/cloudkats/k8s-test-tools) |
| [Kubectl](./kubectl/Dockerfile) | [![](https://github.com/cloudkats/docker-tools/workflows/k8s.kubectl/badge.svg)](https://github.com/cloudkats/docker-tools/actions?query=workflow%3Ak8s.kubectl) [![](https://img.shields.io/docker/pulls/cloudkats/kubectl?color=green&logo=docker&logoColor=pink&style=flat-square)](https://hub.docker.com/r/cloudkats/kubectl) | [![](https://img.shields.io/docker/v/cloudkats/kubectl?color=green&logo=docker&logoColor=pink&style=flat-square)](https://hub.docker.com/r/cloudkats/kubectl) |

## [Load Testing](https://loadninja.com/load-testing/)

|  Name    | Badges  | Version |
|:---------|:----------|:-----------|
| [Gatling](./gatling/Dockerfile)  | [![](https://github.com/cloudkats/docker-tools/workflows/load.gatling/badge.svg)](https://github.com/cloudkats/docker-tools/actions?query=workflow%3Aload.gatling) [![](https://img.shields.io/docker/pulls/cloudkats/gatling?color=green&logo=docker&logoColor=pink&style=flat-square)](https://hub.docker.com/r/cloudkats/gatling) | [![](https://img.shields.io/docker/v/cloudkats/gatling?color=green&logo=docker&logoColor=pink&style=flat-square)](https://hub.docker.com/r/cloudkats/gatling) |
| [Artilery](./artilery/Dockerfile)  | [![](https://github.com/cloudkats/docker-tools/workflows/load.artillery/badge.svg)](https://github.com/cloudkats/docker-tools/actions?query=workflow%3Aload.artillery) [![](https://img.shields.io/docker/pulls/cloudkats/artilleryio?color=green&logo=docker&logoColor=pink&style=flat-square)](https://hub.docker.com/r/cloudkats/artilleryio) | [![](https://img.shields.io/docker/v/cloudkats/artilleryio?color=green&logo=docker&logoColor=pink&style=flat-square)](https://hub.docker.com/r/cloudkats/artilleryio) |

|   |   |
|---|---|
|   |   |
|   |   |
|   |   |

## CI Automation

|  Name    | Badges  | Version |
|:---------|:----------|:-----------|
| [CI Tools](./citools/Dockerfile)  | [![](https://github.com/cloudkats/docker-tools/workflows/CiTools/badge.svg)](https://github.com/cloudkats/docker-tools/actions?query=workflow%3ACiTools) [![](https://img.shields.io/docker/pulls/cloudkats/ci-tools?color=green&logo=docker&logoColor=pink&style=flat-square)](https://hub.docker.com/r/cloudkats/ci-tools) | [![](https://img.shields.io/docker/v/cloudkats/ci-tools?color=green&logo=docker&logoColor=pink&style=flat-square)](https://hub.docker.com/r/cloudkats/ci-tools) |
|   |   |

## Cloud Security

|  Name    | Badges  | Version |
|:---------|:----------|:-----------|
| [Cloudmapper](./cloudmapper/Dockerfile) | [![](https://github.com/cloudkats/docker-tools/workflows/cloudsec.cloudmapper/badge.svg)](https://github.com/cloudkats/docker-tools/actions?query=workflow%3Acloudsec.cloudmapper) [![](https://img.shields.io/docker/pulls/cloudkats/cloudmapper?color=green&logo=docker&logoColor=pink&style=flat-square)](https://hub.docker.com/r/cloudkats/cloudmapper) | [![](https://img.shields.io/docker/v/cloudkats/helm?color=green&logo=docker&logoColor=pink&style=flat-square)](https://hub.docker.com/r/cloudkats/cloudmapper) |
| [CloudCustodian Mailer](./c7n-mailer/Dockerfile) | [![](https://github.com/cloudkats/docker-tools/workflows/cloudsec.c7n-mailer/badge.svg)](https://github.com/cloudkats/docker-tools/actions?query=workflow%3Acloudsec.c7n-mailer) [![](https://img.shields.io/docker/pulls/cloudkats/c7n-mailer?color=green&logo=docker&logoColor=pink&style=flat-square)](https://hub.docker.com/r/cloudkats/c7n-mailer)  | [![](https://img.shields.io/docker/v/cloudkats/c7n-mailer?color=green&logo=docker&logoColor=pink&style=flat-square)](https://hub.docker.com/r/cloudkats/c7n-mailer) |
|   |   |

## Cyber Security

|  Name    | Badges  | Version |
|:---------|:----------|:-----------|
|   |   |
|   |   |
|   |   |

## Languages

|  Name    | Badges  | Version |
|:---------|:----------|:-----------|
|   |   |
|   |   |

## Create Locally

```sh

FROM ${DOCKER_REGISTRY:-none}/{ARCH:-amd64}/{OS:-ubuntu}/${RELEASE:-bionic}:${TIMESTAMP:-latest}
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

- [Hadolint](https://github.com/reviewdog/action-hadolint)

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

## Example commands

```
docker tag local-image:tagname new-repo:tagname
docker push new-repo:tagname
docker push cloudkats/appcenter-cli:tagname
docker run --rm test "kubectl version --short --client=true" | awk '{print $3}' | sed -e 's/^v//'
```
