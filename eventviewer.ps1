#get user event
Get-EventLog -Log System | Where {$_.UserName -ne$null} |  Select-Object -Property Timegenerated, Username, EventID

#user event with event id 
#https://docs.microsoft.com/en-us/windows-server/identity/ad-ds/plan/appendix-l--events-to-monitor
Get-EventLog -Log System | Where {$_.username -eq "antal\troka" -and $_.eventid -eq 7045 } |  Select-Object -Property Timegenerated, Username, EventID

#https://community.spiceworks.com/topic/598706-parsing-the-message-field-in-security-event-log-to-pull-the-username
#https://social.technet.microsoft.com/Forums/lync/en-US/4f6815f1-2998-484c-a423-fe6507f1548c/powershell-script-to-fetch-logonlogoff-user-on-particular-server-getwinevent-geteventlog?forum=winserverpowershell
#research message details
get-eventlog -logname Security -newest 10| Select-Object -Property *

