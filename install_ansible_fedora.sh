#!/bin/sh
if [ "$(whoami)" == "root" ];then 
	dnf install ansible git openssh-clients
else
	sudo dnf install ansible git openssh-clients
fi
