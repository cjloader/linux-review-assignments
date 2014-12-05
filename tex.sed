#!/bin/sh

#search and replace
sed 's/\/\verb+\+/g'
sed 's/%/\%/g'
sed 's/^/\^/g'
sed 's/\/-\hspace{.01cm}-/g'

#add text to beginning and end
sed '1i/\documentstyle[11pt]{article}'
sed '2i/\begin{document}'
sed '$a/\end{document}'

#center first line of ascii file
sed '3i/\begin{center} {\bf'
sed '4i/} \end{center}'

#descriptions
sed '5,$a-1i/^/\begin{description} \item[' 
sed '5,$a-1i/$/ ] \end{description}'

#remove first non-blank characters
sed 's/^[+|-]//g'
