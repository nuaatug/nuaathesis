# expected working directory: .\.ci

# accepted arguments:
param (
	[string]$tldir = 'C:\texlive'
)

# install Chinese Simplified fonts
Set-Service BITS -StartupType Automatic
Set-Service wuauserv -StartupType Automatic
Start-Service BITS
Start-Service wuauserv
Import-Module Dism
Get-WindowsCapability -Online | where { $_.Name -match "Font" -and $_.Name -match "Hans" } | Add-WindowsCapability -Online

# if not cached, install texlive
if ((Get-Command "tlmgr" -ErrorAction SilentlyContinue) -eq $null) {
	curl.exe -fsSL -o install-tl.zip "http://mirror.ctan.org/systems/texlive/tlnet/install-tl.zip"
	7z.exe x install-tl.zip -y
	Remove-Item install-tl.zip
	Remove-Item -Path "$tldir" -recurse
	mkdir -Force "$tldir"
	copy .\texlive-windows.profile "$tldir\texlive.profile"
	dir | where { $_ -match "$install-tl" -and $_ -notmatch "install-tl.zip" } | Rename-Item -NewName "..\.install-tl"
	..\.install-tl\install-tl-windows.bat -profile "$tldir\texlive.profile"
	Remove-Item -Path "..\.install-tl" -recurse
}

# update texlive
tlmgr install (Get-Content .\texlive.pkgs | where { $_ -notmatch "(^\s*#)|(^\s*$)" })
tlmgr update --all
tlmgr update --all
