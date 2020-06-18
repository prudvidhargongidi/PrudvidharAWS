#!/bin/bash
set -x
#This script is to create new users and auto generated password
read -p "Please enter the user name: " user_name
#user_name=${@} we  need to  use forloops  to exec this using param
users={@}
special='!@#$%^&*()_+'
special_char=$(echo $special| fold -w1|shuf|head -1)
PASSWORD=$(date +%s)${RANDOM}${special_char}
useradd ${user_name} -p ${PASSWORD}
echo
echo ${user_name} created  successfully and  password is  ${PASSWORD}
echo 'Thank you Have a Good Day'

