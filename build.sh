#!/bin/bash

xelatex nuaathesis.dtx &&\
makeindex -s gind.ist -o nuaathesis.ind nuaathesis.idx &&\
makeindex -s gglo.ist -o nuaathesis.gls nuaathesis.glo &&\
xelatex nuaathesis.dtx &&\
xelatex nuaathesis.dtx &&\
xelatex nuaathesis.dtx

if [ $1 = "all" ]; then
  make -C demo_chs &&\
  make -C demo_en &&\
  make -C demo_ja
fi
