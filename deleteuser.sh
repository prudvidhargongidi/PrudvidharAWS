#!/bin/bash
#Deleting all created users 
read -p "Please enter the username you would like to remove:- " username
echo "$username will be deleted in 10 sec if something is wrong please press ctrl + c"
sleep 10s
userdel -r ${username}
echo "$username has deleted successfully"


