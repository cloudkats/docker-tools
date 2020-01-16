# Docker Tools

[![](https://img.shields.io/github/license/cloudkats/docker-tools)](https://github.com/cloudkats/docker-tools)
![](https://img.shields.io/github/v/tag/cloudkats/docker-tools)
[![](https://img.shields.io/github/repo-size/cloudkats/docker-tools)](https://github.com/cloudkats/docker-tools)
![](https://img.shields.io/github/languages/top/cloudkats/docker-tools?color=green&logo=docker&logoColor=blue)

## Terraform

![](https://github.com/cloudkats/docker-tools/workflows/Terraform/badge.svg)
![](https://img.shields.io/docker/pulls/cloudkats/terraform?color=green&logo=docker&logoColor=pink&style=flat-square)


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


## How to Contribute

Submit a pull request