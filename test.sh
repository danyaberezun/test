#!/bin/bash

cd /usr/share/compiler-2020 &&
eval `opam config env` &&
ocamlc -v &&
opam pin list &&
make
