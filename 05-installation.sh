#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0]
then
    echo "Please run this script with  root access"
    exit 1 #exit 1 means exit with error.

else
    echo "You have root access"
fi

dnf install mysql -y

if [ $? -eq 0 ]
then
    echo "installed mysql FAILURE"
    exit 1
else
    echo "installed mysql SUCCESS"   
fi
dnf install git -y    

if [ $? -eq 0 ]
then
    echo "installed git FAILURE"
    exit 1
else
    echo "installed git SUCCESS"       
fi

echo "is script is proceeding?"