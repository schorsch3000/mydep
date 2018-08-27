FROM debian:stretch
ENV VERSION=1.5.1
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
    checkinstall \
    bison \
    flex \
    libxcb-ewmh-dev \
    libxcb-ewmh2 \
    texinfo \
    librsvg2-dev

WORKDIR /deps/
RUN git clone https://github.com/libcheck/check.git
WORKDIR /deps/check
RUN autoreconf -fi
RUN ./configure
RUN make
RUN make install


WORKDIR /build
RUN git clone https://github.com/DaveDavenport/rofi.git
WORKDIR /build/rofi
RUN git checkout $VERSION
RUN git submodule update --init --recursive



RUN autoreconf -fi

RUN ./configure
RUN make
RUN mkdir -p /usr/local/share/rofi
RUN checkinstall --install=no -y -pkgname=rofi --pkgversion=$VERSION
CMD cp *.deb /out
