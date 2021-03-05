#!/bin/bash
for X in $(find -type l)
do L=$(readlink "$X")
inkscape -w 24 -h 24 $L -e "${L%svg}png"
N="${L%.svg}.png"
U="${X%.svg}.png"
test -e "$N" && ln -vfs "$N" "$U" || echo "Can't find new target for $X -> $L"
rm $X
done

for X in $(find *.svg -type f)
do
inkscape -w 96 -h 96 $X -e "${X%svg}png"
rm $X
done
