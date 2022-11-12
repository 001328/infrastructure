$rolename = "Synapse User";
$signInName = "azuredataplatformgrp-owner";
New-AzSynapseRoleAssignment -WorkspaceName 1113rgsyn -SignInName $signInName -RoleDefinitionName $rolename
 