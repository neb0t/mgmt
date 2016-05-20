#!/bin/bash

yum -y install http://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
yum -y install ansible

ls -la /home/vagrant

export ANSIBLE_HOST_KEY_CHECKING=False

cd /home/vagrant/provision
ansible-playbook -i hosts playbook.yml -vv