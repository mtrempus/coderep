import-csv -path c:\test\createusers.csv | foreach {
 
$givenName = $_.name.split()[0] 
$surname = $_.name.split()[1]
 
new-aduser -path “OU=m2users,dc=m2servicegroup,dc=com” -displayname $_.name -name $_.name -enabled $true –givenName $givenName –surname $surname -accountpassword (convertto-securestring $_.password -asplaintext -force) -changepasswordatlogon $false -samaccountname $_.samaccountname –userprincipalname ($_.samaccountname+”@m2servicegroup.com”) -emailaddress $_.email}