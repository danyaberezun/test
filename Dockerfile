# FROM berezun/cw-2020
FROM berezun/test

# COPY test.sh /test.sh

RUN opam pin remove GT && opam remove GT && opam update && opam install GT && opam upgrade && eval `opam env`
