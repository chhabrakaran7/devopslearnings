#!/bin/bash

## Sample script to execute as a jenkins job
## Copyright (c) Karan Chhabra 24/05/2021

first_name=$1
last_name=$2


#--Error handling for incorrect parameters--#
if [ $# -ne 2 ]; then
  echo "Please pass two parameters"
  echo "Example: sh -x my-first-bash-script-for-jenkins.sh "Karan" "Chhabra""
  exit 1                                                # exit 1 is used to denote run failure
else
  #--Say hello--#
  echo "Welcome to the world of computers "$1" "$2""
  exit 0                                                # exit 0 is used to denote run success
fi
