## INSERER ICI LE CODE POUR FAIRE UNE Azure Container Registry

# Indices : https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/container_registry
#                prendre la SKU Standard


resource "azurerm_container_registry" "Terra-acr" {
  name                = var.acrName
  resource_group_name = var.resourceGroupName
  location            = var.azureRegion
  sku                 = "Standard"
  admin_enabled       = false
  
}


#           https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment
#           https://docs.microsoft.com/en-us/azure/container-registry/container-registry-roles?tabs=azure-cli 
#                  scope                = l'Azure Container Registry
#                  role_definition_name = "ACR Reader"
#                  principal_id         = la system managed identity du cluster AKS
