#Query user name with Apostrophe
$readvalue = "William O'Brian"
(Get-ADUser -Filter "Name -eq `$readvalue" -Properties *).SamaccountName

#get ou of the user
 get-aduser Tnikov| Select-Object -Property  DistinguishedName
 
 #get aduser created gt than 
 get-aduser -Filter * -properties whencreated | where{$_.whenCreated -ge (get-date "January 1, 2019")}| FT Name ,whencreated,distinguishedname

