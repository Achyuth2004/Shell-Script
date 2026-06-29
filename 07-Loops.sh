#!/bin/bash

user= $(id -u)
if [ $user -eq 0]; then
    echo "You are root user,No access🤪!"
    exit 1
else
    echo "You are common user!!!!...."
fi

for i in $@:
do
    echo "Package to install --> $i"
done