FROM ubuntu:15.10

RUN apt-get update && apt-get install -y curl git wget mono-complete mono-xsp4 && \
    mozroots --import --sync && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN wget -q https://raw.githubusercontent.com/ipfs/install-go-ipfs/master/install-ipfs.sh
sudo sh install-ipfs.sh
