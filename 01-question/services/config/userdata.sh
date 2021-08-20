#!/bin/sh
#Update the packages
yum update -y

# Installation of apache service & its core components
yum -y install httpd

#Enable httpd service and start it
systemctl enable httpd
systemctl start httpd.service
systemctl is-enabled httpd
