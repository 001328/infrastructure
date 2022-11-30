param name string = 'test'
param location string = 'eastus'

resource symbolicname 'Microsoft.Resources/resourceGroups@2021-04-01' = {
    name: name
    location: location
  }
