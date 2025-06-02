echo "[SCOOP] Installing..."

Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression

scoop update

scoop bucket add extras
scoop bucket add java

scoop install git 7zip which ripgrep aria2 cacert curl wget cmder cmake ninja difftastic gcloud
scoop install mpv neovim temurin-lts-jdk kdiff3 keepassxc foobar2000 gitextensions gimp inkscape go hxd vlc ffmpeg-shared sysinternals protobuf

scoop update *
scoop cleanup *

echo "[SCOOP] Done."
