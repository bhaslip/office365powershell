#Replace with the old suffix
$oldSuffix = 'dig.local'

#Replace with the new suffix
$newSuffix = 'diversifiedinsurance.com'

#Replace with the OU you want to change suffixes for
$ou = "DC=dig,DC=local"

#Replace with the name of your AD server
$server = "DIG-dc1"

Get-ADUser -SearchBase $ou -filter * | ForEach-Object {
$newUpn = $_.UserPrincipalName.Replace($oldSuffix,$newSuffix)
$_ | Set-ADUser -server $server -UserPrincipalName $newUpn
}