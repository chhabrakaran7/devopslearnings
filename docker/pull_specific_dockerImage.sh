## Pull docker image ##
#
# Copyright (c) Karan Chhabra 16/5/2021
#
# This script:
# 1. Needs an argument supplied to it, This argument should be the docker image name one wants to pull
# 2. Ex: sh -x pull_specific_dockerImage.sh "jenkins/jenkins"
#
#

#-- Pull docker image --#
if [ $# -ne 1]; then
  echo "Please pass an argument to run the script correctly"
  echo "Ex: sh -x pull_specific_dockerImage.sh "jenkins/jenkins""
else
  image=$1
  docker pull "$1"
  image_status=`docker images | grep "$image"`
  if [ $? -eq 0 ]; then
    echo ""
    image_id=`docker images | grep "$image" | awk -F' ' '{print $3}'`
    echo "==================================================================="
    echo "Docker image "$image" with IMAGE ID "$image_id" pulled successfully"
    echo "==================================================================="
  else
    echo "Docker failed to pull $image, Please check.."
  fi
fi
