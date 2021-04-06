$hi = "Hello World"
$hi

Write-Host $hi

$hi.GetType()

$hi | Get-Member

$hi.ToUpper()
$hi.ToLower()
$hi.Length


# Type are mutable
Clear-Host
$hi = 5
$hi.GetType()

# Types CAN be strongly typed
Clear-Host
[System.Int32]$myint = 42
$myint
$myint.GetType()

# $myint = "This won't work"

# There are shortcuts for most .net types
Clear-Host
[int] $myotherint = 42
$myotherint.GetType()


[string] $mystring = "Powershell"
$mystring.GetType()

# Comparisons

$var = 33

$var -gt 30
$var -lt 30
$var -eq 33

# Most commonly used comparison operators:
# 


# Type coertions
# the left side is the type that coertion happens
42 -eq '42'
'42' -eq 42
42 -eq '042'
'042' -eq '42'

#
$pwd

# Boolean
$true
$true


# Null
$null

$PSVersionTable

$PSVersionTable.PSVersion