FROM debian:stretch
RUN apt-get update && apt-get upgrade -y && apt-get -y install checkinstall
WORKDIR /out
CMD checkinstall -D --pkgname=todoist-cli --pkgversion=1.0.0 -y cp -rp todoist-cli /usr/bin
