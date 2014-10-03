FROM ubuntu
MAINTAINER Guillaume Claret

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y gcc make git

# OCaml 4.02
WORKDIR /root
RUN apt-get install -y curl
RUN curl -L https://github.com/ocaml/ocaml/archive/4.02.0.tar.gz |tar -xz
WORKDIR /root/ocaml-4.02.0
RUN ./configure
RUN make world.opt
RUN make install

# Camlp4 4.02
WORKDIR /root
RUN curl -L https://github.com/ocaml/camlp4/archive/4.02.0+1.tar.gz |tar -xz
WORKDIR /root/camlp4-4.02.0-1
RUN ./configure
RUN make all
RUN make install

# Coq trunk
WORKDIR /root
RUN git clone https://github.com/coq/coq.git
WORKDIR /root/coq
RUN yes "" |./configure
RUN make -j6
RUN make install