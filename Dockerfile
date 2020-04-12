FROM berezun/cw-2020

RUN opam pin update && opam pin upgrade -y && eval `opam env`
