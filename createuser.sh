#!/bin/bash
#script to create users with auto password
read -p "Please enter the username:- " username
password=$(curl -sL  https://helloacm.com/api/random/?n=8)
#read -s -p "Please enter the password:- " password
useradd -m $username 
echo ${password}| passwd --stdin ${username}
echo -n "UserName is $username and password is $password"

