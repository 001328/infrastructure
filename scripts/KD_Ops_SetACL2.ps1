param(
    [string]$resource,
    [string]$container,
    [string]$folder,
    [string]$group,
    [string]$permission
)
$ctx = New-AzStorageContext -StorageAccountName $resource --auth-mode login;
$groupId = az ad group show --group $group --query 'id';
$acl = Set-AzDataLakeGen2ItemAclObject -AccessControlType user -EntityId $groupId -Permission $permission;
Update-AzDataLakeGen2AclRecursive -Context $ctx -FileSystem $container -Path $folder -Acl $acl