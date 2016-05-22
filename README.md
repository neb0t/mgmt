#README

#Deploying Java Spring MVC web application via Ansible

#Infrastructure

###SPECIFICATION

Environment should have at list 2 application servers with any java containers (Tomcat/Jetty/JBoss/etc) and Nginx server with proxy_pass module enabled.
Should have one load balancer and one monitoring server with any tool configured (Zabbix, Cacti, Nagios, etc).
Environment should be deployed via `vagrant up` command.


# SETUP REQUIRMENTS 

Tools needed for Environment setup:

1. Installed Virtualbox2. 
2. Installed Ansible (* version) tools
3. Installed Vagrant (>=2.0 version)

## Managment instance
Ansible (*) version installed

## Webservers role
Commons installed;
Java 1.8 version installed;
Maven installed;
Jetty installed;
Nginx installed;
Deploy script installed;

## Monitoring server
Nagios installed;

## Load balancer server
Haproxy installed;

Deploy process instruction:

Clone git project to vagrant host.

`git clone https://source.sip.net.ua/neb0t/mgmt.git`

Navigate to the project.
Run command:

`vagrant up`