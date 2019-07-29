# Jenkins image for ECS Fargate

[Repository](https://github.com/cloudkats/docker-tools/tree/master/jenkins-ecs)

## Description

Jenkins master docker with buch of plugins pre installed

## Configurations

The image has several supported configurations, which can be accessed via the following tags:

Environment              | Configuration
------------------------ | -------------
JENKINS_URL              | Url for the Jenkins server, can be used as a replacement to -url option, or to set alternate jenkins URL
JENKINS_EMAIL            | Current email
BUILD_URL                | Jenkins Build URL
ADMIN_PASSWORD           | Administrato password
CLI_ENABLED              | Whether or not enable CLI
AWS_LOG_GROUP            | AWS logging group
AWS_REGION               | Log Region
AWS_LOG_PREFIX           | Logging prefix
JENKINS_SLAVE_IMAGE      | Jenkins slave image
TASK_EXECUTION_ROLE_ARN  | Task execution role
SUBNETS                  | Subnets where to deploy tasks
SECURITY_GROUPS          | Security groups to attach
JENKINS_CLUSTER_ARN      | Jenkins cluster name
JENKINS_SLAVE_CREDS      | Jenkins slaves credential

Durint the download, the configuration is updated as per defined environment variables.

## References

[Jenkins Docker Examples](https://github.com/ik-jenkins/jenkins-docker-examples)

[Jenkins Fargate](https://github.com/arminc/jenkins-fargate/)