# Define the valid values for the enum
Enum MyTwitters
{
  Sakuffo
  saku
  stephen
}

# Get the list of names out of the thing
[MyTwitters].GetEnumNames()

# The double colons the last one triggers intellisense
$tweet = [MyTwitters]::Sakuffo
$tweet 

# See if something valid was picked
[enum]::IsDefined(([MyTwitters]), $tweet)

# See if something valid was picked
$tweet = 'Invalid'
[enum]::IsDefined(([MyTwitters]), $tweet)

Enum MyColors
{
  Red = 1
  Blue = 2
  Green = 3
}

# This retrives the Names
[MyColors].GetEnumNames()

# This, non intuitively, does NOT retrive the names
[MyColors].GetEnumValues()

# But when you assign a vlue to a label, it's value is returned
[MyColors]::Green -eq 3

# You can assign the same value to several enums if you need to
Enum Folks {
  Adam = 1
  Kofi = 1
  Jojo = 2
  Alma = 2
  Hyder = 3
  Afia = 3
  Jack = 3
}

# All True
[Folks]::Adam -eq 1
[Folks]::Kofi -eq 1
[Folks]::Adam -eq [Folks]::Kofi  

Class Twitterer {
  # Create a property
  [string]$TwitterHandle

  # Create a property and set a default value
  [string]$Name = 'Stephen Akuffo'

  # Function that returns a string
  [string] TwitterURL() {
    $url = "https://twitter.com/$($this.TwitterHandle)"
    return $url
  }

  [void] OpenTwitter() {
    Start-Process $this.TwitterURL()
  }
}

$twit = [Twitterer]::new()
$twit.TwitterHandle = "AkuffoGeekery"
$twit.TwitterHandle

$twit.Name

$twit.Name = 'Mr Geekery'
$twit.Name

$twit.TwitterURL()


# Twitter Redux
class TwitterRedux{
  
  # Default Constructor
  TwitterRedux () { }

  # Constructor passing in Twitter Handle
  TwitterRedux ([string]$TwitterHandle) {
    $this.TwitterHandle = $TwitterHandle
  }

  # Constructor passing in Twitter Handle and the name
  TwitterRedux ([string]$TwitterHandle, [string]$Name) {
    $this.TwitterHandle = $TwitterHandle
    $this.Name = $Name
  }

  # Properties
  [string]$TwitterHandle
  [string]$Name = "Stephen Akuffo"
  # Static Property
  static [string] $Version = '2021.04.06.001'

  [string] TwitterURL(){
    $url = $this.TwitterURL($this.TwitterHandle)

    return $url
  }

  [string] TwitterURL($twitterHandle) {
    $url = "http://twitter.com/$($twitterHandle)"
    return $url
  }

  [void] OpenTwitter() {
    Start-Process $this.TwitterURL()
  }

  static [void] OpenTwitterPage([string] $TwitterHandle) {
    $url = "http://twitter.com/$($TwitterHandle)"
    Start-Process $url
  }
}

$twitDefault = [TwitterRedux]::new()
"TwitterHandle = $($twitDefault.TwitterHandle)"

$twitDefault.TwitterHandle = 'AkuffoGeekery'
"TwitterHandle = $($twitDefault.TwitterHandle)"

"URL = $($twitDefault.TwitterURL())"

"URL = $($twitDefault.TwitterURL('sakuffo'))"

$twitAdvanced = [TwitterRedux]::new('AkuffoGeekery')
"TwitterHandle = $($twitAdvanced.TwitterHandle)"

$twitAdvanced2 = [TwitterRedux]::new('AkuffoGeekery', 'S Akuffo')
$twitAdvanced2.TwitterHandle
$twitAdvanced2.Name

[TwitterRedux]::Version
[TwitterRedux]::OpenTwitterPage('AkuffoGeekery')
