#!/usr/bin/env bash

time terraform apply -var myip=$1 -var region="eu-west-1" -parallelism=20
