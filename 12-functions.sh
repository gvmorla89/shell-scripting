#!/bin/bash

user_id=$(id -u)

if [ $user_id -ne 0 ]; then
   echo "Please run this command using Sudo access"
   exit 1
fi

validate(){
    if [ $1 -ne 0 ]; then
       echo "${2} ...Failed"
       exit 1
    else 
        echo "${2}..SUCCESS"
    fi 
}

echo "Proceeding..."

dnf install nginx -y
validate $? "Nginx Installation"

dnf install mysql -y
validate $? "MySql Installation"
