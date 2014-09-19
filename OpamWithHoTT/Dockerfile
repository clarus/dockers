FROM ubuntu
MAINTAINER Guillaume Claret

RUN apt-get update
RUN apt-get install -y gcc make git

RUN apt-get install -y m4 liblablgtksourceview2-ocaml-dev
RUN apt-get install -y unzip

# Opam with the Coq repository
RUN apt-get install -y opam
RUN opam init
RUN opam repo add coq https://github.com/clarus/opam-coq-repo.git

# Coq HoTT
RUN opam install -y coq-HoTT