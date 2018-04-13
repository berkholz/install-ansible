#!/bin/sh

# enable repo via subscription-manager
subscription-manager repos --enable rhel-7-server-extras-rpms

yum install ansible-doc ansible
yum install git openssh-client

