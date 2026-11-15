resource PerkinACR 'Microsoft.ContainerRegistry/registries@2023-07-01' = {
  name: 'perkinacr'
  location: resourceGroup().location
  sku: {
    name: 'Basic'
  }
  properties: {
    adminUserEnabled: true
  }
}
