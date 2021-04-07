# Simple Array
$array = 'Robert', 'Cain'
$array
$array[0]
$array[1]

$array.GetType()
$array.Count

# Pushing and 
$array += 'Arcane'
$array += 'Code'
$array
$array.Count

# empty

$empty = @()
$empty

$empty += 'Arcane'
$empty += 'Code'
$empty


# Hash Tables
Clear-Host

$hash = @{
  'Key' = 'Value'
  'PowerShell' = 'Powershell.com'
  'Sakuffo' = 'sakuffo.com'
}

$hash

$hash['Powershell']
$hash.PowerShell
$hash.'Sakuffo'

$hash.keys
$hash.values

$empty = @{}
$empty


$empty['Pluralsight']='pluralsight.com'
$empty['DataFabricator']='datafabricator.com'
$empty.Plural = 'plural'
$empty.'Life is hard' = 'very very hard'
$empty