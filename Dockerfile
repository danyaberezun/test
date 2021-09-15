# FROM berezun/cw-2020
FROM berezun/test

# COPY test.sh /test.sh

RUN eval `opam env` && opam update && opam pin remove GT --yes && opam remove GT --yes && opam install GT --yes && opam upgrade --yes && eval `opam env`
