# Test the activation of local repositories with colons in their names.
FROM ubuntu:14.10
MAINTAINER Guillaume Claret

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y gcc make git
RUN apt-get install -y curl
RUN apt-get install -y m4 aspcud

# OCaml
WORKDIR /root
RUN curl -L https://github.com/ocaml/ocaml/archive/4.02.1.tar.gz |tar -xz
WORKDIR /root/ocaml-4.02.1
RUN ./configure && make world.opt && make install

# Camlp4
WORKDIR /root
RUN curl -L https://github.com/ocaml/camlp4/archive/4.02.1+1.tar.gz |tar -xz
WORKDIR /root/camlp4-4.02.1-1
RUN ./configure && make all && make install

# Bench user
RUN useradd --create-home bench
USER bench
ENV HOME /home/bench

# OPAM 1.2.1-beta
WORKDIR /home/bench
RUN curl -L https://github.com/ocaml/opam/archive/1.2.1-beta.tar.gz |tar -xz
WORKDIR opam-1.2.1-beta
RUN ./configure && make lib-ext && make
USER root
RUN make install
USER bench

RUN apt-get install -y unzip

# Clone the repo-stable.
WORKDIR /home/bench
RUN git clone https://github.com/coq/repo-stable

# Initialize OPAM.
WORKDIR /home/bench
RUN opam init
ENV OPAMJOBS 4

# Use the local copy of the repo-stable (should succeed).
RUN opam repo add --kind=local stable /home/bench/repo-stable
RUN opam install -y coq:concurrency:proxy
