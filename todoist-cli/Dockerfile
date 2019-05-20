FROM golang:latest
ENV VERSION=faf36822fccdc8c6046382fb6588986a073138f1
WORKDIR /go
RUN curl https://raw.githubusercontent.com/golang/dep/master/install.sh | sh
WORKDIR /go/src/github.com/sachaos
RUN git clone https://github.com/sachaos/todoist.git
WORKDIR /go/src/github.com/sachaos/todoist
RUN make install
CMD cp -rp /go/bin/todoist /out/todoist-cli
