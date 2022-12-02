$ctx = New-AzStorageContext -StorageAccountName '1117rgdl' -UseConnectedAccount
$filesystemName = "1117rgdlfs"
$dirname = "test001/"
$entityID = az ad group show --group "Producer001" --query 'id';
$permission = "rw-";
$acl = Set-AzDataLakeGen2ItemAclObject -AccessControlType user -EntityId $entityID -Permission $permission
Update-AzDataLakeGen2AclRecursive -Context $ctx -FileSystem $filesystemName -Path $dirname -Acl $acl