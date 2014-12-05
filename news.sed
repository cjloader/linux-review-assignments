#!/bin/sh

sed -i '/addgroup comp.os.linux.announce*/addgroup comp.os.linux.announce m/'
sed -i '/addgroup comp.arch*/addgroup comp.arch y'
sed -i '/addgroup utsa.cs.3423*/addgroup utsa.cs.3423 y'


