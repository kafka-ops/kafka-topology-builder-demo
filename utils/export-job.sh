#!/usr/bin/env bash

JENKINS_SERVER="ec2-54-171-39-20.eu-west-1.compute.amazonaws.com:8080/"
JOB="topology-builder-pipeline-verify"

curl -s http://$JENKINS_SERVER/job/$JOB/config.xml
