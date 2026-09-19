#!/bin/bash


###############################
#Author : sandip
#date : 11th sep 2026
#
#Version : v1
#
#This script will report the AWS resource usage
#
######################################

set -x #debug mode

#AWS S3
#AWS EC2
#AWS Lambda
#AWS IAM Users

#date 
date >> /home/ubuntu/git-practice/ResourceTracker

#list s3 buckets
echo "print list of s3 buckets"
aws s3 ls  >> ResourceTracker 

#list EC2 instance
echo "print list ES2 instance"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'  >> ResourceTracker

#list AWS Lambda
echo "print list lambda fuctions"
aws lambda list-functions  >> ResourceTracker

#list IAM users
echo "print list IAM users"
aws iam list-users >> ResourceTracker
