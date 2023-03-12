FROM ubuntu:22.04 AS base

WORKDIR /usr/local/bin

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y software-properties-common curl git build-essential && \
    apt-add-repository -y ppa:ansible/ansible && \
    apt-get update && \
    apt-get install -y ansible && \
    apt-get clean autoclean && \
    apt-get autoremove --yes

FROM base as roed
ARG TAGS
RUN addgroup --gid 1000 roed
RUN adduser --gecos roed --uid 1000 --gid 1000 --disabled-password roed
USER roed
WORKDIR /home/roed

FROM roed
COPY . .

CMD ["sh", "-c", "ansible-playbook $TAGS local.yml"]
