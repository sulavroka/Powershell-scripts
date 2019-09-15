#Variables to store your stuff
#Assigning a variable
$hello =2 
${hello} = "Hello"

#Output a Variable 
$hello
${hello}

write-output $hello

#Strongly type variable
[String] $MyName = "sulav"
[int] $Oops = "Opps"
[string] $ComputerName = Read-host "Enter Computer Name"
Write-Output $ComputerName

#types
# $hello = "02/03/1995"
#[datetime]$d = $hello
# $d.dayoftheweek

#Resolving Variables
$hello = "wow"

"i cant believe this is $hello"
'i cant believe this is $hello'

#variable are like array
#for example $hello = get-service
#$hello[0]

#here string basically subexpression like in haskell  2+2 "2 + 2" $("2+2") 
#putting arugments on the paratmeters just like pipes
Get-service -name bits -ComputerName (Get-Content c:\computers.txt)

# Ctrl + c to break the command 
PowerShell will actually treat any comma-separated list as an array:

"server1","server2"
So the @ is optional in those cases. However, for associative arrays, the @ is required:

@{"Key"="Value";"Key2"="Value2"}
Officially, @ is the "array operator."

