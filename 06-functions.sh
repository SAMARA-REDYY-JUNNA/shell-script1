#!/bin/bash

USERID=$(id -u)

VALIDATE(){
    echo "exit status : $1"
    echo "message : $2"
}

if [ $USERID -ne 0 ]
then
    echo "Please run this scr
    exit 1 # manually exit if
else
    echo "You are super user.
fi

dnf install mysql -y
VALIDATE $? "installing mysql

#if [ $? -ne 0 ]
#then
    #echo "Installation of my
 #   #xit 1
#else#
    ##echo "Installation of m
#fi

dnf install git -y
VALIDATE $? "installing git"#

#i#f [ $? -ne 0 ]
#t#hen#
    #echo #"Installation of g
    #exit# 1
#else
    #echo# "Installation of G
#fi

#echo "is script proceeding?"