FROM debian:buster
ENV VERSION=enigma-1.20-dfsg.1
RUN echo "deb http://ftp.de.debian.org/debian/ buster main contrib non-free" >  /etc/apt/sources.list
RUN echo "deb-src http://ftp.de.debian.org/debian/ buster main contrib non-free" >>  /etc/apt/sources.list
RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get install -y build-essential fakeroot devscripts
RUN apt-get source -y enigma
RUN apt-get build-dep -y enigma
WORKDIR /$VERSION
ADD client.cc.patch /tmp/
RUN patch src/client.cc /tmp/client.cc.patch
RUN debuild -b -uc -us
CMD cp /*.deb /out
