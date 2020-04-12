FROM berezun/cw-2020

RUN opam update && opam upgrade -y && eval `opam env`
