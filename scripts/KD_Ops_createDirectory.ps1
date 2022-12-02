param(
    [string]$folder,
    [string]$container,
    [string]$resource
)
az storage fs directory create -n $folder -f $container --account-name $resource --auth-mode login