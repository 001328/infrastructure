$workspace = "1113rgsyn";
$role = "Apache Spark Administrator";
$entityId = "63542052-ac02-4705-903a-1250a1c35f89";
az synapse role assignment create --workspace-name $workspace --role $role --assignee-object-id $entityId --assignee-principal-type User