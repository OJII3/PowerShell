$Env:YAZI_FILE_ONE = "C:Program Files\Git\usr\bin\file.exe"

# replace 'Ctrl+t' and 'Ctrl+r' with your preferred bindings:
# Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+t' -PSReadlineChordReverseHistory 'Ctrl+r'

Invoke-Expression (& 'C:\Users\ojii3\scoop\shims\starship.exe' init powershell --print-full-init | Out-String)

New-Alias g git

#f45873b3-b655-43a6-b217-97c00aa0db58 PowerToys CommandNotFound module

Import-Module -Name Microsoft.WinGet.CommandNotFound
#f45873b3-b655-43a6-b217-97c00aa0db58

function ghq-fzf {
  $repo = $(ghq list | fzf)
  Set-Location ( Join-Path $(ghq root) $repo)
}

Set-PSReadLineKeyHandler -Chord Ctrl+] -ScriptBlock { 
  ghq-fzf
  [Microsoft.PowerShell.PSConsoleReadLine]::AcceptLine() 
}
