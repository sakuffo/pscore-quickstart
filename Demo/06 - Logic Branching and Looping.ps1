if ( 1 -eq 1) { exit }

if ( 1 -eq 1)
  { exit } 

if ( 1 -eq 1)
{ exit } 

if ( 1 -eq 1) { 
  exit 
} 

if ( 1 -eq 1)
{ 
  exit 
}

# Semicolon for multi command
$a = 'Hi' ; $b = 'Mom'; "$a $b"

# if/else
$var = 2
if ($var -eq 1)
{
  Clear-Host
  "If Branch"
}
else
{
  Clear-Host
  "else branch"
}

# Switch
Clear-Host
$var = 41
switch ($var) {
  41 { "Forty One" }
  42 { "Forty Two" }
  43 { "Forty Three" }
  44 { "Forty Four" }
  Default { "default" }
}

# Multiple matches possible
Clear-Host
$var = 42
switch ($var) {
  41 { "Forty One"; break }
  42 { "Forty Two"; break }
  '42' { "Forty Two"; break }
  44 { "Forty Four"; break }
  Default { "default"; break }
}

# Multiple matches possible
Clear-Host
$var = 42
switch ($var) {
  41 { "Forty One" }
  42 { "Forty Two" }
  '42' { "Forty Two" }
  44 { "Forty Four" }
  Default { "default" }
}


# Looping

# While
Clear-Host
$i = 1
while ($i -le 5) {
  "`$i = $i"
  $i = $i + 1
}

# Also supported
# do while
Clear-Host
$i = 1
do {
  "`$i = $i"
  $i = $i + 1
} while ($i -le 5) 

# do until
Clear-Host
$i = 1
do {
  "`$i = $i"
  $i = $i + 1
} until ($i -gt 5) 

# for
Clear-Host
for ($f = 0; $f -le 5; $f++ ) {
  "`$f = $f"
}

# foreach
Clear-Host
$array = 11,12,13,14,15
foreach ($item in $array) {
  "`$item = $item"
}

# foreach works with arrays
Clear-Host
foreach ($file in Get-ChildItem) {
  $file.Name
}
