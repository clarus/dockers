FROM ubuntu
MAINTAINER Guillaume Claret

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y gcc make git

# OCaml 4.02
WORKDIR /root
RUN git clone https://github.com/ocaml/ocaml.git
WORKDIR /root/ocaml
RUN git checkout 4.02
RUN ./configure
RUN make world.opt
RUN make install

# Opam trunk
WORKDIR /root
RUN git clone https://github.com/ocaml/opam.git
WORKDIR /root/opam
RUN apt-get install -y wget
RUN ./configure
RUN make lib-ext
RUN make
RUN make install
RUN opam init

# SmartPrint
RUN apt-get install -y m4
RUN opam install -y smart-print