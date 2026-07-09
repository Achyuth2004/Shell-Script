#!/bin/bash

Threshold=69
Message=""

while IFS= read -r line; do
    usage=$(echo "$line" | awk '{print $6}' | tr -d '%')
    folder=$(echo "$line" | awk '{print $NF}')

    if [ "$usage" -ge "$Threshold" ]; then
        Message+="$folder value is greater than $Threshold, current usage: $usage%\n"
    fi
done < <(df -hT | awk 'NR>1 && $2=="xfs"')

echo -e "Message: $Message"