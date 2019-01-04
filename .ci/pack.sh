#!/bin/bash

# This script expects current working dir to be the root of repo.

# This script packs files for end user, who can starts writing thesis right away.
# To make user easy to start up, the pack should be as small as possible.

${TEMP_DIR:=$(mktemp -d || echo .pack)/nuaathesis}

mkdir -p "$TEMP_DIR"
git --git-dir=${PWD}/.git -C "$TEMP_DIR" reset --hard

# copy compiled results
cp ${PWD}/nuaathesis.cls "$TEMP_DIR"
find . -not -path '*/\.*' -type f \( -name '*.pdf' \) -exec cp --parents '{}' $TEMP_DIR \;
find "$TEMP_DIR" -type d \( -name 'demo_*' \) -exec make -C '{}' prepare \;
# curl -o "$TEMP_DIR"/.gitignore https://raw.githubusercontent.com/github/gitignore/master/TeX.gitignore

# pack
tar czf nuaathesis.tar.gz --directory="$TEMP_DIR/.." nuaathesis
7z a nuaathesis.zip "$TEMP_DIR"

# clean up
rm -rf "$TEMP_DIR"
