$USERS|Foreach{
Set-ADUSer -Identity $_.samaccountname -Clear ProxyAddresses}