#!/bin/bash 

tarfile = https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.93/bin/apache-tomcat-9.0.93.tar.gz

filename = $( echo $tarfile | rev | cut -d "/" -f1 | rev )

directory = $( echo $filename | sed -e 's/.tar.gz//')

echo "installing tomcat"

wget $tarfile 

echo "unzipping tarfile"

tar -xf $filename

sudo yum install java-11....

cd $directory/bin

sudo sh startup.sh 