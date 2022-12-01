param(
    [Parameter()]
    [string]$Parameter1
)
az ad group create --display-name $Parameter1 --mail-nickname MailNick