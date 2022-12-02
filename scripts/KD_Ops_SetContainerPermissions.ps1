param(
    [string]$group,
    [string]$role
)
$container = '1117rgdlfs';
$resource =  '1117rgdl';
$resourcegroup = '1117rg';
$subscription = 'b14a1c2f-88c5-4229-be66-d9262651dd73';
$groupId = az ad group show --group $group --query 'id';
az role assignment create --role $role --assignee $groupId --scope ('/subscriptions/' + $subscription + '/resourceGroups/' + $resourcegroup + '/providers/Microsoft.Storage/storageAccounts/' + $resource + '/blobServices/default/containers/' + $container)