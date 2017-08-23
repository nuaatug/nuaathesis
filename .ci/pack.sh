#!/bin/bash

# This script packs files for end user, who can starts writing thesis right away.
# To make user easy to start up, the pack should be as small as possible.

TMP_DIR=$(realpath .pack/nuaathesis)

mkdir -p $TMP_DIR
cp -r .git $TMP_DIR
(cd $TMP_DIR && git reset --hard && git clean -Xf && rm -rf .*)

cp *.cls $TMP_DIR
cp *.cfg $TMP_DIR
cp *.pdf $TMP_DIR
curl -o $TMP_DIR/.gitignore https://raw.githubusercontent.com/github/gitignore/master/TeX.gitignore
7z a nuaathesis.zip $TMP_DIR
rm -rf $TMP_DIR
