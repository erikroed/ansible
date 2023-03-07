#!/usr/bin/bash

if [[ ! -z $1 && $1 = "root" ]]; then
    docker run --rm -it root-computer bash
else 
    docker run --rm -it new-computer bash
fi
