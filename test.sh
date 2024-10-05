#!/bin/bash 

echo -n "enter a string"
read string 

numcount=$(echo $string | grep -o "[0-9]")

echo "$numcount"
