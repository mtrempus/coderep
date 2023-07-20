$USERS|Foreach{
Set-ADUSer -Identity $_.samaccountname -add @{proxyaddresses ="SMTP:"+$_.email}}