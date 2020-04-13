#!/bin/bash

opam update GT lama &&
opam upgrade -y GT lama &&
cd /usr/share/compiler-2020 &&
eval `opam config env` &&
ocamlc -v &&
opam pin list &&
make
