param(
    [string]$group,
    [string]$permission,
    [string]$resource,
    [string]$container,
    [string]$folder 
)
$groupId = az ad group show --group $group --query "id"
Connect-AzAccount
$ctx = New-AzStorageContext -StorageAccountName $resource -UseConnectedAccount
$dir1 = Get-AzDataLakeGen2Item -FileSystem $container -Path $folder -Context $ctx
$acl = $dir1.ACL
$acl = Set-AzDataLakeGen2ItemAclObject -AccessControlType group -EntityId $groupId.Replace("`"","") -Permission $permission -InputObject $acl
$acl = Set-AzDataLakeGen2ItemAclObject -AccessControlType group -EntityId $groupId.Replace("`"","") -Permission $permission -InputObject $acl -DefaultScope
Update-AzDataLakeGen2Item -FileSystem $container -Path $folder -Acl $acl -Context $ctx