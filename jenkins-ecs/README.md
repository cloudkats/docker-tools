# Jenkins image for ECS Fargate

[Repoisotory](https://github.com/cloudkats/docker-tools/tree/master/jenkins-ecs)

## Description

Jenkins master docker with buch of plugins pre installed

## Configurations

The image has several supported configurations, which can be accessed via the following tags:

Environment    | Configuration
-------------- | -------------
JENKINS_URL    | Url for the Jenkins server, can be used as a replacement to -url option, or to set alternate jenkins URL
JENKINS_EMAIL  | Current email
BUILD_URL      |
ADMIN_PASSWORD | Administrato password
CLI_ENABLED    | Whether or not enable CLI

Durint the download, the configuration is updated as per defined environment variables.

## References

[Jenkins Docker Examples](https://github.com/ik-jenkins/jenkins-docker-examples)

[Jenkins Fargate](https://github.com/arminc/jenkins-fargate/)