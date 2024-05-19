#!/bin/bash
# Run Ansible playbook
ansible-playbook --inventory ansible/inventory/vm-setup-playbook/hosts ansible/vm_setup_local.yml
