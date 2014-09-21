FROM ubuntu
MAINTAINER Guillaume Claret

RUN apt-get update
RUN apt-get install -y gcc make git
RUN apt-get install -y automake liblablgtksourceview2-ocaml-dev

# Opam with the Coq repository
RUN apt-get install -y opam
RUN opam init
RUN opam repo add HoTT https://github.com/clarus/coq-HoTT-opam-repo.git

# HoTT
RUN opam install -y HoTT