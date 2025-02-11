#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date '+%Y%m%d%H%M%S')
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME_$TIMESTAMP.log

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "Installation of $2...FAILURE"
        exit 1
    else
        echo "Installation of $2...SUCCESS"
    fi
}

if [ $USERID -ne 0 ]
then
    echo "Please run this script with root access."
    exit 1 # manually exit if error comes.
else
    echo "You are super user.
fi

dnf install mysql -y $>> $LOGFILE
VALIDATE $? "installing mysql"

dnf install git -y $>> $LOGFILE
VALIDATE $? "installing git"