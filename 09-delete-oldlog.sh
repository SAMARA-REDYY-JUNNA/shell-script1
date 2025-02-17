#!/bin/bash

SOURCE_DIRELTORY=/tmp/app-logs

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"


if [ -d $SOURCE_DIRELTORY ]
then
    echo -e "$G source directory exists $N"
else
    echo -e "$R source directory does not exists $N"
    exit 1
fi