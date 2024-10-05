#!/bin/bash 

echo -n "enter a string"
read string 

numCount=$(echo $string | grep -o "[0-9]" | wc --lines)

echo $numCount
