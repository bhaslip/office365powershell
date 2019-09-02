$users = import-csv "C:\users\Bryan Haslip\book2.csv" -delimiter ","
foreach ($user in $users)
{
    $upn=$user.UserPrincipalName
    $usagelocation=$user.usagelocation 
    $SKU=$user.SKU
    Set-MsolUser -UserPrincipalName $upn -UsageLocation $usagelocation
    Set-MsolUserLicense -UserPrincipalName $upn -AddLicenses $SKU
} 