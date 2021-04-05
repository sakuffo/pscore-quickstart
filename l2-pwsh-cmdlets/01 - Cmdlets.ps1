# Command let structure
# Get-* indicates the verb and *-Command, indicates the noun

Get-Command

# Update-help will download the help data/files for the commands
Update-Help -ErrorAction SilentlyContinue

# opens a man page for get-command
Get-Help Get-Command

# opens the full documentation for Get-Command
Get-Help Get-Command -Full

# opens the online page for the Get-Command
Get-Help Get-Command -Online

#Alias
# cmd.exe dir
dir

# clear screen
cls

#linux list dir
ls

# depending on which os you are you are going to have differnet things be aliased
# 

Get-Alias dir

Get-Alias ls

Get-Alias -Definition Get-ChildItem

Get-Alias

Set-Location "$pwd/l2-pwsh-cmdlets"


Get-ChildItem

#Method 1
Get-ChildItem | Where-Object {$_.Length -gt 4kb }

#Method 2
Get-ChildItem | Where-Object -Property Length -gt -Value 4kb

#Method 3
Get-ChildItem | Where-Object Length -gt 4kb

# Adding to the pipeline
Get-ChildItem | Where-Object Length -gt 4kb | Sort-Object Length

# Wrapping Lines on the pipeline - pipe must be last character on the line
Get-ChildItem |
  Where-Object { $_.Length -gt 4kb } |
  Sort-Object Length