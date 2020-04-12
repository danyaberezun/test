FROM berezun/cw-2020

RUN opam update && opam upgrade ostap lama -y && eval `opam env`
