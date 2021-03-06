#!/bin/bash

mkdir dot
./txt2dot.py
mkdir svg
mkdir png
mkdir plaindot
mkdir vrml
cd dot
for name in *; do dot -Tpng $name -o ../png/$name.png; done
for name in *; do dot -Tsvg $name -o ../svg/$name.svg; done
for name in *; do dot -Tplain $name -o ../plaindot/$name.txt; done
for name in *; do dot -Tvrml $name -o ../vrml/$name.vrml; done
