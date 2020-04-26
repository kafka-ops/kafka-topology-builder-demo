#!/usr/bin/env bash

FILE=$1
REQUIRED_FACTOR=$2

required=`cat $FILE | grep replication.factor | wc -l`
matches=`cat $FILE | grep replication.factor | grep $REQUIRED_FACTOR | wc -l`

if [ "$matches" -ne "$required" ] ;
then
   echo -e "Some topics have not the expected replication factor, please review"
   exit 1
elif [ "$matches" -eq "$required" ]  ;
then
   echo -e "All topics have the required replication factor"
   exit 0
fi
