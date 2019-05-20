FROM debian:stretch
ENV VERSION=2.1.2
ENV TAG_NAME=1569e9c38d2873fc81c862d4f79b68cc51d2100f
RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get install -y \
    git \
    gcc \
    make \
    checkinstall

WORKDIR /build
RUN git clone https://github.com/sasq64/cbmconvert.git
WORKDIR /build/cbmconvert
RUN git checkout $TAG_NAME

RUN make -f Makefile.unix
RUN mkdir -p /out
RUN checkinstall --install=no -y -pkgname=cbmconvert --pkgversion=$VERSION
CMD cp *.deb /out
