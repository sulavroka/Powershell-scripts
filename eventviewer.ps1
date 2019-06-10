#get user event
Get-EventLog -Log System | Where {$_.UserName -ne$null} |  Select-Object -Property Timegenerated, Username, EventID

#user event with event id 
#https://docs.microsoft.com/en-us/windows-server/identity/ad-ds/plan/appendix-l--events-to-monitor
Get-EventLog -Log System | Where {$_.username -eq "antal\troka" -and $_.eventid -eq 7045 } |  Select-Object -Property Timegenerated, Username, EventID
