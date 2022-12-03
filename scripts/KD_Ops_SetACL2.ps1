$group = 'Consumer001'
$groupId = az ad group show --group $group --query 'id'
$groupId
$ctx = New-AzStorageContext -StorageAccountName '1117rgdl' -UseConnectedAccount
'ctx'
$ctx
$filesystemName = "1117rgdlfs"
$dirname = "test1328/"
$permission = "rw-"
$groupId
$acl = Set-AzDataLakeGen2ItemAclObject -AccessControlType group -EntityId 'ab578e32-d505-440b-861f-316492f06dcb' -Permission $permission
#'acl'
#$acl
#Update-AzDataLakeGen2AclRecursive -Context $ctx -FileSystem $filesystemName -Path $dirname -Acl $acl
#$acl = Set-AzDataLakeGen2ItemAclObject -AccessControlType group -Permission $permission -EntityID=$entityId
Update-AzDataLakeGen2Item -ACL $acl -Context $ctx -FileSystem $filesystemName -Path $dirname