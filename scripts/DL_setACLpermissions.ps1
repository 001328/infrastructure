$ctx = New-AzStorageContext -StorageAccountName '809rgdl' -UseConnectedAccount
$filesystemName = "809rgdlfs"
$dirname = "blubb/"
$userID = "24f06d41-b39b-4aa9-97bb-076201bd8ba9";
$permission = "r-x";
$acl = Set-AzDataLakeGen2ItemAclObject -AccessControlType user -EntityId $userID -Permission $permission
Update-AzDataLakeGen2AclRecursive -Context $ctx -FileSystem $filesystemName -Path $dirname -Acl $acl