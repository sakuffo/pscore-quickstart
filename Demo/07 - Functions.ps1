#Function
function Get-AValue($one, $two) 
{
  return $one * $two  
}

# To pass not () and no comma
Get-AValue 33 42

# You can place the return value in a variable
$returnValue = Get-AValue 33 42
"Returned value is $returnValue"

# You can also pass them in by the name of the parameter
$returnValue = Get-AValue -one 12 -two 11
"Returned value is $returnValue"

# Order does not matter with passed in by name
$returnValue = Get-AValue -two 12 -one 11
"Returned value is $returnValue"


# Advanced Funtions

function Get-BValue {
  [CmdletBinding()]
  param (
          [Parameter( Mandatory = $true
                      , HelpMessage = "Please enter value one"
            )
          ]
          [int] $one,
          [Parameter( Mandatory = $false
                    , HelpMessage = "Please enter value two"
          )]
          [int] $two = 42
  )
  
}

