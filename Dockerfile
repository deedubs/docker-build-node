FROM debian:wheezy

RUN apt-get update && apt-get install -y \
    python \
    g++ \
    make \
    checkinstall \
    wget

CMD src=$(mktemp -d) && cd $src && wget -N http://nodejs.org/dist/node-latest.tar.gz && tar xzvf node-latest.tar.gz && cd node-v* && ./configure && checkinstall -y --install=no --pkgversion $(echo $(pwd) | sed -n -re's/.+node-v(.+)$/\1/p') make -j$(($(nproc)+1)) install && cp node*.deb /host/

