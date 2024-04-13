$Env:YAZI_FILE_ONE = "C:Program Files\Git\usr\bin\file.exe"

Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+t' -PSReadlineChordReverseHistory 'Ctrl+r'
Invoke-Expression (& 'C:\Users\ojii3\scoop\shims\starship.exe' init powershell --print-full-init | Out-String)
