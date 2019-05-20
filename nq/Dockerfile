FROM debian:stretch
ENV VERSION=0.3.1
ENV TAG_NAME=v$VERSION
RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get install -y \
    git \
    gcc \
    make \
    checkinstall

WORKDIR /build
RUN git clone https://github.com/chneukirchen/nq.git 
WORKDIR /build/nq
RUN git checkout $TAG_NAME

RUN make -j8
RUN mkdir -p /out /usr/local/share/doc
RUN checkinstall --install=no -y -pkgname=nq --pkgversion=$VERSION
CMD cp *.deb /out
