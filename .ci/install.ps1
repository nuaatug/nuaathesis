tlmgr install (Get-Content .\texlive.pkgs | where { $_ -notmatch "(^\s*#)|(^\s*$)" })
