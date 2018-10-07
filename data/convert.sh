#!/bin/bash -x
codes[0]="#fff"
codes[1]="#f00"
codes[2]="#0f0"
codes[3]="#00f"
codes[4]="#ff0"
names[0]="w"
names[1]="r"
names[2]="g"
names[3]="b"
names[4]="y"
for fin in *.svg;
do
  echo $fin
  for c in 0 1 2 3 4
  do
    out=$fin.${names[$c]}.png
inkscape \
    --export-png=$out \
          -b ${codes[$c]} --without-gui $fin
  done;
done;

