#Set autoreply
Set-MailboxAutoReplyConfiguration -Identity blha@blah.uk -AutoReplyState Enabled -InternalMessage "test" -ExternalMessage "test"

#get mailbox permission user is assaigned to 
Get-Mailbox | Get-MailboxPermission -User papajones | select-object -property *


Set-RemoteMailbox User -EmailAddresses PrimarySMTPaddress  -EmailAddressPolicyEnabled $false

