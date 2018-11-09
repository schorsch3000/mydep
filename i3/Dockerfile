FROM debian:stretch
ENV VERSION=4.16
RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get install -y \
    git \
    autoconf \
    gcc \
    make \
    libev-dev \
    libstartup-notification0-dev \
    libxcb-xkb-dev \
    libxcb-xinerama0-dev \
    libxcb-randr0-dev \
    libxcb-cursor-dev \
    libxcb-keysyms1-dev \
    libxcb-icccm4-dev \
    libxcb-xrm-dev \
    libxcb-xrm0 \
    xutils-dev \
    libtool \
    libxkbcommon-dev \
    libxkbcommon-x11-dev \
    libyajl-dev \
    libpcre3-dev \
    libcairo2-dev \
    libpango1.0-dev \
    libxcb-util0-dev \
    asciidoc \
    dh-autoreconf \
    checkinstall

WORKDIR /build
RUN git clone https://github.com/i3/i3.git
WORKDIR /build/i3
RUN git checkout $VERSION


RUN autoreconf -fi
RUN mkdir -p build
WORKDIR /build/i3/build
RUN ../configure
RUN make -j8
RUN mkdir -p /out /usr/local/share/doc
RUN checkinstall --install=no -y -pkgname=i3 --pkgversion=$VERSION
CMD cp *.deb /out
