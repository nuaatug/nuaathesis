#!/bin/bash

latex nuaathesis.ins
xelatex nuaathesis.dtx
makeindex -s gind.ist -o nuaathesis.ind nuaathesis.idx
makeindex -s gglo.ist -o nuaathesis.gls nuaathesis.glo
xelatex nuaathesis.dtx
xelatex nuaathesis.dtx
xelatex nuaathesis.dtx

latexmk -xelatex sample-bachelor
latexmk -xelatex sample-master
