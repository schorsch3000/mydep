FROM debian:stretch
ENV VERSION=8.1.0329
RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install \
    libncurses5-dev \
    libatk1.0-dev \
    libbonoboui2-dev \
    libcairo2-dev \
    libx11-dev \
    libxpm-dev \
    libxt-dev \
    python-dev \
    python3-dev \
    ruby-dev \
    lua5.1 \
    liblua5.1-dev \
    libperl-dev \
    git \
    checkinstall

WORKDIR /build
CMD git clone https://github.com/vim/vim.git \
    && cd vim \
    && git checkout v$VERSION \
    && ./configure --with-features=huge \
    --enable-multibyte \
    --enable-rubyinterp=yes \
    --enable-python3interp=yes \
    --with-python3-config-dir=/usr/lib/python3.5/config-3.5m-x86_64-linux-gnu \
    --enable-perlinterp=yes \
    --enable-luainterp=yes \
    --enable-cscope \
    --prefix=/usr/local \
    && make -j8 VIMRUNTIMEDIR=/usr/local/share/vim/vim81 \
    && checkinstall --pkgversion=2:$VERSION --install=no -y \
    && cp *.deb /out
