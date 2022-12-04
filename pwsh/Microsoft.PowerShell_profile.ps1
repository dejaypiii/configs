function Set-DjpGitPatch { git add --patch }
Set-Alias -Name gap -Value Set-DjpGitPatch

# currently not using ohmyposh
# oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\gruvbox.omp.json" | Invoke-Expression
# oh-my-posh init pwsh --config "~/.catppuccin-frappe-fake.omp.json" | Invoke-Expression
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\agnoster.minimal.omp.json" | Invoke-Expression

