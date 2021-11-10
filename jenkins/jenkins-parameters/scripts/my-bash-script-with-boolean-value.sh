#!/bin/bash

## Sample script to execute as a jenkins job for checking boolean value
## Copyright (c) Karan Chhabra 12/10/2021

## NOTE: All variables are defined dynamically under the jenkins job on UI

title=$1
first_name=$2
last_name=$3
condition=$4

#--Error handling for incorrect parameters--#
if [ "$condition" = "true" ]; then
  #--Say hello--#
  echo "Welcome to the world of computers "$1" "$2" "$3""
else
  echo "The boolean condition is set to false, Please set a correct boolean value"
  echo "Example: sh -x my-bash-script-with-boolean-value.sh "Mr." "Karan" "Chhabra" "true""
fi
