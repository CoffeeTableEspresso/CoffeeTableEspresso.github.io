#!/bin/bash

# to use:
# ./configure.sh > Makefile
# make

echo -n "all:"
for f in *.html.in; do
    echo -n " ${f%.html.in}"
done;


echo $' blog-posts\n'

for f in *.html.in; do
    declare name="${f%.html.in}";
    echo "$name:";
    echo $'\t'"gcc -E -x assembler-with-cpp -P $name.html.in > $name.html"$'\n'
done;

echo -n 'blog-posts:'
for b in blog-posts/*.html.in; do
    declare name="${b#blog-posts/}"
    echo -n " ${name%.html.in}"
done;

echo $'\n'

for b in blog-posts/*.html.in; do
    declare name="${b#blog-posts/}"
    echo "${name%.html.in}:";
    echo $'\t'"gcc -E -x assembler-with-cpp -P -I. $b > ${b%.in}"$'\n'
done;

echo "clean:"
echo $'\trm *.html'
echo $'\trm blog-posts/*.html'
