param(
    [Parameter()]
    [string]$group
)
$group
az ad group create --display-name $group --mail-nickname $group