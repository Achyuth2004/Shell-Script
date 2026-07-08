#!/bin/bash

SOURCE_DIR="/tmp/app-logs"

R="\033[31m"
G="\033[32m"
Y="\033[33m"
N="\033[0m"

if [ -d "$SOURCE_DIR" ]
then 
    echo -e "${G}Source directory exists${N}"
else
    echo -e "${R}Please make sure $SOURCE_DIR exists${N}"
    exit 1
fi

FILES=$(find "$SOURCE_DIR" -name "*.log" -mtime +15)

while IFS= read -r line
do
    echo "Deleting file: $line"
    rm -rf "$line"
done <<< "$FILES"
