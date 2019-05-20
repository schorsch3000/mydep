FROM debian:stretch
ENV VERSION=0.9.15
ENV TAG_NAME=v$VERSION
RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get install -y \
    git \
    gcc \
    make \
    checkinstall \
    libncurses5-dev

WORKDIR /build
RUN git clone https://github.com/p-gen/smenu.git
WORKDIR /build/smenu
RUN git checkout $TAG_NAME
RUN ./build.sh
RUN mkdir -p /out 
RUN checkinstall --install=no -y -pkgname=smenu --pkgversion=$VERSION
CMD cp *.deb /out
