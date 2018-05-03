#!/bin/sh

# install Times New Roman fonts without root privilege

test -d msfonts || mkdir msfonts
test -d $HOME/.fonts || mkdir $HOME/.fonts

cd msfonts
curl -fsSL -o times32.exe https://downloads.sourceforge.net/project/corefonts/the%20fonts/final/times32.exe
curl -fsSL -o courie32.exe https://downloads.sourceforge.net/project/corefonts/the%20fonts/final/courie32.exe
cabextract *.exe
cp * $HOME/.fonts/  # font name ends in 'ttf' 'TTF'... no idea but copy everything

fc-cache -fv
