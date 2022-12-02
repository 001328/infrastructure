$group = "d6cc2eb7-50d8-4a3d-bb6b-77054f7a6096";
$ctx = New-AzStorageContext -StorageAccountName '1117rgdl' -UseConnectedAccount
$filesystemName = "1117rgdlfs"
$dirname = "test001/"
$entityID = $group;
$permission = "rw-";
$acl = Set-AzDataLakeGen2ItemAclObject -AccessControlType user -EntityId $entityID -Permission $permission
Update-AzDataLakeGen2AclRecursive -Context $ctx -FileSystem $filesystemName -Path $dirname -Acl $acl