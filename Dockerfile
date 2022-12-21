FROM ubuntu:22.04

WORKDIR /usr/local/bin

RUN apt update &&  \
    apt install -y software-properties-common && \
    apt-add-repository -y ppa:ansible/ansible &&  \
    apt-add-repository -y ppa:neovim-ppa/unstable &&  \
    apt update &&  \
    apt install -y curl git ansible build-essential neovim

COPY . .

CMD ["sh", "-c", "ansible-playbook $TAGS setup.yaml"]
