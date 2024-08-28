#!/bin/bash

echo -n "Enter a line of text: "
read string
echo "Actual: $string"


#Installing tomcat 

#!/bin/bash
tarfile=https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.93/bin/apache-tomcat-9.0.93.tar.gz

filename=$(echo $tarfile | rev | cut -d "/" -f1 | rev)

directory=$(echo $filename | sed -e 's/.tar.gz//') 

echo "Installing tomcat"
wget $tarfile 

echo "Unzipping tarfile"
tar -xf $filename

echo "installing java"
sudo yum install java-11....

cd $dierctory/bin 
sh startup.sh 





# Deleting old logs 

#!/bin/bash
directory=/tmp/app-logs
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ -d $directory ]
then 
    echo "$directory exists"
else 
    echo "$dierctory doesn't exists"
    exit 1 
fi 

files=$(find $directory -name "*.log" -mtime +14)

while IFS= read -r line
do 
    echo "deleting $line 
    rm -rm $line 
done <<< $files 




disk_usage=$(df -hT | grep xfs)
threshold=6
message=" " 

while IFS= read -r line 
do 
    usage=$(echo $line | awk -F " " '{print $6F}' | cut -d "%" -f1)
    folder=$(echo $line | awk -F " " '{print $NF}')
    if [ $usage -gt $threshold ]
    then 
        message+="$folder is more than disk threshold $threshold:current usage: $usage \n"
    fi 
done <<< $disk_usage 

echo -e "message: $message" 

echo $message | mail -s "Disk threshold" rajeshmangena34@gmail.com

