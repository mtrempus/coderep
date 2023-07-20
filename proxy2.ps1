$USERS|Foreach{
Set-ADUSer -Identity $_.samaccountname -add @{proxyaddresses ="smtp:"+$_.email2}}