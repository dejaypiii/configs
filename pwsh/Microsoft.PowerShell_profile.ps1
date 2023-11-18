oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/gruvbox.omp.json" | Invoke-Expression

$env:Path += ';C:\Program Files\LLVM\bin'
$env:Path += ';C:\msys64\ucrt64\bin'
$env:Path += ';D:\dev\tools\bin'
$env:Path += ';D:\dev\tools\zig'
$env:Path += ';D:\dev\tools\vcpkg'

$env:VCPKG_ROOT = "D:\dev\tools\vcpkg"

function Goto-Dev { Set-Location "D:/dev" }
Set-Alias dev Goto-Dev
