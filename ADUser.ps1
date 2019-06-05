#Query user name with Apostrophe
$readvalue = "William O'Brian"
(Get-ADUser -Filter "Name -eq `$readvalue" -Properties *).SamaccountName

#get ou of the user
 get-aduser Tnikov| Select-Object -Property  DistinguishedName
