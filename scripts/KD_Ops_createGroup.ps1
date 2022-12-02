param(
    [Parameter()]
    [string]$group
)
az ad group create --display-name $group --mail-nickname $group