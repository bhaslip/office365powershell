$credential = Get-Credential
Connect-MsolService -Credential $credential
$ADUser = "username" 
$365User = "username@emaildomainname.com"
$guid =(Get-ADUser $ADUser).Objectguid
$immutableID=[system.convert]::ToBase64String($guid.tobytearray())
Set-MsolUser -UserPrincipalName "$365User" -ImmutableId $immutableID