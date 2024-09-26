# Docker Tools

[![Renovate](https://img.shields.io/badge/renovate-enabled-brightgreen.svg)](https://renovatebot.com)
[![](https://img.shields.io/github/license/cloudkats/docker-tools)](https://github.com/cloudkats/docker-tools)
![](https://img.shields.io/github/v/tag/cloudkats/docker-tools)
[![](https://img.shields.io/github/repo-size/cloudkats/docker-tools)](https://github.com/cloudkats/docker-tools)
![](https://img.shields.io/github/languages/top/cloudkats/docker-tools?color=green&logo=docker&logoColor=blue)
![](https://img.shields.io/github/commit-activity/m/cloudkats/docker-tools)
![](https://img.shields.io/github/last-commit/cloudkats/docker-tools)

---

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
### Table of Contents

- [Docker Images](#docker-images)
  - [IaC](#iac)
  - [Kubernets](#kubernets)
  - [Load Testing](#load-testing)
  - [CI Automation](#ci-automation)
  - [Cloud Security](#cloud-security)
  - [Policies](#policies)
  - [Cyber Security](#cyber-security)
  - [Git Security](#git-security)
  - [Languages](#languages)
  - [Debug Infrastructure](#debug-infrastructure)
- [Tips and Tricks](#tips-and-tricks)
  - [Create Locally](#create-locally)
  - [Image Hardening](#image-hardening)
  - [Trial](#trial)
  - [How to Contribute](#how-to-contribute)
- [Commands](#commands)
- [Resources](#resources)
- [Example commands](#example-commands)
- [TODO](#todo)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

---

- [Container labels: Open Containers](https://github.com/opencontainers/image-spec/blob/main/annotations.md)
- [Container labels: Label Schema](http://label-schema.org/rc1/)

---

## Docker Images

### [IaC](https://en.wikipedia.org/wiki/Infrastructure_as_code)

|  Name    | Badges  | Version |
|:---------|:----------|:-----------|
| [Terraform](./terraform/Dockerfile) | [![][tfm.badge]][tfm.badge.yml] [![][tfm.docker.pulls]][tfm.docker] ![][tfm.docker.size] | [![][tfm.docker.version]][tfm.docker] |
| [Terragrunt](./terragrunt/Dockerfile) | [![][trg.badge]][trg.badge.yml] [![][trg.docker.pulls]][trg.docker] ![][trg.docker.size] | [![][trg.docker.version]][trg.docker] |

### [Kubernets](https://kubernetes.io/)

| Name  | Badges   | Version |
|:--------------------------|:----------------|:--------------|
|[Helm](./helm/Dockerfile) | [![][helm.badge]][helm.badge.yml] [![][helm.docker.pulls]][helm.docker] ![][helm.docker.size] | [![][helm.docker.version]][helm.docker] |
| [Kubernetes Tools](./k8s-tools/Dockerfile) | [![][k8s-tools.badge]][k8s-tools.badge.yml] [![][k8s-tools.docker.pulls]][k8s-tools.docker] ![][k8s-tools.docker.size] | [![][k8s-tools.docker.version]][k8s-tools.docker] |
| [Kubernetes Test Tools](./k8s-test-tools/Dockerfile) |  [![](https://github.com/cloudkats/docker-tools/workflows/k8s.test-tools/badge.svg)](https://github.com/cloudkats/docker-tools/actions?query=workflow%3Ak8s.test-tools) [![](https://img.shields.io/docker/pulls/cloudkats/k8s-test-tools?color=green&logo=docker&logoColor=#aae5ed&style=flat-square)](https://hub.docker.com/r/cloudkats/k8s-test-tools) | [![](https://img.shields.io/docker/v/cloudkats/k8s-test-tools?color=green&logo=docker&logoColor=#aae5ed&style=flat-square)](https://hub.docker.com/r/cloudkats/k8s-test-tools) |
| [Kubectl](./kubectl/Dockerfile) | [![][k8ctl.badge]][k8ctl.badge.yml] [![][k8ctl.docker.pulls]][k8ctl.docker] ![][k8ctl.docker.size] | [![][k8ctl.docker.version]][k8ctl.docker] |

### [Load Testing](https://loadninja.com/load-testing/)

|  Name    | Badges  | Version |
|:---------|:----------|:-----------|
| [Gatling](./gatling/Dockerfile)  | [![](https://github.com/cloudkats/docker-tools/workflows/load.gatling/badge.svg)](https://github.com/cloudkats/docker-tools/actions?query=workflow%3Aload.gatling) [![](https://img.shields.io/docker/pulls/cloudkats/gatling?color=green&logo=docker&logoColor=#aae5ed&style=flat-square)](https://hub.docker.com/r/cloudkats/gatling) | [![](https://img.shields.io/docker/v/cloudkats/gatling?color=green&logo=docker&logoColor=#aae5ed&style=flat-square)](https://hub.docker.com/r/cloudkats/gatling) |
| [Artilery](./artilery/Dockerfile)  | [![](https://github.com/cloudkats/docker-tools/workflows/load.artillery/badge.svg)](https://github.com/cloudkats/docker-tools/actions?query=workflow%3Aload.artillery) [![](https://img.shields.io/docker/pulls/cloudkats/artilleryio?color=green&logo=docker&logoColor=#aae5ed&style=flat-square)](https://hub.docker.com/r/cloudkats/artilleryio) | [![](https://img.shields.io/docker/v/cloudkats/artilleryio?color=green&logo=docker&logoColor=#aae5ed&style=flat-square)](https://hub.docker.com/r/cloudkats/artilleryio) |

### CI Automation

|  Name    | Badges  | Version |
|:---------|:----------|:-----------|
| [CI Tools](./citools/Dockerfile)  | [![][trg.badge]][trg.badge.yml] [![](https://img.shields.io/docker/pulls/cloudkats/ci-tools?color=green&logo=docker&logoColor=#aae5ed&style=flat-square)](https://hub.docker.com/r/cloudkats/ci-tools) | [![](https://img.shields.io/docker/v/cloudkats/ci-tools?color=green&logo=docker&logoColor=#aae5ed&style=flat-square)](https://hub.docker.com/r/cloudkats/ci-tools) |
|  [Microsoft App Center](./appcenter/Dockerfile) | [![](https://github.com/cloudkats/docker-tools/workflows/ci.appcenter.cli/badge.svg)](https://github.com/cloudkats/docker-tools/actions?query=workflow%3Aci.appcenter.cli) [![](https://img.shields.io/docker/pulls/cloudkats/appcenter-cli?color=green&logo=docker&logoColor=#aae5ed&style=flat-square)](https://hub.docker.com/r/cloudkats/appcenter-cli)  | [![](https://img.shields.io/docker/v/cloudkats/appcenter-cli?color=green&logo=docker&logoColor=#aae5ed&style=flat-square)](https://hub.docker.com/r/cloudkats/appcenter-cli) |
| [Jo](jo/Dockerfile) | [![](https://github.com/cloudkats/docker-tools/workflows/ci.jo/badge.svg)](https://github.com/cloudkats/docker-tools/actions?query=workflow%3Aci.jo) [![](https://img.shields.io/docker/pulls/cloudkats/jo?color=green&logo=docker&logoColor=#aae5ed&style=flat-square)](https://hub.docker.com/r/cloudkats/jo) | [![](https://img.shields.io/docker/v/cloudkats/jo?color=green&logo=docker&logoColor=#aae5ed&style=flat-square)](https://hub.docker.com/r/cloudkats/jo) |

### Cloud Security

|  Name    | Badges  | Version |
|:---------|:----------|:-----------|
| [Cloudmapper](./cloudmapper/Dockerfile) | [![](https://github.com/cloudkats/docker-tools/workflows/cloudsec.cloudmapper/badge.svg)](https://github.com/cloudkats/docker-tools/actions?query=workflow%3Acloudsec.cloudmapper) [![](https://img.shields.io/docker/pulls/cloudkats/cloudmapper?color=green&logo=docker&logoColor=#aae5ed&style=flat-square)](https://hub.docker.com/r/cloudkats/cloudmapper) | [![](https://img.shields.io/docker/v/cloudkats/cloudmapper?color=green&logo=docker&logoColor=#aae5ed&style=flat-square)](https://hub.docker.com/r/cloudkats/cloudmapper) |
| [CloudCustodian Mailer](./c7n-mailer/Dockerfile) | [![](https://github.com/cloudkats/docker-tools/workflows/cloudsec.c7n-mailer/badge.svg)](https://github.com/cloudkats/docker-tools/actions?query=workflow%3Acloudsec.c7n-mailer) [![](https://img.shields.io/docker/pulls/cloudkats/c7n-mailer?color=green&logo=docker&logoColor=#aae5ed&style=flat-square)](https://hub.docker.com/r/cloudkats/c7n-mailer)  | [![](https://img.shields.io/docker/v/cloudkats/c7n-mailer?color=green&logo=docker&logoColor=#aae5ed&style=flat-square)](https://hub.docker.com/r/cloudkats/c7n-mailer) |
|   |   |

### Policies

|  Name                | Badges    | Version |
|:---------------------|:----------|:-----------|
| [OPA](opa/Dockerfile) | [![policy.opa][opa.badge]][opa.badge.yml] [![][opa.docker.pulls]][opa.docker] ![][opa.docker.size] | [![][opa.docker.version]][opa.docker] |
|   |   |

### Cyber Security

|  Name    | Badges  | Version |
|:---------|:----------|:-----------|
|  |   |
|   |   |

### Git Security

|  Name    | Badges  | Version |
|:---------|:----------|:-----------|
| [Trafflehog](trufflehog/Dockerfile)  | [![](https://github.com/cloudkats/docker-tools/workflows/gitsec.trufflehog/badge.svg)](https://github.com/cloudkats/docker-tools/actions?query=workflow%3Agitsec.trufflehog) [![](https://img.shields.io/docker/pulls/cloudkats/trufflehog?color=green&logo=docker&logoColor=#aae5ed&style=flat-square)](https://hub.docker.com/r/cloudkats/trufflehog) | [![](https://img.shields.io/docker/v/cloudkats/trufflehog?color=green&logo=docker&logoColor=#aae5ed&style=flat-square)](https://hub.docker.com/r/cloudkats/trufflehog) |
| [GitHound](githound/Dockerfile)  | [![](https://github.com/cloudkats/docker-tools/workflows/gitsec.githound/badge.svg)](https://github.com/cloudkats/docker-tools/actions?query=workflow%3Agitsec.githound) [![](https://img.shields.io/docker/pulls/cloudkats/githound?color=green&logo=docker&logoColor=#aae5ed&style=flat-square)](https://hub.docker.com/r/cloudkats/githound)  | [![](https://img.shields.io/docker/v/cloudkats/githound?color=green&logo=docker&logoColor=#aae5ed&style=flat-square)](https://hub.docker.com/r/cloudkats/githound) |
|   |   |

### Languages

|  Name    | Badges  | Version |
|:---------|:----------|:-----------|
| [NodeJS 12](nodejs) | [![][njs12.badge]][njs12.badge.yml] [![][njs12.docker.pulls]][njs12.docker] ![][njs12.docker.size]  | [![][njs12.docker.version]][njs12.docker] |
| [NodeJS 14](nodejs) | [![][njs14.badge]][njs14.badge.yml] [![][njs14.docker.pulls]][njs14.docker] ![][njs14.docker.size]  | [![][njs14.docker.version]][njs14.docker] |

### Debug Infrastructure

|  Name    | Badges  | Version |
|:---------|:----------|:-----------|
| [Network Utils](nutils) | [![][nutils.badge]][nutils.badge.yml] [![][nutils.docker.pulls]][nutils.docker] ![][nutils.docker.size]  | [![][nutils.docker.version]][nutils.docker] |

## Tips and Tricks

### Create Locally

```sh

FROM ${DOCKER_REGISTRY:-none}/{ARCH:-amd64}/{OS:-ubuntu}/${RELEASE:-bionic}:${TIMESTAMP:-latest}
```

### Image Hardening

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

### Trial

- [Hadolint](https://github.com/reviewdog/action-hadolint)

### How to Contribute

Submit a pull request

## Commands

```sh
docker build .  --tag image \
  --build-arg VERSION=$(cat version)
```

## Resources

- [Hardened images](https://repo1.dso.mil/dsop?page=2)

## Example commands

```
docker build --no-cache -t test .
docker system prune
docker tag local-image:tagname new-repo:tagname
docker push new-repo:tagname
docker push cloudkats/appcenter-cli:tagname
docker run --rm test "kubectl version --short --client=true" | awk '{print $3}' | sed -e 's/^v//'
```

## TODO

> Work in Progress

1. [ ] add user to every container (# RUN adduser --system --home /ci --disabled-password --group ci)
1. [ ] Fix broken links
1. [ ] Unify container labels
1. [ ] Link to source code on main page
1. [X] Link back to project from Docker Hub
1. [X] Renovate configuration
1. [ ] Use `requirementes.txt` file with python packages
1. [X] Review missing images
1. [ ] Build node images `node`

<!-- resources -->
[opa.badge]: https://github.com/cloudkats/docker-tools/actions/workflows/policy.opa.yaml/badge.svg
[opa.badge.yml]: https://github.com/cloudkats/docker-tools/actions/workflows/policy.opa.yaml
[opa.docker.pulls]: https://img.shields.io/docker/pulls/cloudkats/opa?color=green&logo=docker&logoColor=#aae5ed&style=flat-square
[opa.docker.size]: https://img.shields.io/docker/image-size/cloudkats/opa
[opa.docker.version]: https://img.shields.io/docker/v/cloudkats/opa?color=green&logo=docker&logoColor=#aae5ed&style=flat-square
[opa.docker]: https://hub.docker.com/r/cloudkats/opa

[trg.badge]: https://github.com/cloudkats/docker-tools/workflows/iac.terragrunt/badge.svg
[trg.badge.yml]: https://github.com/cloudkats/docker-tools/actions?query=workflow%3Aiac.terragurnt
[trg.docker.pulls]: https://img.shields.io/docker/pulls/cloudkats/terragrunt?color=green&logo=docker&logoColor=#aae5ed&style=flat-square
[trg.docker.size]: https://img.shields.io/docker/image-size/cloudkats/terragrunt
[trg.docker.version]: https://img.shields.io/docker/v/cloudkats/terragrunt?color=green&logo=docker&logoColor=#aae5ed&style=flat-square
[trg.docker]: https://hub.docker.com/r/cloudkats/terragrunt

[tfm.badge]: https://github.com/cloudkats/docker-tools/workflows/iac.terraform/badge.svg
[tfm.badge.yml]: https://github.com/cloudkats/docker-tools/actions?query=workflow%3Aiac.terraform
[tfm.docker.pulls]: https://img.shields.io/docker/pulls/cloudkats/terraform?color=green&logo=docker&logoColor=#aae5ed&style=flat-square
[tfm.docker.size]: https://img.shields.io/docker/image-size/cloudkats/terraform
[tfm.docker.version]: https://img.shields.io/docker/v/cloudkats/terraform?color=green&logo=docker&logoColor=#aae5ed&style=flat-square
[tfm.docker]: https://hub.docker.com/r/cloudkats/terraform

[k8s-tools.badge]: https://github.com/cloudkats/docker-tools/actions/workflows/k8s.tools.yaml/badge.svg
[k8s-tools.badge.yml]: https://github.com/cloudkats/docker-tools/actions?query=workflow%3Ak8s.tools
[k8s-tools.docker.pulls]: https://img.shields.io/docker/pulls/cloudkats/k8s-tools?color=green&logo=docker&logoColor=#aae5ed&style=flat-square
[k8s-tools.docker.size]: https://img.shields.io/docker/image-size/cloudkats/k8s-tools
[k8s-tools.docker.version]: https://img.shields.io/docker/v/cloudkats/k8s-tools?color=green&logo=docker&logoColor=#aae5ed&style=flat-square
[k8s-tools.docker]: https://hub.docker.com/r/cloudkats/k8s-tools

[helm.badge]: https://github.com/cloudkats/docker-tools/actions/workflows/k8s.helm.yaml/badge.svg
[helm.badge.yml]: https://github.com/cloudkats/docker-tools/actions?query=workflow%3Ak8s.helm
[helm.docker.pulls]: https://img.shields.io/docker/pulls/cloudkats/helm?color=green&logo=docker&logoColor=#aae5ed&style=flat-square
[helm.docker.size]: https://img.shields.io/docker/image-size/cloudkats/helm
[helm.docker.version]: https://img.shields.io/docker/v/cloudkats/helm?color=green&logo=docker&logoColor=#aae5ed&style=flat-square
[helm.docker]: https://hub.docker.com/r/cloudkats/helm

[k8ctl.badge]: https://github.com/cloudkats/docker-tools/actions/workflows/k8s.kubectl.yaml/badge.svg
[k8ctl.badge.yml]: https://github.com/cloudkats/docker-tools/actions?query=workflow%3Ak8s.kubectl
[k8ctl.docker.pulls]: https://img.shields.io/docker/pulls/cloudkats/kubectl?color=green&logo=docker&logoColor=#aae5ed&style=flat-square
[k8ctl.docker.size]: https://img.shields.io/docker/image-size/cloudkats/kubectl
[k8ctl.docker.version]: https://img.shields.io/docker/v/cloudkats/kubectl?color=green&logo=docker&logoColor=#aae5ed&style=flat-square
[k8ctl.docker]: https://hub.docker.com/r/cloudkats/kubectl

[njs12.badge]: https://github.com/cloudkats/docker-tools/workflows/node.12.app/badge.svg
[njs12.badge.yml]: https://github.com/cloudkats/docker-tools/actions?query=workflow%3Anode.12.app
[ngj12.version]: https://img.shields.io/docker/v/cloudkats/nodejs?color=green&logo=docker&logoColor=#aae5ed&style=flat-square
[njs12.docker.pulls]: https://img.shields.io/docker/pulls/cloudkats/node?color=green&logo=docker&logoColor=#aae5ed&style=flat-square
[njs12.docker.size]: https://img.shields.io/docker/image-size/cloudkats/node
[njs12.docker.version]: https://img.shields.io/docker/v/cloudkats/node?color=green&logo=docker&logoColor=#aae5ed&style=flat-square
[njs12.docker]: https://hub.docker.com/r/cloudkats/node

[njs14.badge]: https://github.com/cloudkats/docker-tools/actions/workflows/lang.node-14.yaml/badge.svg
[njs14.badge.yml]: https://github.com/cloudkats/docker-tools/actions/workflows/lang.node-14.yaml
[ngj14.version]: https://img.shields.io/docker/v/cloudkats/node?color=green&logo=docker&logoColor=#aae5ed&style=flat-square
[njs14.docker.pulls]: https://img.shields.io/docker/pulls/cloudkats/node?color=green&logo=docker&logoColor=#aae5ed&style=flat-square
[njs14.docker.size]: https://img.shields.io/docker/image-size/cloudkats/node
[njs14.docker.version]: https://img.shields.io/docker/v/cloudkats/node?color=green&logo=docker&logoColor=#aae5ed&style=flat-square
[njs14.docker]: https://hub.docker.com/r/cloudkats/node

[nutils.badge]: https://github.com/cloudkats/docker-tools/actions/workflows/debug.network-utils/badge.svg
[nutils.badge.yml]: https://github.com/cloudkats/docker-tools/actions/workflows/debug.network-utils.yaml
[nutils.version]: https://img.shields.io/docker/v/cloudkats/network-utils?color=green&logo=docker&logoColor=#aae5ed&style=flat-square
[nutils.docker.pulls]: https://img.shields.io/docker/pulls/cloudkats/network-utils?color=green&logo=docker&logoColor=#aae5ed&style=flat-square
[nutils.docker.size]: https://img.shields.io/docker/image-size/cloudkats/network-utils
[nutils.docker.version]: https://img.shields.io/docker/v/cloudkats/network-utils?color=green&logo=docker&logoColor=#aae5ed&style=flat-square
[nutils.docker]: https://hub.docker.com/r/cloudkats/network-utils
