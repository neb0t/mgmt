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


Local infrastructure opened on Vagrant VirtualBox

OS: CentOS 7

Network: 192.168.22.0/24

### Hosts

- [ansible]
    - ansible (192.168.22.10)
- [balancer] 
    - balancer (192.168.22.11, +EXT IP)
- [ci]    
    - jenkins (192.168.22.12)
- [monitoring]
    - zabbix (192.168.22.13)
    - logs (192.168.22.15)
- repo (192.168.22.14)
- [webapp]
    - web1 (192.168.22.21)
    - web2 (192.168.22.22)
    - web3 (192.168.22.23)
- [database]    
    - db1 (192.168.22.31)
    - db2 (192.168.22.32)
    - db3 (192.168.22.33)

Up/Down all virtual hosts ```vagrant up``` / ```vagrant halt```

Up/Down single virtual host ```vagrant up ansible``` / ```vagrant halt ansible```


