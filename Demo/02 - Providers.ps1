# Capure the current directory so we can restore it later
$dir = $pwd


#List default Providers
Clear-Host
Get-PSProvider

# Now show these providers equate to drives we can navigate
Clear-Host
Get-PSDrive

# Move to the ENV (environment-variable drive)
Clear-Host
Set-Location env:
Get-ChildItem

# Now move to the provider for variables
Clear-Host
Set-Location variable:
Get-ChildItem

Set-Location $dir