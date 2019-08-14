# $_ tutorial is an alias for automatic variable $PSItem. $_ is a variable created by the system usually inside block expressions that are referenced by cmdlets that are used with pipe such as Where-Object and ForEach-Object.

# But it can be used also in other types of expressions, for example with Select-Object combined with expression properties. Get-ChildItem | Select-Object @{Name="Name";Expression={$_.Name}}. In this case the $_ represents the item being piped but multiple expressions can exist.


1,2,3 | %{ write-host $_ } 

1,2,3 | ForEach-Object {Write-Host $_} 
# prints 1 2 3

1,2,3 | Where-Object {$_ -gt 1}
# prints 2 3

