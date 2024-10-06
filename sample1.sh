#!/bin/bash 

source = /tmp/app

if [ -d $source ]
then
    echo "Source exists" 
else 
    echo "source not exists"
    exit 1 
fi 
files = $(find $source -name "*.log" -mtime +14)

while IFS= read -r line
do 
    echo "Deleing file: $line 
    rm -rf $line 
done <<< $files