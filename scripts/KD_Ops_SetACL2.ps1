param(
    [string]$resource,
    [string]$group,
    [string]$permission
)
$groupId = az ad group show --group $group --query 'id';
$ctx = New-AzStorageContext -StorageAccountName $resource -UseConnectedAccount
$filesystemName = "1117rgdlfs"
$dirname = "test001/"
$entityID = $group;
$permission1 = $permission;
$acl = Set-AzDataLakeGen2ItemAclObject -AccessControlType user -EntityId $groupId -Permission $permission1;
Update-AzDataLakeGen2AclRecursive -Context $ctx -FileSystem $filesystemName -Path $dirname -Acl $acl