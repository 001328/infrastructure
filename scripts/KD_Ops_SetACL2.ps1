$group = "Consumer001"
$groupId = az ad group show --group $group --query "id"
$ctx = New-AzStorageContext -StorageAccountName "1117rgdl" -UseConnectedAccount
$filesystemName = "1117rgdlfs"
$dirname = "test001/"
$permission = "rw-"
$groupId
$acl = Set-AzDataLakeGen2ItemAclObject -AccessControlType group -EntityId $groupId.Replace("`"","") -Permission $permission
Update-AzDataLakeGen2Item -FileSystem $container -Path $folder -Acl $acl -Context $ctx