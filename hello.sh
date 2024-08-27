#!/bin/bash

#declaring of varible
PERSON1=$1
PERSON2=$2

#referring variable
echo "$PERSON1:: Hello $PERSON2, How are youu?"
echo "$PERSON2:: Hi $PERSON1, I am fine. How are you?"
echo "$PERSON1:: I am fine too. how is your work?"
echo "$PERSON2:: not bad. I am thinking to upgrade to DevOps"
echo "Number of variables passed: $#"
echo "All variables: $@"
echo "Process ID of the current shell script: $$"
echo "Process ID of last background command: $!"
echo "Script Name: $0"