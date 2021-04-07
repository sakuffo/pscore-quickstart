# Test a web api

Invoke-RestMethod 'http://feed.nashownotes.com/rss.xml'

$shows = Invoke-RestMethod 'http://feed.nashownotes.com/rss.xml'
$shows 

$shows | Get-Member
$shows | Select-Object -Property title, pubDate, author

# $co = Import-Csv './Demo/Company.csv'
# $co

# $co | Format-Table

# $co | ConvertTo-Json | Out-file 'Company.json' -Force

# $co | Get-Member

# $coShort = $co | Select-Object -Property H1, 'Price Change' | Sort-Object -Property H1, 'Price Change'
# $coShort

$files = Get-ChildItem
$files | Get-Member
$newfiles = $files | Select-Object -Property Name, Length | Sort-Object -Property Length, Name
$newfiles


$newfiles | Get-Member