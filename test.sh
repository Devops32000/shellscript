#!/bin/bash

echo -n "read a string "
read input

vow=$( echo $input | grep -o -i "[aeiou]" | wc --lines )

echo "This is $vow" 
