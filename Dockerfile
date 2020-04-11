FROM ubuntu:latest
COPY test.sh /test.sh
RUN apt-get -qq update \
    && apt install -y \
	libc6-dev-i386 \
        gcc \
        make \
        m4 \
        ocaml-nox \
        ocaml-native-compilers \
        camlp4-extra opam \
    && add-apt-repository ppa:avsm/ppa
    && apt update
    && apt install opam
    && opam init --disable-sandboxing \
    && opam switch create 4.07.1 \
    && eval `opam config env`
RUN opam pin add -y ostap https://github.com/dboulytchev/ostap.git\#memoCPS \
    && opam pin add -y lama https://github.com/JetBrains-Research/Lama.git \
    && eval $(opam env) \
    && PATH=$PATH:/root/.opam/4.07.1/bin
