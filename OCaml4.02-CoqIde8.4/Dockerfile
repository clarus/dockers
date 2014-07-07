FROM ubuntu
MAINTAINER Guillaume Claret

RUN apt-get update
RUN apt-get install -y gcc make git

# OCaml 4.02
WORKDIR /root
RUN git clone https://github.com/ocaml/ocaml.git
WORKDIR /root/ocaml
RUN git checkout 4.02
RUN ./configure
RUN make world.opt
RUN make install

# Camlp4 4.02
WORKDIR /root
RUN git clone https://github.com/ocaml/camlp4.git
WORKDIR /root/camlp4
RUN git checkout 4.02
RUN ./configure
RUN make all
RUN make install

# OCamlFind 1.5.1
RUN apt-get install -y curl m4
WORKDIR /root
RUN curl http://download.camlcity.org/download/findlib-1.5.1.tar.gz |tar -xz
WORKDIR /root/findlib-1.5.1
RUN ./configure
RUN make all
RUN make opt
RUN make install

# LablGtk 2.18.0
RUN apt-get install -y libgtksourceview2.0-dev
WORKDIR /root
RUN curl https://forge.ocamlcore.org/frs/download.php/1261/lablgtk-2.18.0.tar.gz |tar -xz
WORKDIR /root/lablgtk-2.18.0
RUN ./configure
RUN make world
RUN make install

# CoqIde 8.4
WORKDIR /root
RUN git clone https://github.com/coq/coq.git
WORKDIR /root/coq
RUN git checkout v8.4
RUN yes "" |./configure
RUN make -j2
RUN make install