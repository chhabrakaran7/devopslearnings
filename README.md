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
1. **Install docker script**: [Please click here to view the code][Pldi]
2. **Install jenkins container application**: [Please click here to view the docker-compose.yaml][Pldj]
3. **Pull any docker image**: [Please click here to view the code][Pldk]

## **Jenkins**
Adding jenkins jobs which are created and tested over the jenkins UI created on the container.

   
#### Jenkins jobs (added so far):

1. Create a dummy directory and a file with data on the container.

    **Jenkins Job Location**: [Please click here to view the jenkins job][Pldh] 
2. Run a bash script to print full name on jenkins UI.
    
   **Script Location**: [Please click here to view the code][Pldg]
    
   **Jenkins Job Location**: [Please click here to view the jenkins job][Pldf]
   
3. Run a bash script to print title, full name on jenkins UI. [Using dynamic parameters (String and Choice)]

   **Script Location**: [Please click here to view the code][Plde]
   
   **Jenkins Job Location**: [Please click here to view the jenkins job][Pldd]

#### Terraform:

1. Create your first EC2 instance using terraform

   **Sample TF**: [Please click here for code][PlDc]
2. Create a terraform CLI container on a centos host
   
   **DockerFile**: [Please click here for code][PlDb]
3. Create a new github repository using terraform

   **Sample TF**: [Please click here for code][PlDa]

[Plda]: <https://github.com/chhabrakaran7/devopslearnings/blob/main/terraform/providers/github/github.tf>
[Pldb]: <https://github.com/chhabrakaran7/devopslearnings/blob/main/terraform/container/Dockerfile>
[Pldc]: <https://github.com/chhabrakaran7/devopslearnings/blob/main/terraform/providers/aws/create-first-ec2-instance.tf>
[Pldd]: <https://github.com/chhabrakaran7/devopslearnings/blob/main/containers/jenkins/jenkins_jobs/my-jenkins-job-with-dynamic-parameter.txt>
[Plde]: <https://github.com/chhabrakaran7/devopslearnings/blob/main/containers/jenkins/jenkins_jobs/scripts/my-bash-script-for-dynamicParametersInjenkins.sh>
[Pldf]: <https://github.com/chhabrakaran7/devopslearnings/blob/main/containers/jenkins/jenkins_jobs/my-first-bash-script.txt>
[Pldg]: <https://github.com/chhabrakaran7/devopslearnings/blob/main/containers/jenkins/jenkins_jobs/scripts/my-first-bash-script-for-jenkins.sh>
[Pldh]: <https://github.com/chhabrakaran7/devopslearnings/blob/main/containers/jenkins/jenkins_jobs/my-first-job.txt>
[Pldi]: <https://github.com/chhabrakaran7/devopslearnings/blob/main/docker/docker_installation/install_docker.sh>
[Pldj]: <https://github.com/chhabrakaran7/devopslearnings/blob/main/containers/jenkins/jenkins_container_installation/docker-compose.yaml>
[Pldk]: <https://github.com/chhabrakaran7/devopslearnings/blob/main/docker/pull_specific_dockerImage.sh>
