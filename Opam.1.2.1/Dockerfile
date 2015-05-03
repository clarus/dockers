# OPAM 1.2.1
FROM ubuntu:14.10
MAINTAINER Guillaume Claret

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y gcc make git
RUN apt-get install -y curl ocaml-nox
RUN apt-get install -y m4 aspcud ruby unzip

# Non-root user.
RUN useradd --create-home user
USER user
ENV HOME /home/user

# OPAM 1.2.1-rc2
WORKDIR /home/user
RUN curl -L https://github.com/ocaml/opam/archive/1.2.1-rc2.tar.gz |tar -xz
WORKDIR opam-1.2.1-rc2
RUN ./configure && make lib-ext && make
USER root
RUN make install
USER user

# Initialize OPAM.
RUN opam init
ENV OPAMJOBS 4 # The number of parallel jobs for installations.

# Coq repositories.
RUN opam repo add coq-stable https://github.com/coq/repo-stable.git
RUN opam repo add coq-unstable https://github.com/coq/repo-unstable.git

# Coq
RUN opam install -y -v coq

# SSReflect
RUN opam install -y coq:ssreflect
