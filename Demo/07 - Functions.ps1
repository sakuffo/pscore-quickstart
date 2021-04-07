#Function
function Get-AValue($one, $two) {
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
    [Parameter(
      Mandatory = $true, 
      HelpMessage = "Please enter value one"
      )][int] $one,
    [Parameter(
      Mandatory = $false, 
      HelpMessage = "Please enter value two"
      )][int] $two = 42
  )

  begin {}

  process {
    return $one * $two
  }

  end {}
}

# Pass in both values
Get-BValue -one 33 -two 42

Get-BValue -one 33 

Get-BValue

# Get-BValue -one "x"

function Get-PSFiles () {

  [CmdletBinding()]
  param (
    [Parameter (ValueFromPipeline)]
    $file,
    [Parameter(
      Mandatory = $false, 
      HelpMessage = "Please enter value two"
      )][int] $two = 42
  )

  begin {}
  
  process {
    if ($file.Name -like "*.ps1")
    {
      $retval = "`tPowershell file is $($file.Name) also, the answer is $two"
      $retval # last value with nothing else is like return $retval
    }
  }

  end {}
  
}


$output = Get-ChildItem | Get-PSFiles
$output.GetType()

$output

function Get-AName () {

  [CmdletBinding()]
  param (
    [Parameter (ValueFromPipelineByPropertyName)]
    $Name
  )

  begin {}
  
  process {
    $retval = "`tYou passed in $Name"
    return $retval
  }

  end {} 
  
}

Get-ChildItem | Get-AName
Get-Process | Get-AName

function Show-BName () {
  [CmdletBinding()]
  param (
    [Parameter (ValueFromPipelineByPropertyName)]
    $Name
  )

  begin { Write-Host 'Here are the names!' -ForegroundColor Green }

  process {
    Write-Host "`tYou passed in " -ForegroundColor White -NoNewline
    Write-Host $Name -ForegroundColor Yellow
  }
  
  end { Write-Host 'Those were the names you passed in' -ForegroundColor Green }
}

Get-ChildItem | Show-BName
Get-Process | Show-BName