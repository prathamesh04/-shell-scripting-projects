#!/bin/bash



#################################
# Auther : Prathamesh
# Date : 18th-jul
#
# Version: v1
#
# This script will report the AWS resource usage
################################


#AWS s3
#AWS EC2
#AWS lamda
#AWS IAM Users


#list aws s3
echo "Print list of s3 buckets"
aws s3 ls > resourceTracker

#list EC2 Instances
echo "Print EC2 instaces"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# list lambda
echo "Print lambda"
aws lambda list-functions

#list IAM users
echo "print list IAM users"
aws iam list-users

