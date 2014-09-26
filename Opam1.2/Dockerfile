# Generate an image to test Opam 1.2
FROM ubuntu
MAINTAINER Guillaume Claret

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y gcc make git
RUN apt-get install -y curl ocaml

# Opam 1.2.0-rc2
WORKDIR /root
RUN curl -L https://github.com/ocaml/opam/archive/1.2.0-rc2.tar.gz |tar -xz
WORKDIR /root/opam-1.2.0-rc2
RUN ./configure
RUN make lib-ext
RUN make
RUN make install
RUN opam init

# Coq
RUN opam install -y coq

RUN apt-get install -y m4
WORKDIR /root