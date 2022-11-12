$entityID = "82f15ac5-8c5f-4e45-987f-fa1686da3a36";
$roleID = "Synapse Administrator";
New-AzSynapseRoleAssignment -WorkspaceName 1113rgsyn -RoleDefinitionName $roleID -ObjectId $entityID
  