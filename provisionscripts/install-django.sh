#!/usr/bin/bash 
set -x
sudo /bin/systemctl disable  firewalld.service
sudo /bin/systemctl stop  firewalld.service
sudo yum -y install epel*
sudo yum -y update
sudo yum install -y python-pip
sudo pip install django
yum install -y git tree vim
set +x
