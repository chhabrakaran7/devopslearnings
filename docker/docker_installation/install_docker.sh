## Install docker on CentOS 8 ##
#
# Copyright (c) Karan Chhabra [16/5/2021]
#
# This script:
# 1. Setup docker repository
# 2. Install yum-utils
# 3. Add docker-ce.repo
# 4. Install docker
# 5. Enable/Start docker
# 6. Install docker compose [For application installation on the containers]
#
# NOTE: Docker compose is only needed for "defining and running multi-container docker applications" ex: jenkins


#-- Install yum utils --#
yum install yum-utils -y

#-- Add docker repository --#
yum-config-manager \
--add-repo \
https://download.docker.com/linux/centos/docker-ce.repo

#-- Install docker --#
yum install --allowerasing docker-ce docker-ce-cli containerd.io -y

#-- Verify docker installation --#
status=`systemctl status docker.service`
docker_engine=`echo $status | awk -F- '{print $2}' | awk -F: '{print $1}'`

if grep Docker <<< "$docker_engine" ; then
  #-- Enable/Start docker --#
  systemctl enable docker.service
  systemctl start docker

  #-- Install Docker Compose --#
  curl -L "https://github.com/docker/compose/releases/download/1.29.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
  #-- Add execute permission to the docker-compose binary executable --#
  chmod +x /usr/local/bin/docker-compose
  #-- Verify docker and docker compose installation --#
  docker_version=`docker --version`
  if [ $? -eq 0 ]; then
    echo "Docker installation successful"
    echo ""
    echo "========================================="
    echo "Docker version installed: $docker_version"
    echo "========================================="
    echo ""
    docker_compose_version=`docker-compose --version`
    if [ $? -eq 0 ]; then
      echo "Docker compose installed successfully"
      echo ""
      echo "========================================================="
      echo "Docker compose version installed: $docker_compose_version"
      echo "========================================================="
      echo ""
      echo "Exiting the script gracefully"
    else
      echo "Docker compose installation failed, please check.."
      exit 1
    fi
  else
    echo "Docker and Docker compose installation failed, please check"
    echo ""
    echo "Script run incomplete"
    exit 1
  fi
else
  echo "Docker CE/CLI and containerd not installed"
  exit 1
fi
