#!/bin/bash

USERID=$(id -u)

VALIDATE(){
    echo "exit status : $1"
    echo "message : $2"
}

if [ $USERID -ne 0 ]
then
    echo "Please run this script with root access."
    exit 1 # manually exit if error comes.
else
    echo "You are super user."
fi

dnf install mysql -y
VALIDATE $? "installing mysql"

#if [ $? -ne 0 ]
#then
    #echo "Installation of mysql...FAILURE"
 #   #xit 1
#else#
    ##echo "Installation of mysql...SUCCESS"
#fi

dnf install git -y
VALIDATE $? "installing git"##

#i#f [ $? -ne 0 ]
#t#hen#
    #echo #"Installation of git...FAILURE"
    #exit# 1
#else
    #echo# "Installation of Git...SUCCESS"
#fi

#echo "is script proceeding?"


  

       

