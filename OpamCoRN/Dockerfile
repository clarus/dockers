FROM ubuntu
MAINTAINER Guillaume Claret

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y gcc make git

# Opam with the Coq repository
RUN apt-get install -y opam
RUN opam init
RUN opam repo add coq https://github.com/clarus/opam-coq-repo.git

# Coq
RUN opam install -y coq

# Math Classes
RUN opam install -y coq-math-classes

# CoRN
RUN opam install -y coq-CoRN