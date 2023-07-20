$USERS|Foreach{
Set-ADUSer -Identity $_.samaccountname -emailaddress $_.email}