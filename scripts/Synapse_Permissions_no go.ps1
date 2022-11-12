$rolename = "Synapse User";
$signInName = "hendrik.kampert@diginata.com";
New-AzSynapseRoleAssignment -WorkspaceName 1113rgsyn -RoleDefinitionName $rolename -SignInName $signInName
 