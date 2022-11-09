$ctx = New-AzStorageContext -StorageAccountName '809rgdl' -UseConnectedAccount
$filesystemName = "809rgdlfs"
$dirname = "blubb/"
$userID = "82f15ac5-8c5f-4e45-987f-fa1686da3a36";
$permission = "r-x";
$acl = Set-AzDataLakeGen2ItemAclObject -AccessControlType user -EntityId $userID -Permission $permission
Update-AzDataLakeGen2AclRecursive -Context $ctx -FileSystem $filesystemName -Path $dirname -Acl $acl