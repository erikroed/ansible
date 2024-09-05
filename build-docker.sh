#!/usr/bin/bash

read -p "Input username for the container: " USERNAME
read -sp "Input password for the user: " SUDO_PASS

echo "Building image with the following input: $USERNAME and $SUDO_PASS"

DOCKER_BUILDKIT=1 docker build --build-arg USERNAME=${USERNAME} --build-arg SUDO_PASS=${SUDO_PASS} -t new-computer .
