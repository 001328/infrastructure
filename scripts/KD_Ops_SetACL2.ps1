$group = 'Producer001'
$groupId = az ad group show --group $group --query 'id'
$groupId
'whatever'
$ctx = New-AzStorageContext -StorageAccountName '1117rgdl' -UseConnectedAccount
$ctx
$filesystemName = "1117rgdlfs"
$dirname = "test1328/"
$entityID = $groupId
$permission = "rw-"
$acl = Set-AzDataLakeGen2ItemAclObject -AccessControlType user -EntityId $entityID -Permission $permission
Update-AzDataLakeGen2AclRecursive -Context $ctx -FileSystem $filesystemName -Path $dirname -Acl $acl