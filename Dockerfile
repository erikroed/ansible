FROM ubuntu:24.04 as base

WORKDIR /usr/local/bin

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y sudo software-properties-common curl git build-essential && \
    apt-add-repository -y ppa:ansible/ansible && \
    apt-get update && \
    apt-get install -y ansible && \
    apt-get clean autoclean && \
    apt-get autoremove --yes

RUN useradd -m -s /bin/bash roed && \
    usermod -aG sudo roed && \
    passwd -d roed

USER roed

WORKDIR /home/roed
RUN mkdir ansible

WORKDIR ansible

VOLUME ansible/
