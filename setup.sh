#!/bin/bash
#Setup for kubernetes cluster and rancher installation.

GREEN='\033[0;32m'
NC='\033[0m' #No color

echo -e "${GREEN}Enabling ansible RHEL repo ${NC}"
subscription-manager repos --enable rhel-7-server-ansible-2.9-rpms


echo -e "\n${GREEN}Installing ansible ${NC}"
yum install ansible

echo -e "\n${GREEN}Installing additional general modules for ansible ${NC}"
ansible-galaxy collection install community.general

echo -e "\nRHEL Username: "
read username

echo -e "\nRHEL Password: "
read password

echo "Appending text test $username" >> test.txt
echo "blah $password" >> test.txt
