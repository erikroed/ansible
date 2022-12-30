FROM ubuntu:22.04

WORKDIR /usr/local/bin

ENV TZ=Europe/Osl
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt update &&  \
    apt install -y software-properties-common && \
    apt-add-repository -y ppa:ansible/ansible &&  \
    apt-add-repository -y ppa:neovim-ppa/unstable &&  \
    apt update &&  \
    apt install -y curl git ansible build-essential neovim

COPY . .

ARG TAGS

CMD ["sh", "-c", "ansible-playbook $TAGS local.yaml"]
