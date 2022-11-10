$ctx = New-AzStorageContext -StorageAccountName '809rgdl' -UseConnectedAccount
$filesystemName = "809rgdlfs"
$dirname = "test1328/"
$entityID = "82f15ac5-8c5f-4e45-987f-fa1686da3a36";
$permission = "rw-";
$acl = Set-AzDataLakeGen2ItemAclObject -AccessControlType user -EntityId $entityID -Permission $permission
Update-AzDataLakeGen2AclRecursive -Context $ctx -FileSystem $filesystemName -Path $dirname -Acl $acl