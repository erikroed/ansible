FROM ubuntu:24.04 AS base

WORKDIR /usr/local/bin

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y sudo software-properties-common wget curl git build-essential uuid-runtime && \
    apt-add-repository -y ppa:ansible/ansible && \
    apt-get update && \
    apt-get install -y ansible && \
    apt-get clean autoclean && \
    apt-get autoremove --yes

ARG USERNAME=user
ARG SUDO_PASS=changeme

RUN useradd -m -s /bin/bash $USERNAME && \
    usermod -aG sudo $USERNAME && \
    echo "$USERNAME:$SUDO_PASS" | chpasswd

USER $USERNAME

WORKDIR /home/$USERNAME
RUN mkdir ansible

WORKDIR ansible

VOLUME ansible/
