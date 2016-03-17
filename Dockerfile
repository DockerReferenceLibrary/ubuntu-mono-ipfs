FROM compulsivecoder/ubuntu-mono:latest

RUN wget -q https://raw.githubusercontent.com/ipfs/install-go-ipfs/master/install-ipfs.sh && \
    sh install-ipfs.sh


# Install Docker from Docker Inc. repositories.
RUN curl -sSL https://get.docker.com/ | sh

VOLUME /var/lib/docker

#RUN mkdir /.ipfs-data && \
#  cd /.ipfs-data && \
#  ipfs init

#RUN ipfs daemon &
