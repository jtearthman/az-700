
@description('Name of the Azure Container Registry.')
param acrName string = 'perkinacr'

@description('Location for the Azure Container Registry.')
param acrLocation string = resourceGroup().location

@description('SKU for the Azure Container Registry.')
@allowed([
  'Basic'
  'Standard'
  'Premium'
])
param acrSku string = 'Basic'

resource PerkinACR 'Microsoft.ContainerRegistry/registries@2023-07-01' = {
  name: acrName
  location: acrLocation
  sku: {
    name: acrSku
  }
  properties: {
    adminUserEnabled: true
  }
}
