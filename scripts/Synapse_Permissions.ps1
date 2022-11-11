$entityID = "63542052-ac02-4705-903a-1250a1c35f89";
$roleID = "7572bffe-f453-4b66-912a-46cc5ef38fda";
New-AzSynapseRoleAssignment -WorkspaceName 1111rgsyn -RoleDefinitionId $roleID -ObjectId $entityID principalType User
  