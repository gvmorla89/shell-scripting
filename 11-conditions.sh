#!/bin/bash

user_id=$(id -u)

if [$user_id -ne 0]; then
   echo "Please run this command using Sudo access"
   exit 1
fi

echo "Proceeding ........"
dnf install nginxx -y

if [$? -ne 0]; then
    echo "Ngnix installation failed"
    exit 1
else
   echo "Ngnix installation Success"
fi
dnf install mysqlll -y

if [$? -ne 0]; then
    echo "Mysql installation failed"
    exit 1
else
   echo "Mysql installation Success"
fi

 