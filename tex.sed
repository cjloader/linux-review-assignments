#!/bin/sh

#search and replace
sed 's/\/\verb+\+/g' *.1 > sample.tex
sed 's/%/\%/g' sample.tex
sed 's/^/\^/g' sample.tex
sed 's/\/-\hspace{.01cm}-/g' sample.tex

#add text to beginning and end
sed '1i/\documentstyle[11pt]{article}' sample.tex
sed '2i/\begin{document}' sample.tex
sed '$a/\end{document}' sample.tex
