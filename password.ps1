#$USERS = import-csv -path c:\test\users.csv 

$USERS|Foreach{
Set-ADAccountPassword -Identity $_.samAccountName -NewPassword (ConvertTo-SecureString $_."Password" -AsPlainText -Force)  -Reset}



