#tutorial about param block/parameterised script more info https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_functions_advanced_parameters?view=powershell-6
[String] $ComputerName = 'Client'
[String] $Drive= 'C: '

Get-WmiObject -class Win32_logicalDisk -Filter "DeviceID '$Drive'" -ComputerName $ComputerName 

#Creating Param block so that when you run it on the console it will display ComputerName and Drive 
param(
  [String] $ComputerName = 'Client'
  [String] $Drive= 'C: '
)

Get-WmiObject -class Win32_logicalDisk -Filter "DeviceID '$Drive'" -ComputerName $ComputerName 

#Generally speaking, CmdletBinding is what make a function from an Advanced function. 
#Putting it at the top of a script makes the script "advanced" script. 
#Functions and scripts are much the same, where a the script file name is equivalent to the function name and the script content is equivalent to the scripblock section of a function.
[CmdletBinding()]
param(
  [String] $ComputerName = 'Client'
  [String] $Drive= 'C: '
)

Get-WmiObject -class Win32_logicalDisk -Filter "DeviceID '$Drive'" -ComputerName $ComputerName 

#creating function
function t{
  [CmdletBinding()]
  param(
    [String] $ComputerName = 'Client'
    [String] $Drive= 'C: '
  )

  Get-WmiObject -class Win32_logicalDisk -Filter "DeviceID '$Drive'" -ComputerName $ComputerName 

}
# run the script dot source ..\powershelltut.ps1 and then type t

function t{
  [CmdletBinding()]
  param(
  #makes $Computername mandatory
    [Parameter(Mandatory=$true)]
    [String] $ComputerName = 'Client',
    [String] $Drive= 'C: '
  )

  Get-WmiObject -class Win32_logicalDisk -Filter "DeviceID '$Drive'" -ComputerName $ComputerName 

}
