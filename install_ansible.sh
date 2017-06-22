#!/bin/sh

##
## ask function
##
ask_to_continue(){
        echo -en "$1"
        echo -en " [y|N]: "
        read ANSWER
        if [ "${ANSWER,,Y}" == "y" ]; then
                echo
                return 0
        else
                echo
                return 1
        fi
}

apt-get install software-properties-common
apt-add-repository ppa:ansible/ansible
apt-get update
apt-get install ansible -y
apt-get install git openssh-client

if ask_to_continue "Should I install custom tools for kerberos and ldap?"
then
        apt-get install krb5-config krb5-user ldap-utils msktutil 
else
        echo "Skipping installation of kerberos and ldap tools. Exiting..."
        exit 0
fi

