#!/bin/sh

# enable repo via subscription-manager
subscription-manager repos --enable rhel-7-server-extras-rpms

# ansible packages
yum install ansible-doc ansible

# versioning and connection tools
yum install git openssh-client

# kerberos client tools
yum install krb5-workstation

###
### WINDOWS staff
###
### if you want to deploy windows machines remove comments 

#install kerberos tools
#yum install python-devel krb5-devel krb5-libs krb5-workstation

## install pip for winrm wrappers
# for compiling python wrappers we need gcc
#yum install gcc.x86_64

# we also need pip for obtaining the source
#yum install python2-pip.noarch

# we need the newest pip version to avoid incompatibilities
#pip install --upgrade pip

# now we can install the python wrappers ;)
#pip install pywinrm[kerberos]

