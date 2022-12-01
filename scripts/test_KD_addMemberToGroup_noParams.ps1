$group = 'Test2';
$user = 'batman@diginata.com';
$userId = az ad user show --id $user --query 'id';
az ad group member add --group $group --member-id $userId