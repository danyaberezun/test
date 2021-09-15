# FROM berezun/cw-2020
FROM berezun/test

# COPY test.sh /test.sh

RUN opam pin remove GT --yes && opam remove GT --yes && opam update --yes && opam install GT --yes && opam upgrade --yes && eval `opam env`
