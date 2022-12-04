param(
    [string]$group,
    [string]$role,
    [string]$resource,
    [string]$container,
    [string]$resourcegroup,
    [string]$subscription
)
$groupId = az ad group show --group $group --query 'id';
az role assignment create --role $role --assignee $groupId.Replace("`"","") --scope ('/subscriptions/' + $subscription + '/resourceGroups/' + $resourcegroup + '/providers/Microsoft.Storage/storageAccounts/' + $resource + '/blobServices/default/containers/' + $container)