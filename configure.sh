#!/bin/bash

# to use:
# ./configure.sh > Makefile
# make

echo -n "all:"
for f in *.html.in; do
    echo -n " ${f%.html.in}"
done;

echo $'\n'

for f in *.html.in; do
    declare name="${f%.html.in}";
    echo "$name:";
    echo $'\t'"gcc -E -x c -P $name.html.in > $name.html"$'\n'
done;

echo "clean:"
echo $'\trm *.html'