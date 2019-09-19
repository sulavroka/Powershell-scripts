#Get entire Acl history
get-childitem "C:\" -recurse | get-acl | Format-List | Out-File "c:\users\sample.txt"
