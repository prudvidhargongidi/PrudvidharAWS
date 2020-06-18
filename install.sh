#!/bin/bash
#script to install git and tree
yum install git -y
yum install tree -y
echo
echo
echo
echo
echo -e \033 "Git and Tree installed successfully"
echo
echo 
echo
sleep 10s
yum remove git -y
yum remove tree -y
echo
echo
echo
echo
echo
echo "installed git and tree has removed successfully"

