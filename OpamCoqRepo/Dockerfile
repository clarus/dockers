FROM ubuntu
MAINTAINER Guillaume Claret

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y gcc make git

# Opam
RUN apt-get install -y opam
RUN opam init
RUN opam install -y coq

# The Coq repository
RUN opam repo add coq-stable https://github.com/coq/repo-stable.git

# Tests
ENV OPAMJOBS 4
# ENV OPAMVERBOSE true