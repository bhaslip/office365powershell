Get-Content C:\Users\Bryan Haslip\Book3.csv | ForEach-Object {
	Remove-MsolUser -UserPrincipalName $_ -Force
	Remove-MsolUser -UserPrincipalName $_ -RemoveFromRecycleBin -F
}