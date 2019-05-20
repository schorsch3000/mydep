FROM debian:stretch
ENV VERSION=2.21.0
ENV TAG_VERSION_PREFIX=v
RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get install -y \
    git \
    autoconf \
    gcc \
    make \
    checkinstall \
    bison \
    wish \
    gettext \
    zlib1g-dev \
    libcurl4-openssl-dev



WORKDIR /build
RUN git clone  https://github.com/git/git.git
WORKDIR /build/git
RUN git checkout $TAG_VERSION_PREFIX$VERSION



RUN autoreconf -fi
RUN ./configure
RUN make -j 8
RUN mkdir -p \
    /usr/local/bin \
    /usr/local/libexec/git-core \
    /usr/local/share/git-core \
    /usr/local/share/gitk \
    /usr/local/share/gitk/lib \
    /usr/local/share/git-gui
RUN checkinstall --install=no -y -pkgname=git --pkgversion=$VERSION
CMD cp *.deb /out
