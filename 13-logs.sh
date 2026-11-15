#!/bin/bash

user_id=$(id -u)
logs_folder="/var/log/shell-practice"
logs_file="${logs_folder}/${0}.log"

if [ $user_id -ne 0 ]; then
   echo "Please run this command using Sudo access"
   exit 1
fi
mkdir -p $logs_folder
echo "Script Start execution at $(date +"%F %T")"
validate(){
    if [ $1 -ne 0 ]; then
       echo "${2} ..Failed" ¦ tee -a $logs_file
       exit 1
    else 
        echo "${2} ..SUCCESS" ¦ tee -a $logs_file
    fi 
}

echo "Proceeding..."

dnf install nginx -y &>> $logs_file 
validate $? "Nginx Installation"

dnf install mysql -y &>> $logs_file
validate $? "MySql Installation"
echo "Script execution ended at $(date +"%F %T")"