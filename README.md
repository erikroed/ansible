# Ansible 

This repo contains my local setup to make it easier to replicate on all my machines.

# Requirements

The playbook utilizes some community roles. To ensure the playbook works, we need to

1. Install ansible
2. Install community roles / requirements.yml

This is handled by the install-ansible.sh file

# Docker

It's possible to run the whole environment in it's own container, but it can also be ran directly on the computer as well.

To run it in the container, there is some helper scripts:

- build-container.sh -> Prompts for username and sudo password for the container user and build the image
- run-container.sh -> Runs the container and mounts the repo inside the container (so changes done on the host is reflected inside the container as long as the container runs)
