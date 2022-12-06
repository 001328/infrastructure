param(
    [[string]]$userlist,
    [string]$group
)
foreach ($user in $userlist)
{
$userId = az ad user show --id $user --query 'id';
az ad group member add --group $group --member-id $userId
}

