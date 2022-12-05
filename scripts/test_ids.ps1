
$resource = '1117rgdl';
$container = '1117rgdlfs';
$folder = 'test001';
$group = 'Producer001';
$permission = 'rwx';
$ctx = New-AzStorageContext -StorageAccountName $resource -UseConnectedAccount;
$groupId = az ad group show --group $group --query 'id';
$acl = Set-AzDataLakeGen2ItemAclObject -AccessControlType user -EntityId $groupId -Permission $permission;
Update-AzDataLakeGen2AclRecursive -Context $ctx -FileSystem $container -Path $folder -Acl $acl


$ctx = New-AzStorageContext -StorageAccountName '1117rgdl' -UseConnectedAccount
$filesystemName = "1117rgdlfs"
$dirname = "test001/"
$entityID = "d6cc2eb7-50d8-4a3d-bb6b-77054f7a6096";
$permission = "rw-";
$acl = Set-AzDataLakeGen2ItemAclObject -AccessControlType user -EntityId $entityID -Permission $permission
Update-AzDataLakeGen2AclRecursive -Context $ctx -FileSystem $filesystemName -Path $dirname -Acl $acl

$ctx = New-AzStorageContext -StorageAccountName '1117rgdl' -UseConnectedAccount
$filesystemName = "1117rgdlfs"
$dirname = "test001/"
$entityID = $groupId;
$permission = "rw-";
$acl = Set-AzDataLakeGen2ItemAclObject -AccessControlType user -EntityId $entityID -Permission $permission
Update-AzDataLakeGen2AclRecursive -Context $ctx -FileSystem $filesystemName -Path $dirname -Acl $acl


$group = 'Producer001'
$groupId = az ad group show --group $group --query 'id'
$groupId
$ctx = New-AzStorageContext -StorageAccountName '1117rgdl' -UseConnectedAccount
$ctx
$filesystemName = "1117rgdlfs"
$dirname = "test001/"
$entityID = $groupId
$permission = "rw-"
$acl = Set-AzDataLakeGen2ItemAclObject -AccessControlType user -EntityId $entityID -Permission $permission
Update-AzDataLakeGen2AclRecursive -Context $ctx -FileSystem $filesystemName -Path $dirname -Acl $acl




------------------------------------------------------------
------------------------------------------------------------
------------------------------------------------------------
------------------------------------------------------------
------------------------------------------------------------

az login

Connect-AzAccount

Connect-AzAccount -UseDeviceAuthentication

Install-Module -Name Az -Scope CurrentUser -Repository PSGallery -Force


you need to get the ACL first to put another entry into it

$container = "1117rgdlfs"
$folder = "test001/"
$ctx = New-AzStorageContext -StorageAccountName '1117rgdl' -UseConnectedAccount
$dir1 = Get-AzDataLakeGen2Item -FileSystem $container -Path $folder -Context $ctx


$dir1
$dir1.ACL

$container = "1117rgdlfs"
$folder = "test001/"
$group = 'Consumer001'
$groupId = az ad group show --group $group --query 'id'
$permission = "rw-"
$dir1 = Get-AzDataLakeGen2Item -FileSystem $container -Path $folder -Context $ctx
$acl = $dir1.ACL
$acl = Set-AzDataLakeGen2ItemAclObject -AccessControlType group -EntityId $groupId.Replace("`"","") -Permission $permission -InputObject $acl
Update-AzDataLakeGen2Item -FileSystem $container -Path $folder -Acl $acl -Context $ctx

$dir1 = Get-AzDataLakeGen2Item -FileSystem $container -Path $folder -Context $ctx
$dir1.ACL





$group = 'Consumer001'
$groupId = az ad group show --group $group --query 'id'
$groupId
$ctx = New-AzStorageContext -StorageAccountName '1117rgdl' -UseConnectedAccount
'ctx'
$ctx
$filesystemName = "1117rgdlfs"
$dirname = "test001/"
$permission = "rw-"
$groupId
$acl = Set-AzDataLakeGen2ItemAclObject -AccessControlType group -EntityId "ab578e32-d505-440b-861f-316492f06dcb" -Permission $permission
#'acl'
$acl
#Update-AzDataLakeGen2AclRecursive -Context $ctx -FileSystem $filesystemName -Path $dirname -Acl $acl
#$acl = Set-AzDataLakeGen2ItemAclObject -AccessControlType group -Permission $permission -EntityID=$entityId
Update-AzDataLakeGen2Item -FileSystem $filesystemName -Path $dirname -Acl $acl -Context $ctx 


Param([ref]$groupId)
$group = 'Consumer001'
$groupId = az ad group show --group $group --query "id"
$ctx = New-AzStorageContext -StorageAccountName '1117rgdl' -UseConnectedAccount
$filesystemName = "1117rgdlfs"
$dirname = "test001/"
$permission = "rw-"
$acl = Set-AzDataLakeGen2ItemAclObject -AccessControlType group -EntityId $groupId.Replace("`"","") -Permission $permission
$acl

$group = 'Consumer001'
$groupId = az ad group show --group $group --query "id"
$ctx = New-AzStorageContext -StorageAccountName '1117rgdl' -UseConnectedAccount
$filesystemName = "1117rgdlfs"
$dirname = "test001/"
$permission = "rw-"
$acl = Set-AzDataLakeGen2ItemAclObject -AccessControlType group -EntityId $groupId -Permission $permission
$acl

Param([ref]$groupId)


$group = 'Consumer001'
$groupId = "d6cc2eb7-50d8-4a3d-bb6b-77054f7a6096"
$ctx = New-AzStorageContext -StorageAccountName '1117rgdl' -UseConnectedAccount
$filesystemName = "1117rgdlfs"
$dirname = "test001/"
$permission = "rw-"
$acl = Set-AzDataLakeGen2ItemAclObject -AccessControlType group -EntityId $groupId -Permission $permission
$acl


$guid = $guid.Replace("'","")

$group = 'Consumer001'
$groupId = az ad group show --group $group --query 'id'
$ctx = New-AzStorageContext -StorageAccountName '1117rgdl' -UseConnectedAccount
$filesystemName = "1117rgdlfs"
$dirname = "test001/"
$permission = "rw-"
$acl = Set-AzDataLakeGen2ItemAclObject -AccessControlType group -EntityId "ab578e32-d505-440b-861f-316492f06dcb" -Permission $permission
$acl
#Update-AzDataLakeGen2AclRecursive -Context $ctx -FileSystem $filesystemName -Path $dirname -Acl $acl
#$acl = Set-AzDataLakeGen2ItemAclObject -AccessControlType group -Permission $permission -EntityID=$entityId
Update-AzDataLakeGen2Item -FileSystem $filesystemName -Path $dirname -Acl $acl -Context $ctx 








az ad group member add --group
--member-id


az ad user show --id myuser@contoso.com



Connect-AzureAD

0b740aa0-822c-43c7-adc7-adb50484e7d1

az ad user show --id hendrik.kampert@kyndryl.com --query "id"

az ad group member add --group 'somevalue' --member-id '0b740aa0-822c-43c7-adc7-adb50484e7d1'

az ad group create --display-name 'test1328' --mail-nickname 'test1328'


az ad signed-in-user show


Problem: I am in the wrong user account

-- diginata tenant --

az login
az ad signed-in-user show

az ad user show --id batman@diginata.com --query "id"
az ad group list --query "mailNickname"

az ad group show --group 'azuredataplatformgrp-owner'
azuredataplatformgrp-owner

az storage container show --name 1117rgdlfs --account-name 1117rgdl --auth-mode login



az ad group member add --group 'Producer33456' --member-id '24f06d41-b39b-4aa9-97bb-076201bd8ba9'

"24f06d41-b39b-4aa9-97bb-076201bd8ba9"



$group = 'Test2';
$user = 'batman@diginata.com';
$userId = az ad user show --id $user --query 'id';
az ad group member add --group $group --member-id $userId


---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------





flesh out the training (hands-on)

Hands-on sessions: 
Data pipeline in Synapse
Delta load for ETL, 
using API with Power BI
creating a datamart in PBI






hendrik.kampert_kyndryl.com#EXT#@diginata.onmicrosoft.com
63542052-ac02-4705-903a-1250a1c35f89

rg-cdo-kynsight-dev-weu-001

batman - test user
24f06d41-b39b-4aa9-97bb-076201bd8ba9

azuredataplatformgrp-owner
82f15ac5-8c5f-4e45-987f-fa1686da3a36




Synapse Admin - RoleId
6e4bf58a-b8e1-4cc3-bbf9-d73143322b78


DevOps Service Principal - ObjectId
30662d38-702b-4f82-90f8-885fbbaba1bd


azuredataplatformgrp-owner
82f15ac5-8c5f-4e45-987f-fa1686da3a36



active directory group - kynsight-rz-adg-producer

grp-kynsight-rz-adg-producer
grp-kynsight-rz-adg-consumer


access to container
kynsight-dev-rz-users



storage account
kynsightdevweudlsa01

container:
kynsight-dev-rz.


grp-kynsight-dev-rz-users
c3142f07-ac41-4a98-b8a8-dc9e492549ce



grp-kynsight-rz-orchhub-consumer
9562569b-5c7d-44be-91e9-3e0c0a923fff





$rolename = "Synapse Artifact Publisher";
$signInName = "hendrik.kampert_kyndryl.com#EXT#@diginata.onmicrosoft.com";
New-AzSynapseRoleAssignment -WorkspaceName 1113rgsyn -SignInName $signInName -RoleDefinitionName $rolename






Get-AzSynapseRoleAssignment -WorkspaceName 1113rgsyn

New-AzSynapseRoleAssignment -WorkspaceName 1111rgsyn -RoleDefinitionId 6e4bf58a-b8e1-4cc3-bbf9-d73143322b78 -ObjectId 63542052-ac02-4705-903a-1250a1c35f89



$entityID = "63542052-ac02-4705-903a-1250a1c35f89";
$roleID = "6e4bf58a-b8e1-4cc3-bbf9-d73143322b78";
New-AzSynapseRoleAssignment -WorkspaceName 1112rgsyn -RoleDefinitionId $roleID -ObjectId $entityID


 -RoleDefinitionName "Workspace Admin"

-SignInName 





$entityID = "63542052-ac02-4705-903a-1250a1c35f89";
$roleID = "6e4bf58a-b8e1-4cc3-bbf9-d73143322b78";
New-AzSynapseRoleAssignment -WorkspaceName azuredataplatformsyn -RoleDefinitionId $roleID -ObjectId $entityID



$entityID = "63542052-ac02-4705-903a-1250a1c35f89";
$roleID = "2a385764-43e8-416c-9825-7b18d05a2c4b";
New-AzSynapseRoleAssignment -WorkspaceName 809rgsyn -RoleDefinitionId $roleID -ObjectId $entityID


2a385764-43e8-416c-9825-7b18d05a2c4b



hendrik.kampert_kyndryl.com#EXT#@diginata.onmicrosoft.com
63542052-ac02-4705-903a-1250a1c35f89

hendrik.kampert_kyndryl.com#EXT#@diginata.onmicrosoft.com



PS> az synapse role definition list --workspace-name <ws> --query "[].{Name:name, Id:id}" -o table
Command group 'synapse' is in preview and under development. Reference and support levels: https://aka.ms/CLI_refstatus
Name                         Id
---------------------------  ------------------------------------
Synapse Administrator        6e4bf58a-b8e1-4cc3-bbf9-d73143322b78
Synapse Linked Data Manager  dd665582-e433-40ca-b183-1b1b33e73375
Synapse Contributor          7572bffe-f453-4b66-912a-46cc5ef38fda
Synapse Artifact Publisher   05930f57-09a3-4c0d-9fa9-6d1eb91c178b
Synapse Artifact User        53faaa0e-40b6-40c8-a2ff-e38f2d388875
Synapse Compute Operator     e3844cc7-4670-42cb-9349-9bdac1ee7881
Synapse Credential User      5eb298b4-692c-4241-9cf0-f58a3b42bb25
Synapse User                 2a385764-43e8-416c-9825-7b18d05a2c4b
Apache Spark Administrator   c3a6d2f1-a26f-4810-9b0f-591308d5cbf1
Synapse SQL Administrator    7af0c69a-a548-47d6-aea3-d00e69bd83aa



---------------------------


https://github.com/Azure/azure-cli/issues/22078

https://learn.microsoft.com/en-us/cli/azure/synapse/role/assignment?view=azure-cli-latest#az-synapse-role-assignment-create

az synapse role assignment create --workspace-name $(Synapse.Name) --role "Synapse SQL Administrator" --assignee-object-id $(FunctionApp.Identity) --assignee-principal-type ServicePrincipal

$workspace = "1113rgsyn";
$role = "Synapse SQL Administrator";
$entityId = "63542052-ac02-4705-903a-1250a1c35f89";
az synapse role assignment create --workspace-name $workspace --role $role --assignee-object-id $entityId --assignee-principal-type User










----------------------------------------------------------------------------
----------------------------------------------------------------------------
----------------------------------------------------------------------------
----------------------------------------------------------------------------
----------------------------------------------------------------------------


Get-AzureADMSPrivilegedRoleDefinition -ProviderId aadRoles -ResourceId f260df36-bc43-424c-8f44-c85226657b01
Get-AzureADMSPrivilegedRoleAssignment -ProviderId "aadRoles" -ResourceId "926d99e7-117c-4a6a-8031-0cc481e9da26" -Filter "subjectId eq 'f7d1887c-7777-4ba3-ba3d-974488524a9d'"
Get-AzureADMSPrivilegedRoleSetting -ProviderId 'aadRoles' -Filter "ResourceId eq 'f260df36-bc43-424c-8f44-c85226657b01'"
Open-AzureADMSPrivilegedRoleAssignmentRequest -ProviderId 'aadRoles' -ResourceId '926d99e7-117c-4a6a-8031-0cc481e9da26' -RoleDefinitionId 'f55a9a68-f424-41b7-8bee-cee6a442d418' -SubjectId 'f7d1887c-7777-4ba3-ba3d-974488524a9d' -Type 'UserAdd' -AssignmentState 'Active' -Schedule $schedule -Reason "CDO support"



f260df36-bc43-424c-8f44-c85226657b01


Azure Roles
https://learn.microsoft.com/en-us/azure/role-based-access-control/built-in-roles
acdd72a7-3385-48ef-bd42-f606fba81ae7


https://learn.microsoft.com/en-us/azure/active-directory/privileged-identity-management/powershell-for-azure-ad-roles

Install-module AzureADPreview

$AzureAdCred = Get-Credential
Connect-AzureAD -Credential $AzureAdCred

Get-AzureADMSPrivilegedRoleDefinition -ProviderId aadRoles -ResourceId f260df36-bc43-424c-8f44-c85226657b01

Get-AzureADMSPrivilegedRoleSetting -ProviderId 'aadRoles' -Filter "ResourceId eq 'f260df36-bc43-424c-8f44-c85226657b01'"



Open-AzureADMSPrivilegedRoleAssignmentRequest 
-ProviderId 'aadRoles' 
-ResourceId '926d99e7-117c-4a6a-8031-0cc481e9da26' 
-RoleDefinitionId 'acdd72a7-3385-48ef-bd42-f606fba81ae7' 
-SubjectId 'f7d1887c-7777-4ba3-ba3d-974488524a9d' 
-Type 'UserAdd' 
-AssignmentState 'Active' 
-Schedule $schedule 
-Reason "CDO support"



this is the one I am working 

Open-AzureADMSPrivilegedRoleAssignmentRequest 
-ProviderId AzureResources 
-Schedule $schedule 
-ResourceId "e5e7d29d-5465-45ac-885f-4716a5ee74b5" 
-RoleDefinitionId "acdd72a7-3385-48ef-bd42-f606fba81ae7" 
-SubjectId "a25004a3-eceb-4ad4-b4aa-9485356bc55b" 
-AssignmentState "Eligible" 
-Type "AdminAdd"



Open-AzureADMSPrivilegedRoleAssignmentRequest 
-ProviderId AzureResources 
-Schedule $schedule 
-ResourceId "e5e7d29d-5465-45ac-885f-4716a5ee74b5" 
-RoleDefinitionId "9f8c1837-f885-4dfd-9a75-990f9222b21d" 
-SubjectId "a25004a3-eceb-4ad4-b4aa-9485356bc55b" 
-AssignmentState "Eligible" 
-Type "AdminAdd"


$schedule = New-Object Microsoft.Open.MSGraph.Model.AzureADMSPrivilegedSchedule
				  $schedule.Type = "Once"
				  $schedule.StartDateTime = "2019-04-26T20:49:11.770Z"
				  $schedule.endDateTime = "2019-07-25T20:49:11.770Z"
				  Open-AzureADMSPrivilegedRoleAssignmentRequest -ProviderId AzureResources -Schedule $schedule -ResourceId "e5e7d29d-5465-45ac-885f-4716a5ee74b5" -RoleDefinitionId "9f8c1837-f885-4dfd-9a75-990f9222b21d" -SubjectId "a25004a3-eceb-4ad4-b4aa-9485356bc55b" -AssignmentState "Eligible" -Type "AdminAdd"

