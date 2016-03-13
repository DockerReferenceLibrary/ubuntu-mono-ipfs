FROM compulsivecoder/ubuntu-mono

# TODO: Should unzip be installed in the ubuntu-mono image instead?
RUN apt-get update && \
    apt-get install unzip && \
    wget -q https://raw.githubusercontent.com/ipfs/install-go-ipfs/master/install-ipfs.sh && \
    sh install-ipfs.sh && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN mkdir /.ipfs-data && \
  cd /.ipfs-data && \
  ipfs init

ENTRYPOINT /usr/local/bin/ipfs daemon
