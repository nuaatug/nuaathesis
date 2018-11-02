#!/bin/bash

# This script expects current working dir to be the root of repo.

# This script packs files for end user, who can starts writing thesis right away.
# To make user easy to start up, the pack should be as small as possible.

TMP_DIR_REL=.pack/nuaathesis
rm -rf $TMP_DIR
mkdir -p $TMP_DIR_REL
TMP_DIR=$(realpath $TMP_DIR_REL)

cp -r .git $TMP_DIR
(cd $TMP_DIR && git reset --hard && git clean -Xf && rm -rf .* || true)
cp -r .ci $TMP_DIR

find . -not -path '*/\.*' -type f \( -name '*.pdf' -o -name '*.cls' -o -name '*.bst' \) -exec cp --parents '{}' $TMP_DIR \;
# curl -o $TMP_DIR/.gitignore https://raw.githubusercontent.com/github/gitignore/master/TeX.gitignore
# 7z a nuaathesis.zip $TMP_DIR
(cd .pack && tar cf ../nuaathesis.tar.gz nuaathesis)
(cd .pack && 7z a ../nuaathesis.zip nuaathesis)
