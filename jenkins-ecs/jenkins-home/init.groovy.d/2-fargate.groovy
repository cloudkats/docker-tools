import hudson.model.*
import jenkins.model.*
import com.cloudbees.jenkins.plugins.amazonecs.*
import java.util.Collections

def instance = Jenkins.getInstance()
def env = System.getenv()

def cloudList = instance.clouds

List emptyList = new ArrayList()
List<ECSTaskTemplate> slaves = new ArrayList<ECSTaskTemplate>()
List<ECSTaskTemplate.LogDriverOption> logDriverOptions = new ArrayList<ECSTaskTemplate.LogDriverOption>()

logDriverOptions.add(new ECSTaskTemplate.LogDriverOption('awslogs-group', env["AWS_LOG_GROUP"] ?: 'jenkins'))
logDriverOptions.add(new ECSTaskTemplate.LogDriverOption('awslogs-region', env["AWS_REGION"] ?: 'us-east-1'))
logDriverOptions.add(new ECSTaskTemplate.LogDriverOption('awslogs-stream-prefix', env["AWS_LOG_PREFIX"] ?: 'us-east-1'))

def slaveInfo = new ECSTaskTemplate(
  templateName = 'slave-v1',
  label = 'slave-v1',
  image = env["JENKINS_SLAVE_IMAGE"] ?: 'jenkins/jnlp-slave',
  launchType = 'FARGATE',
  remoteFSRoot = '/home/jenkins',
  executionRole = env["TASK_EXECUTION_ROLE"] ?: 'arn',
  memory = 2048,
  memoryReservation = 2048,
  cpu = 1024,
  subnets = env["SUBNETS"] ?: 'subnet',
  securityGroups = env["SECURITY_GROUPS"] ?: 'sg',
  assignPublicIp = false,
  privileged = false,
  logDriverOptions = logDriverOptions,
  environments = emptyList,
  extraHosts = emptyList,
  mountPoints = emptyList
)

slaveInfo.setLogDriver('awslogs')

slaves.add(slaveInfo)

//Default ECS plugin configuration
def cloud = new ECSCloud(
    name = 'Fargate',
    templates = slaves,
    credentialsId = env["JENKINS_SLAVE_CREDS"] ?: '235xcf123xcfg',
    cluster = env["JENKINS_CLUSTER_NAME"] ?: 'jenkins',
    regionName = env["AWS_REGION"] ?: 'us-east-1',
    jenkinsUrl = env["JENKINS_URL"] ?: 'us-east-1',
    slaveTimoutInSeconds = 100
)

cloudList.add(cloud)
instance.save()