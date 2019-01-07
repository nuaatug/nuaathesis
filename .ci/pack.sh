#!/bin/bash

# This script packs files for end user, who can starts writing thesis right away.
# Only includes essential files and compiled results.

# This script should run under the root of repo
if [ ! -e .ci ]; then
    echo "Please run under the repo root" 1>&2
    exit 1;
fi

TEMP_ROOT=$(mktemp -d || echo .pack)
DIR_NAME=nuaathesis-$(git rev-parse --short HEAD || echo unknown)
TEMP_DIR="$TEMP_ROOT"/"$DIR_NAME"

mkdir -p "$TEMP_DIR"
git --git-dir=${PWD}/.git -C "$TEMP_DIR" reset --hard

# copy compiled results
cp ${PWD}/nuaathesis.cls "$TEMP_DIR"
find . -not -path '*/\.*' -type f \( -name '*.pdf' \) -exec cp --parents '{}' $TEMP_DIR \;
find "$TEMP_DIR" -type d \( -name 'demo_*' \) -exec make -C '{}' prepare \;

# replace .gitignore
rm "$TEMP_DIR"/.gitignore
curl -o "$TEMP_DIR"/.gitignore https://raw.githubusercontent.com/github/gitignore/master/TeX.gitignore

# pack
tar czf "$DIR_NAME".tar.gz --directory="$TEMP_ROOT" "$DIR_NAME"
7z a "$DIR_NAME".zip "$TEMP_DIR"

# clean up
rm -rf "$TEMP_ROOT"
