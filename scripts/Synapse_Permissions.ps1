$rolename = "Synapse Artifact Publisher";
$signInName = "hendrik.kampert_kyndryl.com#EXT#@diginata.onmicrosoft.com";
New-AzSynapseRoleAssignment -WorkspaceName 1113rgsyn -SignInName $signInName -RoleDefinitionName $rolename
