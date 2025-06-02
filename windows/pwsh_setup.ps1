echo "[PWSH] Configuring..."

Install-Module PowerShellGet -Force -AllowClobber
Install-Module -Name Terminal-Icons -Repository PSGallery
Install-Module PSReadLine -Force

cp .\pwsh_profile.ps1 ~\Documents\PowerShell\profile.ps1

echo "[PWSH] Done."
