#!/bin/bash


#remove control-H
sed 's/^H//g'
sed 's/_//g'

#remove duplicate letters
$ sed 's/\([A-Za-z]\)\1\+/\1/g'
