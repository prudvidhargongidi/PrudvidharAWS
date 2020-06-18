#!/bin/bash
#This script is to create new users and  check if the new username already exists.
#Reading the user name from keyboard
while :
do
read -p "Please Enter the username:- " username
#user="${@}"
#for username in ${user}
#do
userdel -r ${username}
done

