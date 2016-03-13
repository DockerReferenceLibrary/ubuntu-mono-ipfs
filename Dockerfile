FROM compulsivecoder/ubuntu-mono

RUN wget -q https://raw.githubusercontent.com/ipfs/install-go-ipfs/master/install-ipfs.sh && \
    sh install-ipfs.sh

RUN mkdir /.ipfs-data && \
  cd /.ipfs-data && \
  ipfs init

CMD /usr/local/bin/ipfs daemon
