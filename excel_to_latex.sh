#!/bin/bash
sed -i "" -e "s/,/\./g" $1
sed -i "" -e "s/	/\ \&\ /g" $1
cat $1 | tail -n 1 > tmp_sed.tmp
cat $1 | tail -r | tail -n +2 | tail -r > $1
sed -i "" -e "s/$/\/\//g" $1
cat tmp_sed.tmp >> $1
rm -f tmp_sed.tmp
