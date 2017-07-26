This folder contains codes and configs for CI builders.

Currently AppVeyor(win32) and Travis(Linux, OSX) are configured, see `.appveyor.yml` and `.travis.yml` in repo root for details.

## Routine

- install texlive
  1. download latest texlive net installer;
  2. load platform-dependent config from `texlive-*.profile`, rewrite with environment variable `$HOME`, and save to `texlive.profile`;
  3. install texlive scheme-basic with generated `texlive.profile`;
  4. install platform-independent packages from `texlive.pkgs` with `tlmgr`;

- build tex document

## Note

- for Linux and OSX, texlive is installed to `$HOME/texlive/bin/x86_64-*`;
- for Windows, texlive is installed to `C:\texlive\bin\win32`;
