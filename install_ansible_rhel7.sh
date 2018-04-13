#!/bin/sh

# enable repo via subscription-manager
subscription-manager repos --enable rhel-7-server-extras-rpms

# ansible packages
yum install ansible-doc ansible

# versioning and connection tools
yum install git openssh-client

# kerberos client tools
yum install krb5-workstation

