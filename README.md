# Ansible 

This repo contains my local setup to make it easier to replicate on all my machines.

# Requirements

The playbook utilizes some community roles. To ensure the playbook works, we need to

1. Install ansible
2. Install community roles / requirements.yml

There is multiple options to install ansible in this playbook, please see read below for the different bash scripts for this.

To install the requirements.yml, run

```bash
ansible-galaxy install -r requirements.yml
```

Will probably add this in the installation step se I don't need to do this everytime I set up a new machine etc.

# Install Ansible

There is multiple options in this repo to install ansible to make it fast and easy. See the description for the different files below.

## install-ansible.sh

This file installs ansible and it requirements.
It will prompt for OS to install ansible for either ubuntu or mac.

## ansible-run.sh

This file will install ansible, pull down the repo and run everything in the install playbook
