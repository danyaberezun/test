# FROM berezun/cw-2020
FROM berezun/test

# COPY test.sh /test.sh

RUN opam update GT lama && opam upgrade -y GT lama && eval `opam env` && echo $(lamac -v)
