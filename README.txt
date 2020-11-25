README:
Required Installs for host machine running playbooks:

1.) Enable RHEL7 Ansible repo and install Ansible:
 - sudo subscription-manager repos --enable rhel-7-server-ansible-2.9-rpms
 - sudo yum install ansible

2.) Install RHEL subcritpion Module for ansible:
 - ansible-galaxy collection install community.general
 - ansible-galaxy collection install community.kubernetes

3.) Create SSH keys
 - ssh-keygen

4.) Move SSH keys to nodes.
 - ssh-copy-id -i $USER/.ssh/id_rsa.pub user@NODEIP
 - repeat for all nodes.

5.) Configure ansible.cfg
 - sudo vim ansible.cfg
 - Ensure Inventory File location is same location playbooks were downloaded to.

 6.) Add node IPs to Inventory File and confirm additional variables in file.
 - sudo vim inventory.ini