# Ansible configuration

- [Roles](#roles)
- [Ansible Playbooks](#ansible-playbooks)

## Roles

Environment roles:

- [common] (provision/roles/common/README.md)
- [haproxy](provision/roles/haproxy/README.md)
- [deploy](provision/roles/deploy/README.md)
- [java](provision/roles/java/README.md)
- [jetty](provision/roles/jetty/README.md)
- [maven](provision/roles/maven/README.md)
- [nginx](provision/roles/maven/README.md)

Additional information about role, You can find in README.md file in same folder

## Ansible Playbooks

All playbooks avaible in [playbooks folder](playbooks). Run Playbooks you can follows:

```
ansible-playbook playbooks/your-role.yml
```
#Deploying Java Spring MVC web application via Ansible

#Infrastructure

###SPECIFICATION

Environment should have at list 2 application servers with any java containers (Tomcat/Jetty/JBoss/etc) and Nginx server with proxy_pass module enabled.
Should have one load balancer and one monitoring server with any tool configured (Zabbix, Cacti, Nagios, etc).
Environment should be deployed via `vagrant up` command.


# SETUP REQUIRMENTS 

Tools needed for Environment setup:

1. Installed Virtualbox
2. Installed Ansible (>=2.0.2 version)
3. Installed Vagrant (>=1.8.1 version)

## Managment instance
Ansible (>=2.0.2) version installed

## Webservers role
Commons installed;
Java 1.8 version installed;
Maven installed;
Jetty installed;
Nginx installed;
Deploy script installed;

## Monitoring server
Zabbix installed;

## Load balancer server
Haproxy installed;

Deploy process instruction:

Clone git project to vagrant host.

`https://github.com/neb0t/mgmt.git`

#Local infrastructure opened on Vagrant VirtualBox

OS: CentOS 7

Network: 10.0.26.0/24

### Hosts

- [ansible]
    - ansible (10.0.26.101)
- [lb] 
    -haproxy (10.0.26.103)
- [monitoring]
    - zabbix (10.0.26.102)
- [webapp]
    - web1 (10.0.26.201)
    - web2 (10.0.26.202)

Up/Down all virtual hosts ```vagrant up``` / ```vagrant halt```

Up/Down single virtual host ```vagrant up app1``` / ```vagrant halt app1```
