FROM berezun/cw-2020

RUN opam update GT lama && opam upgrade -y GT lama && eval `opam env`
