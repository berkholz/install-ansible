#!/bin/sh

if [ "$(whoami)" == "root" ];then 
	yum install epel-release ansible git openssh-client
else
	sudo yum install epel-release ansible openssh-client git
fi
