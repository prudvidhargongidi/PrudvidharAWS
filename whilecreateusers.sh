#!/bin/bash
#This script is to create new users and  check if the new username already exists.
#Reading the user name from keyboard
while :
do
read -p "Please Enter the username:- " username
#user="${@}"
#for username in ${user}
#Creating complex pasword
spec='!@#$%^&**()'
specchar=$(echo $spec| fold -w1|shuf|head -1)
password=Anthem${RANDOM}${specchar}

#echo $password
#check if user exist
Ex_user=$(cat /etc/passwd| grep -i $username| cut -d ":" -f1)
if [[ ${Ex_user} == ${username} ]]
then
 echo "user ${username} already exist please enter new username"
else
  echo "Creating new user :"
sleep 3s
useradd -m ${username}
echo ${password} | passwd --stdin  ${username}
passwd -e ${username}
#Print username and password
echo "The username is $username and passord is $password"
fi
done

