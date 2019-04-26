#Query user name with Apostrophe
$readvalue = "William O'Brian"
(Get-ADUser -Filter "Name -eq `$readvalue" -Properties *).SamaccountName
