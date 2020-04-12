FROM berezun/cw-2020

COPY test.sh /test.sh

RUN opam update GT lama && opam upgrade -y GT lama && eval `opam env`
