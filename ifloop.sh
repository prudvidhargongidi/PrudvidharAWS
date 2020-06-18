#!/bin/bash
#set -xe
read -p "Please enter value for x: " x
echo
if [[ ${x} -eq 10 ]]
then
echo "The value you entered is ${x}"
else 
echo "you have entered the value which is not equal to 10"
fi

