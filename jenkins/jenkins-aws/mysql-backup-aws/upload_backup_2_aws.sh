#!/bin/bash

## Script to automate the mysql backup ##
## Created by Karan Chhabra (c) 10/11/2021 ##
## 
## This script:
## 1. Creates the mysql dump of the database requested
## 2. Set environment variable path for our AWS account
## 3. Upload the created mysql db backup to S3 bucket

time_of=$(date +%d-%m-%H:%M:%S)
DB_backup_file=mysql-db-"$time_of".sql
DB_USER=$1
DB_HOST=$2
DB_PASSWORD=$3
DB_NAME=$4
ACCESS_KEY_AWS=$5
SECRET_AWS=$6
AWS_BUCKET=$7

if [ "$#" -ne 7 ]; then
    echo "Please supply correct number of parameters"
    echo "The script expects 7 parameters"
    echo "./upload_backup_2_aws.sh "root" "mysql-db" "redhat" "testdb" "AWS ACCESS KEY" "AWS SECRET" "mysql-jenkins-bucket""
    exit 1
else
    # Create mysql dump of the database from mysql-db container #
    #mysqldump --column-statistics=0 -u $DB_USER -h $DB_HOST -p$DB_PASSWORD $DB_NAME > /tmp/$DB_backup_file
    mysqldump -u$DB_USER -h$DB_HOST -p$DB_PASSWORD $DB_NAME --column-statistics=0 > /tmp/$DB_backup_file
    # Set environemnt variable for AWS #
    export AWS_ACCESS_KEY_ID=$ACCESS_KEY_AWS
    export AWS_SECRET_ACCESS_KEY=$SECRET_AWS

    # Upload the created mysql dump to the S3 bucket #
    echo "Uploading $DB_backup_file to S3 bucket $AWS_BUCKET......."
    aws s3 cp /tmp/$DB_backup_file s3://$AWS_BUCKET/$DB_backup_file
    exit 0
fi

