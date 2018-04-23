ocamlc -custom -output-obj -o modcaml.o mod.ml
cp `ocamlc -where`/libcamlrun.a mod.a && chmod +w mod.a
d++ --include-path `ocamlc -where` -c modwrap.dpp
ar r mod.a modcaml.o modwrap.o
d++ --include-path `ocamlc -where` main.dpp  mod.a  -L-lcurses -L-ldl -L-lm -L-lphobos2

