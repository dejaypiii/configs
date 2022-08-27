function Set-DjpGitPatch { git add --patch }
Set-Alias -Name gap -Value Set-DjpGitPatch

oh-my-posh init pwsh | Invoke-Expression
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\paradox.omp.json" | Invoke-Expression
