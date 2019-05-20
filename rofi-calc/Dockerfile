FROM debian:stretch
ENV VERSION=0.1
ENV TAG_VERSION_PREFIX=v
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

WORKDIR /in
ADD /in/* /in/
RUN dpkg -i /in/*.deb


WORKDIR /build
RUN git clone https://github.com/svenstaro/rofi-calc.git
WORKDIR /build/rofi-calc
RUN git checkout $TAG_VERSION_PREFIX$VERSION
RUN git submodule update --init --recursive



RUN autoreconf -fi
WORKDIR /build/rofi-calc/build
RUN ../configure
RUN make

RUN checkinstall --install=no -y -pkgname=rofi-calc --pkgversion=$VERSION
CMD cp *.deb /out
