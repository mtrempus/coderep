##$USERS = import-csv -path c:\scripts\users.csv

$USERS|Foreach{
Set-ADUSer -Identity $_.samaccountname -userprincipalname $_.userprincipalname}