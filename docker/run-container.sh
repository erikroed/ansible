#!/usr/bin/bash

read -p "Input the username used when building the docker image: " USERNAME

docker run -v "$(pwd)/..:/home/${USERNAME}/ansible/" --rm -it new-computer bash
