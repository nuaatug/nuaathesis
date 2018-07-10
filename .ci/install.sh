#!/bin/bash
tlmgr install $(cat ./texlive.pkgs | awk '$1 ~ /^[^;#]/' | tr '\r\n' ' ')
