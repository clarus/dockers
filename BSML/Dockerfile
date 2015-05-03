FROM ubuntu:10.04
MAINTAINER Guillaume Claret

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y camlp4-extra
RUN apt-get install -y mpi libopenmpi-dev
RUN apt-get install -y curl make

WORKDIR /root
RUN curl -L http://traclifo.univ-orleans.fr/BSML/raw-attachment/wiki/WikiStart/bsml-0.5.tar.gz |tar -xz
WORKDIR bsml-0.5
RUN ./configure && make && make install
