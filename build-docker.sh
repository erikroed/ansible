#!/usr/bin/bash

if [[ ! -z $1 && $1 = "root" ]]; then
    docker build . -f Dockerfile.root -t root-computer
else 
    docker build . -t new-computer
fi
