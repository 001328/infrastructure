$entityID = "63542052-ac02-4705-903a-1250a1c35f89";
$roleID = "6e4bf58a-b8e1-4cc3-bbf9-d73143322b78";
New-AzSynapseRoleAssignment -WorkspaceName 809rgsyn -RoleDefinitionId $roleID -ObjectId $entityID
  