#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date '+%Y%m%d%H%M%S')
SCRIPT_NAME=$($0 | cut -d '.' -f1)
LOgfILE=/tmp/${SCRIPT_NAME}_${TIMESTAMP}.log

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
    echo "Please run this scr
    exit 1 # manually exit if
else
    echo "You are super user.
fi

dnf install mysql -y $>> $LOGFILE
VALIDATE $? "installing mysql"

dnf install git -y $>> $LOGFILE
VALIDATE $? "installing git"