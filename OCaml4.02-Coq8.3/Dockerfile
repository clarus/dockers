FROM ubuntu
MAINTAINER Guillaume Claret <dev@clarus.me>

RUN apt-get update
RUN apt-get install -y gcc make git

# OCaml 4.02
WORKDIR /root
RUN git clone https://github.com/ocaml/ocaml.git
WORKDIR /root/ocaml
RUN git checkout 4.02
RUN ./configure
RUN make world.opt
RUN make install

# Camlp4 4.02
WORKDIR /root
RUN git clone https://github.com/ocaml/camlp4.git
WORKDIR /root/camlp4
RUN git checkout 4.02
RUN ./configure
RUN make all
RUN make install

# Coq 8.4
WORKDIR /root
RUN git clone https://github.com/coq/coq.git
WORKDIR /root/coq
RUN git checkout v8.4
RUN yes "" |./configure
RUN make -j2
RUN make install