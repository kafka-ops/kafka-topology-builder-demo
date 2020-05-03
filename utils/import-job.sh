#!/usr/bin/env bash

JENKINS_SERVER="ec2-54-171-39-20.eu-west-1.compute.amazonaws.com:8080"
JOB="topology-builder-pipeline-verify"

curl -X POST 'http://$JENKINS_SERVER/createItem?name=$JOB' --header "Content-Type: application/xml" -d @job.xml
