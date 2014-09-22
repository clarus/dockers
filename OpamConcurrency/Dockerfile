FROM ubuntu
MAINTAINER Guillaume Claret

RUN apt-get update
RUN apt-get install -y gcc make git

# Opam with the Coq repository
RUN apt-get install -y opam
RUN opam init
RUN v=1 opam repo add coq https://github.com/clarus/opam-coq-repo.git

# Concurrency library
RUN opam install -y coq.8.4.2 || echo "OK"
RUN opam install -y concurrency || echo "OK"