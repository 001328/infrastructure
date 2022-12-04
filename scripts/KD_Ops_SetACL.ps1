param(
    [string]$group,
    [string]$permission,
    [string]$resource,
    [string]$container,
    [string]$folder 
)
$groupId = az ad group show --group $group --query "id"
$ctx = New-AzStorageContext -StorageAccountName $resource -UseConnectedAccount;
$acl = Set-AzDataLakeGen2ItemAclObject -AccessControlType user -EntityId $groupId -Permission $permission;
Update-AzDataLakeGen2AclRecursive -Context $ctx -FileSystem $container -Path $folder -Acl $acl