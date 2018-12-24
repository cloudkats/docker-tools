# Jenkins image for ECS Fargate

## Configurations

The image has several supported configurations, which can be accessed via the following tags:

Environment    | Configuration
-------------- | -------------
JENKINS_URL    | Jenkins url to work with
JENKINS_EMAIL  | Current email
BUILD_URL      |
ADMIN_PASSWORD | Administrato password
CLI_ENABLED    | Whether or not enable CLI

Durint the download, the configuration is updated as per defined environment variables.

## References

[Jenkins Docker Examples](https://github.com/ik-jenkins/jenkins-docker-examples/tree/master/05-aws-ecs/jenkins-home/userContent)

[Jenkins Fargate](https://github.com/arminc/jenkins-fargate/blob/master/jenkins/config/1-master.groovy)