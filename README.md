# Ansible 

This repo contains my setup to make it easier to replicate on all my machines.
It's mostly installation and setup of developer tools etc, but also some other things like browser, chatting programs etc.

Some playbooks requires sudo permissions, just run the playbook with the `-K` flag and ansible will prompt for sudo password before running the playbook.

```shell
ansible-playbook <playbook>.yml -K
```

To run specific roles, use the rolename as tag:

```shell
ansible-playbook <playbook>.yml -t <rolename>
```

# Requirements

The playbook utilizes some community roles. To ensure the playbook works, we need to

1. Install ansible
2. Install community roles / requirements.yml

This is handled by the install-ansible.sh file

# Docker

It's possible to run the whole environment in it's own container.
The docker configuration is located in the `docker` folder.

To run it in the container, there is some helper scripts in the folder as well:

- build-container.sh -> Prompts for username and sudo password for a user that will be created during the building of the image.
- run-container.sh -> Runs the container and mounts the repo inside the container for easier development and testing.
  - The container will be removed when exiting out of the container, to keep the container, remove the "--rm" flag inside the bash file

# Playbooks

The playbooks have different use cases as described in the table below.
They usually refer to necessary roles and to make them as flexible as possible, they are tagged with the rolename so it's possible to only run the roles you want to run.

In each playbook you will see the following structure for the roles:

```yaml
roles:
  - role: rolename
    tags: rolename
```

In this repo you will find the following playbooks:

|Playbook                   |Description                          |
|---------------------------|-------------------------------------|
|add_user.yml               |Playbook to add new users            |
|remove_user.yml            |Playbook to remove users             |
|install_common.yml         |Install tools regardless of profile  |
|install_personal.yml       |Install tools for personal profile   |
|install_job.yml            |Install tools for work profile       |
