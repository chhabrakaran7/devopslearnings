# **DevOps learnings**

This repository is dedicated for learnings done during training for DevOps.

**NOTE:** `This repository is a work in progress, updates will be added frequently.`

**NOTE:** `A word document will be added which will include all the steps and screenshots taken while performing the setup and any tasks involved in this effort.`
## **Development Environment**

`Virtualization platform: VMWare Workstation 16 PRO`

`Number of VMs: 1`

`Operating System: CentOS 8 64 bit`

`VM configuration: 2GB Memory, 1vCPU Processor and 20GB HDD respectively`

## **Docker**

#### Install Docker and Docker compose:
1. Setup docker repository 
2. Install yum utils
3. Install docker
4. Install docker compose

#### Install jenkins container application
1. Install jenkins container application
2. Setup jenkins application 

#### Installation/Decommissioning scripts:
1. **Install docker script**: `devopslearnings/docker_installtion/install_docker.sh`
2. **Install jenkins container application**: `devopslearnings/jenkins/jenkins_container_installation/docker-compose.yaml`
3. **Pull any docker image**: `devopslearnings/docker/pull_specific_dockerImage.sh`

## **Jenkins**
Adding jenkins jobs which are created and tested over the jenkins UI created on the container.

   
#### Jenkins jobs (added so far):

1. Create a dummy directory and a file with data on the container.

    **Location**: `devopslearnings/jenkins/jenkins_jobs/my-first-job`
2. Run a bash script to print full name on jenkins UI.
    
   **Script Location**: `devopslearnings/jenkins/jenkins_jobs/scripts/my-first-bash-script-for-jenkins.sh`
    
   **Jenkins Job Location**: `devopslearnings/jenkins/jenkins_jobs/my-first-bash-script.txt`
   
3. Run a bash script to print title, full name on jenkins UI. [Using dynamic parameters (String and Choice)]

   **Script Location**: `devopslearnings/jenkins/jenkins_jobs/scripts/my-bash-script-for-dynamicParametersInjenkins.sh`
   
   **Jenkins Job Location**: `devopslearnings/jenkins/jenkins_jobs/my-bash-script-for-dynamic-parameter.txt`

#### Terraform:

1. Create your first EC2 instance using terraform

   **Sample TF**: [Please click here for code][PlDc]
2. Create a terraform CLI container on a centos host
   
   **DockerFile**: [Please click here for code][PlDb]
3. Create a new github repository using terraform

   **Sample TF**: [Please click here for code][PlDa]

[Plda]: <https://github.com/chhabrakaran7/devopslearnings/blob/main/terraform/providers/github/github.tf>
[Pldb]: <https://github.com/chhabrakaran7/devopslearnings/blob/main/terraform/container/Dockerfile>
[Pldc]: <https://github.com/chhabrakaran7/devopslearnings/blob/main/terraform/providers/aws/first-ec2.tf>