#!/bin/sh

# Q: Why exists this file?
# A: To match the document, we have `build.bat` for Windows without MinGW,
# and `build.sh` for others, even if an alias to make.

make all
