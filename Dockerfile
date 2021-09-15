FROM berezun/cw-2021
# FROM berezun/test

# COPY test.sh /test.sh

RUN eval `opam env` && opam switch remove lama && opam switch create lama ocaml-variants.4.10.1+fp+flambda && eval $(opam env) && opam pin add Lama https://github.com/JetBrains-Research/Lama-devel.git\#1.10+ocaml4.10 --no-action --yes && opam depext Lama --yes && opam install Lama --yes
