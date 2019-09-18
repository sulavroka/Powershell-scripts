#Set autoreply
Set-MailboxAutoReplyConfiguration -Identity blha@blah.uk -AutoReplyState Enabled -InternalMessage "test" -ExternalMessage "test"
