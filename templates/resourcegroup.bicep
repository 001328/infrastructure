targetScope = 'subscription'

param location string = 'eastus'
param resourceGroupName string = 'bongo'

resource rg 'Microsoft.Resources/resourceGroups@2021-04-01' = { 
  name: resourceGroupName
  location: location
}
