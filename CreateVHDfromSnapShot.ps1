Select-AzureRmSubscription -SubscriptionId f59f7fee-9218-4c26-b9d8-afca88acdb52

$snapshot = Get-AzureRmSnapshot -ResourceGroupName VirtualMachines -SnapshotName AnswerFileHDD 
 
$diskConfig = New-AzureRmDiskConfig -AccountType Premium_LRS -Location WestUS2 -CreateOption Copy -SourceResourceId $snapshot.Id
 
New-AzureRmDisk -Disk $diskConfig -ResourceGroupName VirtualMachines -DiskName AnswerFileVHD