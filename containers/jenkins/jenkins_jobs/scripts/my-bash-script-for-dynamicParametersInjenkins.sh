#!/bin/bash

## Sample script to execute as a jenkins job
## Copyright (c) Karan Chhabra 29/05/2021

## NOTE: All variables are defined dynamically under the jenkins job on UI

title=$1
first_name=$2
last_name=$3


#--Error handling for incorrect parameters--#
if [ $# -ne 3 ]; then
  echo "Please pass three parameters"
  echo "Example: sh -x my-first-bash-script-for-jenkins.sh "Mr." "Karan" "Chhabra""
  exit 1                                                                            # exit 1 is used to denote run failure
else
  #--Say hello--#
  echo "Welcome to the world of computers "$1" "$2" "$3""
  exit 0                                                                            # exit 0 is used to denote run success
fi
