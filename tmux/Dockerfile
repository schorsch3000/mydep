FROM debian:stretch
ENV VERSION=2.9a
RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install \
    libncurses5-dev \
    libevent-dev \
    git \
    automake \
    autoconf \
    pkg-config \
    checkinstall

WORKDIR /build
CMD git clone https://github.com/tmux/tmux.git \
    && cd tmux \
    && git checkout $VERSION \
    && sh autogen.sh \
    && ./configure \
    && make \
    && checkinstall --pkgname=tmux --pkgversion=$VERSION --install=no -y \
    && cp *.deb /out
