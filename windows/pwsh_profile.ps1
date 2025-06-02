if ($host.Name -eq 'ConsoleHost')
{
    Import-Module PSReadLine
    Set-PSReadLineOption -PredictionSource History
    Set-PSReadLineOption -PredictionViewStyle ListView
}
Import-Module -Name Terminal-Icons
oh-my-posh --init --shell pwsh --config "$(scoop prefix oh-my-posh)\themes\powerlevel10k_lean.omp.json" | Invoke-Expression

function scoop_update {
    Push-Location "$env:SCOOP\buckets\"
    scoop update *
    scoop cleanup *
    Pop-Location
}

function repo_fetch {
    Push-Location "C:\Repos\"
    Get-ChildItem | 
        Where-Object {$_.PsIsContainer -eq $True} |
        Where-Object { Test-Path -Path "$_\.git\"} |
        ForEach-Object {
            Write-Host "Entering " -NoNewLine -ForegroundColor DarkGreen
            Write-Host "$_ ..."
            Push-Location $_
            git fetch --all
            Pop-Location
        }
    Pop-Location
}
