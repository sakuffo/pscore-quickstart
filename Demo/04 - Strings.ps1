# String Quoting
Clear-Host
"This is a string"
'This is a string too!'

# Here Strings - for large blocks of text
Clear-Host
$heretext = @"
Some text here
Some more here
      a bit more
a blank line above
"@

$heretext


Clear-Host
$moreheretext = @'
Some text here
Some more here
      a bit more
a blank line above
'@

$moreheretext 

# Without here strings
$sql = 'SELECT col1' `
     + '     , col2' `
     + '     , col3' `
     + '  FROM sometable' `
     + ' WHERE col1 = ''a value'' '
$sql

# With Here strings
$sql = @'
SELECT col1
     , col2
     , col3
  FROM sometable
 WHERE col1 = 'a value'
'@

$sql

$items = (Get-ChildItem).Count

$loc = Get-Location

# Double quotes interpolate the values. Single quotes do not
"There are $items items are in the folder $loc"
'There are $items items are in the folder $loc'

# Using Double quotes fires up the string inter engine. Don't use double unless you need string

#Same with escapes
# Tab
"`tThis is tabbed in"
'`tThis is tabbed in'