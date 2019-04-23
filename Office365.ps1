#Connect powershell to office 365
Install-Module -Name AzureAD
Connect-AzureAD



#Run these commands to connect to Exchange Online.
$exchangeSession = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri "https://outlook.office365.com/powershell-liveid/" -Credential $credential -Authentication "Basic" -AllowRedirection
Import-PSSession $exchangeSession -DisableNameChecking
