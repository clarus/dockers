# OPAM 1.2
FROM ubuntu:14.10
MAINTAINER Guillaume Claret

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y gcc make git
RUN apt-get install -y curl ocaml
RUN apt-get install -y m4 aspcud

# OPAM 1.2.0
WORKDIR /root
RUN curl -L https://github.com/ocaml/opam/archive/1.2.0.tar.gz |tar -xz
WORKDIR opam-1.2.0
RUN ./configure
RUN make lib-ext
RUN make
RUN make install
RUN opam init

# Build OPAM documentation
RUN opam install -y omd
RUN eval `opam config env`; make doc

# Display OPAM documentation
RUN apt-get install -y ruby
WORKDIR doc/html
CMD ruby -run -e httpd .