$group = 'Producer001'
$groupId = az ad group show --group $group --query 'id';
$groupId