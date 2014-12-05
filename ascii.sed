#!/bin/sh

#search and replace
sed 's/\/\verb+\+/g' *.1 > sample.tex
sed 's/%/\%/g' sample.tex
sed 's/^/\^/g' sample.tex
sed 's/\/-\hspace{.01cm}-/g' sample.tex

#add items to beginning
sed 1/\documentstyle[11pt]{article}
