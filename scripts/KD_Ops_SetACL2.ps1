$group = 'Producer001'
$groupId = az ad group show --group $group --query 'id';
$groupId
$ctx = New-AzStorageContext -StorageAccountName '1117rgdl' -UseConnectedAccount