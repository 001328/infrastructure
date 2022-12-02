param(
    [string]$user,
    [string]$group
)
$userId = az ad user show --id $user --query 'id';
az ad group member add --group $group --member-id $userId
