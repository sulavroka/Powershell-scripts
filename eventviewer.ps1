#get user event
Get-EventLog -Log System | Where {$_.UserName -ne$null} |  Select-Object -Property Timegenerated, Username, EventID
