FROM ubuntu
MAINTAINER Guillaume Claret

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y gcc make git
RUN apt-get install -y curl

# OCaml trunk
WORKDIR /root
RUN curl -L https://github.com/ocaml/ocaml/archive/trunk.tar.gz |tar -xz
WORKDIR ocaml-trunk
RUN ./configure
RUN make world.opt
RUN make install

# Camlp4 trunk
WORKDIR /root
RUN curl -L https://github.com/ocaml/camlp4/archive/trunk.tar.gz |tar -xz
WORKDIR camlp4-trunk
RUN ./configure
RUN make all
RUN make install

# Coq trunk
WORKDIR /root
RUN curl -L https://github.com/coq/coq/archive/trunk.tar.gz |tar -xz
WORKDIR coq-master
RUN yes "" |./configure
RUN make -j6
RUN make install
