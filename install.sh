#!/bin/bash

# Platform Linux (ubuntu 18.04)
# VM : Standard D2s v3 (2 vcpus, 8 GiB memory)
# Author : Bahadir YILMAZ
# Date : 30/04/2020

# before start don't forget chmod set for install.sh :)
# ANSIBLE Installation


sudo apt-get install software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible


ansible --version


ssh-keygen # or ssh-keygen -t rsa

ssh-copy-id by@10.1.0.4
ssh-copy-id by@10.1.0.6

[servers]
UBUNTU ansible_ssh_host=10.1.0.6

[web_servers]
WIN-SERVER-2019 ansible_ssh_host=10.1.0.4

ansible all -m ping 

or 

ansible UBUNTU -m ping 

ansible UBUNTU  -a uptime


https://docs.ansible.com/ansible/latest/user_guide/playbooks.html
