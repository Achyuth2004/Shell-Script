#!/bin/bash

userid=$(id -u)
timestamp=$(date +%F-%H-%M-%S)   # no space after +
script_name=$(echo $0 | cut -d "." -f1)   # no space before =
log_file=/tmp/$script_name-$timestamp.log

validate(){
    if [ $1 -ne 0 ]; then   # spaces inside [ ]
        echo "$2...FAILURE"
        exit 1
    else
        echo "$2...SUCCESS"
    fi
}

if [ $userid -ne 0 ]; then   # space before ]
    echo "Please run this script with root access"
    exit 1
else
    echo "Running successfully with root access!!"
fi

sleep 20 &>>$log_file   # need $ to expand variable
validate $? "Sleeping for 20s 😴😴"
