# get ad-computer ip address
Get-ADComputer -Filter 'Name -like "uk-0986*"' -Properties IPv4Address | select-object -property *

# AD Computer Name
Get-ADComputer -Filter 'Name -like "uk-0986*"' -Properties IPv4Address | FT Name

# Get-Adusername of the ad-computername
(Get-WmiObject -Class win32_process -Computername 'uk-0986' | where-object name -Match explorer).getowner() | ft User

